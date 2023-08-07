function onCreate()
	-- background shit
    makeLuaSprite('whitey', 'empty', -1000, -125)
makeGraphic('whitey', 5000, 5000, 'FFFFFF')
        addLuaSprite('whitey', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

