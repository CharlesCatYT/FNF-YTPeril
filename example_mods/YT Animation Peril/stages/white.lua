function onCreate()
	-- background shit
makeGraphic('whitey', 1280, 1920, '000000')
        addLuaSprite('whitey', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

