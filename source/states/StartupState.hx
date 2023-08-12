package states;

import backend.Highscore;
import flixel.input.keyboard.FlxKey;
import states.StoryMenuState;
import openfl.system.System;
#if MODS_ALLOWED
import sys.FileSystem;
#end

class StartupState extends MusicBeatState
{
	public static var muteKeys:Array<FlxKey> = [FlxKey.ZERO];
	public static var volumeDownKeys:Array<FlxKey> = [FlxKey.NUMPADMINUS, FlxKey.MINUS];
	public static var volumeUpKeys:Array<FlxKey> = [FlxKey.NUMPADPLUS, FlxKey.PLUS];

	static function clearTemps(dir:String)
	{
		#if desktop
		for (file in FileSystem.readDirectory(dir))
		{
			var file = './$dir/$file';
			if (FileSystem.isDirectory(file))
				clearTemps(file);
			else if (file.endsWith(".tempcopy"))
				FileSystem.deleteFile(file);
		}
		#end
	}

	override public function create():Void
	{
		Paths.clearStoredMemory();
		Paths.clearUnusedMemory();

		clearTemps("./");

		#if LUA_ALLOWED
		Mods.pushGlobalMods();
		#end
		Mods.loadTopMod();

		FlxG.game.focusLostFramerate = 60;
		FlxG.keys.preventDefaultKeys = [TAB];

		super.create();

		FlxG.save.bind('funkin', CoolUtil.getSavePath());

		ClientPrefs.loadPrefs();

		Highscore.load();

		if (!TitleState.initialized)
		{
			if (FlxG.save.data != null && ClientPrefs.data.fullscreen)
			{
				FlxG.fullscreen = ClientPrefs.data.fullscreen;
			}
			persistentUpdate = true;
			persistentDraw = true;
		}

		if (FlxG.save.data.weekCompleted != null)
		{
			StoryMenuState.weekCompleted = FlxG.save.data.weekCompleted;
		}

		FlxG.mouse.visible = false;

		if (FlxG.save.data != null && ClientPrefs.data.systemCursor)
		{
			FlxG.mouse.useSystemCursor = ClientPrefs.data.systemCursor;
		}
	}

	override function update(elapsed:Float)
	{
		new FlxTimer().start(1.1, function(tmr:FlxTimer) next(), 1);

		super.update(elapsed);
	}

	function next():Void
	{
		System.gc();

		// LoadingState.loadAndSwitchState(new StartupVideoState(), true);
		LoadingState.loadAndSwitchState(new TitleState(), true);
	}
}
