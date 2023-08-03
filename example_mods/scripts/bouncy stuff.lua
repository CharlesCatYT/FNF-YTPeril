function onBeatHit()
	if getAnim("dad") == "idle"..getProperty('dad.idleSuffix') then
		characterPlayAnim("dad","idle"..getProperty('dad.idleSuffix'), true)
	end
	if getAnim("boyfriend") == "idle"..getProperty('boyfriend.idleSuffix') then
		characterPlayAnim("boyfriend","idle"..getProperty('boyfriend.idleSuffix'), true)
	end
	if getProperty('curBeat') % 1 == 0 then
		if getProperty('health') > 1.6 then
			setProperty('iconP1.angle',1*10)
			setProperty('iconP2.angle',1*0)
			doTweenAngle('re', 'iconP1', 0, 0.5, 'sineInOut')
		elseif getProperty('health') < 0.4 then
		    setProperty('iconP1.angle',1*0)
			setProperty('iconP2.angle',1*10)
			doTweenAngle('ree', 'iconP2', 0, 0.5, 'sineInOut')
		else
			setProperty('iconP1.angle',1*10)
			setProperty('iconP2.angle',1*-10)
			doTweenAngle('re', 'iconP1', 0, 0.5, 'sineInOut')
			doTweenAngle('ree', 'iconP2', 0, 0.5, 'sineInOut')
	    end
	end

	if getProperty('curBeat') % 2 == 0 then
	    if getProperty('health') > 1.6 then
			setProperty('iconP1.angle',1*-15)
			setProperty('iconP2.angle',1*0)
			doTweenAngle('re', 'iconP1', 0, 0.5, 'linear')
		elseif getProperty('health') < 0.4 then
		    setProperty('iconP1.angle',1*0)
			setProperty('iconP2.angle',1*-15)
			doTweenAngle('ree', 'iconP2', 0, 0.5, 'linear')
		else
			setProperty('iconP1.angle',1*-15)
			setProperty('iconP2.angle',1*15)
			doTweenAngle('re', 'iconP1', 0, 0.5, 'linear')
			doTweenAngle('ree', 'iconP2', 0, 0.5, 'linear')
		end
   end
end