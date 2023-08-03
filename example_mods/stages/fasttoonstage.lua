function onCreate()
	makeLuaSprite('fasttoonstage', 'fasttoon_stage', -450, -300);
	setScrollFactor('fasttoonstage', 0.9, 0.9);

	addLuaSprite('fasttoonstage', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end