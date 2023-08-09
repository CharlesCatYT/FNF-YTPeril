package;

import flixel.graphics.FlxGraphic;
import flixel.FlxGame;
import flixel.FlxState;
import openfl.Assets;
import openfl.Lib;
import openfl.display.FPS;
import openfl.display.Sprite;
import flixel.math.FlxMath;
import flixel.util.FlxColor;
import openfl.events.Event;
import openfl.display.StageScaleMode;
import lime.app.Application;
import states.TitleState;
// crash handler stuff
#if CRASH_HANDLER
import openfl.events.UncaughtErrorEvent;
import haxe.CallStack;
import haxe.io.Path;
import sys.FileSystem;
import sys.io.File;
import sys.io.Process;
#end

class Main extends Sprite
{
	var game = {
		width: 1280, // WINDOW width
		height: 720, // WINDOW height
		zoom: -1.0, // game state bounds
		framerate: 60, // default framerate
		skipSplash: true, // if the default flixel splash screen should be skipped
		startFullscreen: false // if the game should start at fullscreen mode
	};

	public static var initialState:Class<FlxState> = TitleState; // so the fps can get the state properly :)

	public static var fpsVar:FPS;

	// You can pretty much ignore everything from here on - your code should go in your states.

	public static var watermark:Sprite;

	public static function main():Void
	{
		Lib.current.addChild(new Main());
	}

	public function new()
	{
		super();

		if (stage != null)
		{
			init();
		}
		else
		{
			addEventListener(Event.ADDED_TO_STAGE, init);
		}
	}

	private function init(?E:Event):Void
	{
		if (hasEventListener(Event.ADDED_TO_STAGE))
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
		}

		setupGame();
		var timer = new haxe.Timer(1);
		timer.run = function()
		{
			coloring();
			if (fpsVar.textColor == 0)
				fpsVar.textColor = -4775566;
		} // needs to be done because textcolor becomes black for a frame
	}

	private function setupGame():Void
	{
		final stageWidth:Int = Lib.current.stage.stageWidth;
		final stageHeight:Int = Lib.current.stage.stageHeight;

		if (game.zoom == -1.0)
		{
			final ratioX:Float = stageWidth / game.width;
			final ratioY:Float = stageHeight / game.height;
			game.zoom = Math.min(ratioX, ratioY);
			game.width = Math.ceil(stageWidth / game.zoom);
			game.height = Math.ceil(stageHeight / game.zoom);
		}

		FlxG.signals.preStateSwitch.add(function()
		{
			FlxG.bitmap.dumpCache();
			FlxG.sound.destroy(false);

			#if cpp
			cpp.NativeGc.enable(true);
			cpp.NativeGc.run(true);
			#end
			openfl.system.System.gc();
		});

		FlxG.signals.postStateSwitch.add(function()
		{
			#if cpp
			cpp.NativeGc.enable(true);
			cpp.NativeGc.run(true);
			#end
			openfl.system.System.gc();
		});

		FlxG.fixedTimestep = false;

		#if LUA_ALLOWED Lua.set_callbacks_function(cpp.Callable.fromStaticFunction(psychlua.CallbackHandler.call)); #end
		Controls.instance = new Controls();
		ClientPrefs.loadDefaultKeys();
		Achievements.load();
		addChild(new FlxGame(game.width, game.height, initialState, #if (flixel < "5.0.0") game.zoom, #end game.framerate, game.framerate,
			game.skipSplash, game.startFullscreen));

		#if !mobile
		fpsVar = new FPS(10, 3, 0xFFFFFF);
		addChild(fpsVar);
		Lib.current.stage.align = "tl";
		Lib.current.stage.scaleMode = StageScaleMode.NO_SCALE;
		if (fpsVar != null)
		{
			fpsVar.visible = ClientPrefs.data.showFPS;
		}
		#end

		#if html5
		FlxG.autoPause = false;
		FlxG.mouse.visible = false;
		#end

		#if CRASH_HANDLER
		Lib.current.loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR, onCrash);
		#end

		#if desktop
		DiscordClient.start();
		#end

		var bitmapData = Assets.getBitmapData("assets/shared/images/watermark.png");

		watermark = new Sprite();
		watermark.addChild(new Bitmap(bitmapData)); // Sets the graphic of the sprite to a Bitmap object, which uses our embedded BitmapData class.
		watermark.alpha = 0.4;
		watermark.x = Lib.application.window.width - 10 - watermark.width;
		watermark.y = Lib.application.window.height - 10 - watermark.height;
		addChild(watermark);

		// shader coords fix
		FlxG.signals.gameResized.add(function(w, h)
		{
			if (FlxG.cameras != null)
			{
				for (cam in FlxG.cameras.list)
				{
					@:privateAccess
					if (cam != null && cam._filters != null)
						resetSpriteCache(cam.flashSprite);
				}
			}

			if (FlxG.game != null)
				resetSpriteCache(FlxG.game);
		});
	}

	// Chroma Effect (12 Colors)
	var array:Array<FlxColor> = [
		FlxColor.fromRGB(216, 34, 83),
		FlxColor.fromRGB(255, 38, 0),
		FlxColor.fromRGB(255, 80, 0),
		FlxColor.fromRGB(255, 147, 0),
		FlxColor.fromRGB(255, 199, 0),
		FlxColor.fromRGB(255, 255, 0),
		FlxColor.fromRGB(202, 255, 0),
		FlxColor.fromRGB(0, 255, 0),
		FlxColor.fromRGB(0, 146, 146),
		FlxColor.fromRGB(0, 0, 255),
		FlxColor.fromRGB(82, 40, 204),
		FlxColor.fromRGB(150, 33, 146)
	];
	var skippedFrames = 0;
	var currentColor = 0;

	// Event Handlers
	public function coloring():Void
	{
		// Hippity, Hoppity, your code is now my property (from KadeEngine)
		if (ClientPrefs.data.fpsRainbow)
		{
			if (currentColor >= array.length)
				currentColor = 0;
			currentColor = Math.round(FlxMath.lerp(0, array.length, skippedFrames / ClientPrefs.data.framerate));
			(cast(Lib.current.getChildAt(0), Main)).changeFPSColor(array[currentColor]);
			currentColor++;
			skippedFrames++;
			if (skippedFrames > ClientPrefs.data.framerate)
				skippedFrames = 0;
		}
		else
			fpsVar.textColor = FlxColor.fromRGB(255, 255, 255);
	}

	public function changeFPSColor(color:FlxColor)
	{
		fpsVar.textColor = color;
	}

	static function resetSpriteCache(sprite:Sprite):Void
	{
		@:privateAccess {
			sprite.__cacheBitmap = null;
			sprite.__cacheBitmapData = null;
		}
	}

	static final quotes:Array<String> = [
		"Blueballed. - gedehari",
		"We have come for your errors. GET THE FUCK OUT OF MY CODE - CharlesCatYT",
		"fuck flixel rendering stop using like 40 gigs of ram to load 2 spritesheets - doggo",
		"This video is not available on YouTube. - YouTube",
		"No search results... - YouTube",
		"YouTube has unexpectedly stopped working! - YouTube",
		"Demonetized! - YouTube",
		"Goodbye cruel world - ShadowMario",
		"old was better - TheAnimateMan",
		"Copyright Strike! - YouTube",
		"This video is private. - YouTube",
		"Ohhhh nooooo! - AumSum",
		"grits is funni - Grits",
		"DMCA Takedown! - YouTube",
		"fix your grammer - SLB7",
		"j- NOOO - Vencerist",
		"i hope you go mooseing and get fucked by a campfire - cyborg henry stickmin",
		"Oh, you are so unbelievable! - AumSum Narrator",
		"Ah bueno adios master - ShadowMario",
		"Skibidy bah mmm dada *explodes* - ShadowMario",
		"What have you done, you killed it! - BeastlyGhost",
		"Have you checked if the variable exists? - BeastlyGhost",
		"Have you even read the wiki before trying that? - BeastlyGhost"
	];

	// Code was entirely made by sqirra-rng for their fnf engine named "Izzy Engine", big props to them!!!
	// very cool person for real they don't get enough credit for their work
	#if CRASH_HANDLER
	function onCrash(e:UncaughtErrorEvent):Void
	{
		var errMsg:String = "";
		var path:String;
		var callStack:Array<StackItem> = CallStack.exceptionStack(true);
		var dateNow:String = Date.now().toString();

		dateNow = dateNow.replace(" ", "_");
		dateNow = dateNow.replace(":", "'");

		path = "./crash/" + "YTPeril_" + dateNow + ".txt";

		FlxG.sound.play(Paths.soundRandom('missnote', 1, 3), FlxG.random.float(0.1, 0.2));

		errMsg += quotes[Std.random(quotes.length)] + "\n";

		for (stackItem in callStack)
		{
			switch (stackItem)
			{
				case FilePos(s, file, line, column):
					errMsg += file + " (line " + line + ")\n";
				default:
					Sys.println(stackItem);
			}
		}

		errMsg += "\nUncaught Error: "
			+ e.error
			+
			"\nPlease report this error to the GitHub repo page: https://github.com/CharlesCatYT/FNF-YTPeril\n\n> Crash Handler written by: sqirra-rng, slightly modified by The FNF YT Peril Team";

		if (!FileSystem.exists("./crash/"))
			FileSystem.createDirectory("./crash/");

		File.saveContent(path, errMsg + "\n");

		Sys.println(errMsg);
		Sys.println("Crash dump saved in " + Path.normalize(path));

		Application.current.window.alert(errMsg, "YT Peril - Error!");
		DiscordClient.shutdown();
		Sys.exit(1);
	}
	#end
}
