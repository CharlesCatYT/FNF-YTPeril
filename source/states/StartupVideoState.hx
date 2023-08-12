package states;

// will figure out later
/* import flixel.FlxG;
	import flixel.FlxState;
	import states.TitleState;
	import video.FlxVideo;
	#if VIDEOS_ALLOWED
	#if (hxCodec >= "3.0.0")
	import hxcodec.flixel.FlxVideo as VideoHandler;
	#elseif (hxCodec >= "2.6.1")
	import hxcodec.VideoHandler as VideoHandler;
	#elseif (hxCodec == "2.6.0")
	import VideoHandler;
	#else
	import vlc.MP4Handler as VideoHandler;
	#end
	#end
	#if js
	import js.Browser;
	#end
	#if sys
	import sys.FileSystem;
	import sys.io.File;
	#end

	using StringTools;

	class StartupVideoState extends FlxState
	{
	var titleState = new TitleState();

	override public function create():Void
	{
		super.create();
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}

	function startVideo():Void
	{
		#if VIDEOS_ALLOWED
		var foundFile:Bool = false;
		var fileName:String = Paths.video('startupLogo');
		#if sys
		if (FileSystem.exists(fileName))
		{
			foundFile = true;
		}
		#end

		if (!foundFile)
		{
			fileName = Paths.video('startupLogo');
			#if sys
			if (FileSystem.exists(fileName))
			{
			#else
			if (OpenFlAssets.exists(fileName))
			{
			#end
				foundFile = true;
			}
			if (foundFile)
			{
				var bg = new FlxSprite(-FlxG.width, -FlxG.height).makeGraphic(FlxG.width * 3, FlxG.height * 3, FlxColor.BLACK);
				add(bg);

				new FlxVideo(fileName).finishCallback = function()
				{
					remove(bg);
					MusicBeatState.switchState(new TitleState());
				}
				return;
			}
			else
			{
				FlxG.log.warn('Could not find video file: ' + fileName);
				MusicBeatState.switchState(new TitleState());
			}
			#end
			MusicBeatState.switchState(new TitleState());
		}
	}
	}
 */
