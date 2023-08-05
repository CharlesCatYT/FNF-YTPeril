package options;

class GameplaySettingsSubState extends BaseOptionsMenu
{
	public function new()
	{
		title = 'Gameplay Settings';
		rpcTitle = 'Gameplay Settings Menu'; // for Discord Rich Presence

		// I'd suggest using "Downscroll" as an example for making your own option since it is the simplest here
		var option:Option = new Option('Downscroll', // Name
			'If checked, notes go Down instead of Up, simple enough.', // Description
			'downScroll', // Save data variable name
			'bool'); // Variable type
		addOption(option);

		var option:Option = new Option('Middlescroll', 'If checked, your notes get centered.', 'middleScroll', 'bool');
		addOption(option);

		var option:Option = new Option('Opponent Notes', 'If unchecked, opponent notes get hidden.', 'opponentStrums', 'bool');
		addOption(option);

		var option:Option = new Option('Ghost Tapping', "If checked, you won't get misses from pressing keys\nwhile there are no notes able to be hit.",
			'ghostTapping', 'bool');
		addOption(option);

		var option:Option = new Option('Instant Respawn', "If checked, you will automatically respawn, skipping the game over animation.", 'instantRespawn',
			'bool');
		addOption(option);

		var option:Option = new Option('Disable Reset Button', "If checked, pressing Reset won't do anything.", 'noReset', 'bool');
		addOption(option);

		var option:Option = new Option('Health Drain', 'Changes how much health the opponent drains when they sing.', 'healthDrainValue', 'float');
		option.displayFormat = '%vms';
		option.scrollSpeed = 0.1;
		option.minValue = 0;
		option.maxValue = 0.05;
		option.changeValue = 0.001;
		addOption(option);

		var option:Option = new Option('Hold Notes Visibility', 'These lines after hold notes will be shown with selecter visibility', 'holdNoteVisibility',
			'percent');
		addOption(option);
		option.scrollSpeed = 1;
		option.minValue = 0.0;
		option.changeValue = 0.1;
		option.maxValue = 1;
		option.decimals = 1;

		var option:Option = new Option('Hitsound Volume', 'Funny notes do \"Tick!\" when you hit them."', 'hitsoundVolume', 'percent');
		addOption(option);
		option.scrollSpeed = 1.6;
		option.minValue = 0.0;
		option.maxValue = 1;
		option.changeValue = 0.1;
		option.decimals = 1;
		option.onChange = onChangeHitsoundVolume;

		super();
	}

	function onChangeHitsoundVolume()
	{
		FlxG.sound.play(Paths.sound('hitsound'), ClientPrefs.data.hitsoundVolume);
	}
}
