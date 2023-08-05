package options;

import objects.Note;
import objects.StrumNote;
import objects.Alphabet;

class MiscSubState extends BaseOptionsMenu
{
	var noteOptionID:Int = -1;
	var notes:FlxTypedGroup<StrumNote>;
	var notesTween:Array<FlxTween> = [];
	var noteY:Float = 90;

	public function new()
	{
		title = 'Misc';
		rpcTitle = 'Misc Settings Menu'; // for Discord Rich Presence

		// options

		var option:Option = new Option('Camera Zooms', "If unchecked, the camera won't zoom in on a beat hit.", 'camZooms', 'bool');

		#if !mobile
		var option:Option = new Option('Rainbow FPS', 'If checked, makes the FPS have a chroma effect.', 'fpsRainbow', 'bool');
		addOption(option);

		var option:Option = new Option('FPS Counter', 'If unchecked, hides FPS Counter.', 'showFPS', 'bool');
		addOption(option);
		option.onChange = onChangeFPSCounter;
		#end

		var option:Option = new Option('Auto Pause', "If checked, the game automatically pauses if the screen isn't on focus.", 'autoPause', 'bool');
		addOption(option);
		option.onChange = onChangeAutoPause;

		var option:Option = new Option('Pause Screen Song:', "What song do you prefer for the Pause Screen?", 'pauseMusic', 'string',
			['None', 'Breakfast', 'Tea Time', 'Brisky Buffet']);
		addOption(option);
		option.onChange = onChangePauseMusic;

		#if CHECK_FOR_UPDATES
		var option:Option = new Option('Check for Updates', 'On Release builds, turn this on to check for updates when you start the game.',
			'checkForUpdates', 'bool');
		addOption(option);
		#end

		#if desktop
		var option:Option = new Option('Discord Rich Presence',
			"Uncheck this to prevent accidental leaks, it will hide the Application from your \"Playing\" box on Discord", 'discordRPC', 'bool');
		addOption(option);
		#end

		super();
		add(notes);
	}

	override function changeSelection(change:Int = 0)
	{
		super.changeSelection(change);
	}

	var changedMusic:Bool = false;

	function onChangePauseMusic()
	{
		if (ClientPrefs.data.pauseMusic == 'None')
			FlxG.sound.music.volume = 0;
		else
			FlxG.sound.playMusic(Paths.music(Paths.formatToSongPath(ClientPrefs.data.pauseMusic)));

		changedMusic = true;
	}

    function onChangeAutoPause()
        {
            FlxG.autoPause = ClientPrefs.data.autoPause;
        }

	override function destroy()
	{
		if (changedMusic && !OptionsState.onPlayState)
			FlxG.sound.playMusic(Paths.music('freakyMenu'), 1, true);
		super.destroy();
	}

	#if !mobile
	function onChangeFPSCounter()
	{
		if (Main.fpsVar != null)
			Main.fpsVar.visible = ClientPrefs.data.showFPS;
	}
	#end
}
