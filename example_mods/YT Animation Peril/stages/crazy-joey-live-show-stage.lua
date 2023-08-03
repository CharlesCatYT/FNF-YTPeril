function onCreate()

	makeAnimatedLuaSprite('crowd','boppers1',330,650)addAnimationByPrefix('crowd','dance','joey mama',24,true)
	objectPlayAnimation('crowd','dance',false)
	setScrollFactor('crowd', 0.9, 0.9);

	makeAnimatedLuaSprite('crow','boppers2',-650,650)addAnimationByPrefix('crow','dancing','boppers',24,true)
	objectPlayAnimation('crow','dancing',false)
	setScrollFactor('crow', 0.9, 0.9);

	makeAnimatedLuaSprite('ow','boppers3',1300,650)addAnimationByPrefix('ow','dancer','bop',24,true)
	objectPlayAnimation('ow','dancer',false)
	setScrollFactor('ow', 0.9, 0.9);

	makeLuaSprite('live show stage','joey live show stage',-750,-185)
	addLuaSprite('live show stage',false)

	addLuaSprite('crowd',false);
	addLuaSprite('crow',false);
	addLuaSprite('ow',false);
	addLuaSprite('live show stage',false);

close(true);

end

function onBeatHit()

end

function onStepHit()

end

function onUpdate()

end