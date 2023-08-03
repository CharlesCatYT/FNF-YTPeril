function onEvent(name, value1, value2)
	if name == 'Fade UI Complete' then
		type = tonumber(value1)
		duration = tonumber(value2);
		if duration < 0 then
			duration = 0;
		end

		-- Note Stuff Out
		if type == 0 and duration == 0 then
			for i = 0, 4, 1 do
				setPropertyFromGroup('playerStrums', i, 'alpha', 0)
			end
			for i = 0, 4, 1 do
				setPropertyFromGroup('opponentStrums', i, 'alpha', 0)
			end
		elseif type == 0 and duration > 0 then
		noteTweenAlpha("noteGoneOpp1", 0, 0, duration, "quartInOut");
            noteTweenAlpha("noteGoneOpp2", 1, 0, duration, "quartInOut");
            noteTweenAlpha("noteGoneOpp3", 2, 0, duration, "quartInOut");
            noteTweenAlpha("noteGoneOpp4", 3, 0, duration, "quartInOut");
            noteTweenAlpha("noteGone5", 4, 0, duration, "quartInOut");
            noteTweenAlpha("noteGone6", 5, 0, duration, "quartInOut");
            noteTweenAlpha("noteGone7", 6, 0, duration, "quartInOut");
            noteTweenAlpha("noteGone8", 7, 0, duration, "quartInOut");
		end

            if type == 2 and duration == 0 then
			for i = 0, 4, 1 do
				setPropertyFromGroup('opponentStrums', i, 'alpha', 0)
			end
		elseif type == 2 and duration > 0 then
		noteTweenAlpha("noteGoneOpp1", 0, 0, duration, "quartInOut");
            noteTweenAlpha("noteGoneOpp2", 1, 0, duration, "quartInOut");
            noteTweenAlpha("noteGoneOpp3", 2, 0, duration, "quartInOut");
            noteTweenAlpha("noteGoneOpp4", 3, 0, duration, "quartInOut");
		end

            if type == 4 and duration == 0 then
			for i = 0, 4, 1 do
				setPropertyFromGroup('playerStrums', i, 'alpha', 0)
			end
		elseif type == 4 and duration > 0 then
            noteTweenAlpha("noteGone5", 4, 0, duration, "quartInOut");
            noteTweenAlpha("noteGone6", 5, 0, duration, "quartInOut");
            noteTweenAlpha("noteGone7", 6, 0, duration, "quartInOut");
            noteTweenAlpha("noteGone8", 7, 0, duration, "quartInOut");
            end

		-- Note Stuff In
		if type == 1 and duration == 0 then
			for i = 0, 4, 1 do
				setPropertyFromGroup('playerStrums', i, 'alpha', 1)
			end
			for i = 0, 4, 1 do
				setPropertyFromGroup('opponentStrums', i, 'alpha', 1)
			end
		elseif type == 1 and duration > 0 then
		noteTweenAlpha("noteGoneOpp1", 0, 1, duration, "quartInOut");
            noteTweenAlpha("noteGoneOpp2", 1, 1, duration, "quartInOut");
            noteTweenAlpha("noteGoneOpp3", 2, 1, duration, "quartInOut");
            noteTweenAlpha("noteGoneOpp4", 3, 1, duration, "quartInOut");
            noteTweenAlpha("noteGone5", 4, 1, duration, "quartInOut");
            noteTweenAlpha("noteGone6", 5, 1, duration, "quartInOut");
            noteTweenAlpha("noteGone7", 6, 1, duration, "quartInOut");
            noteTweenAlpha("noteGone8", 7, 1, duration, "quartInOut");
		end

            if type == 3 and duration == 0 then
			for i = 0, 4, 1 do
				setPropertyFromGroup('opponentStrums', i, 'alpha', 1)
			end
		elseif type == 3 and duration > 0 then
		noteTweenAlpha("noteGoneOpp1", 0, 1, duration, "quartInOut");
            noteTweenAlpha("noteGoneOpp2", 1, 1, duration, "quartInOut");
            noteTweenAlpha("noteGoneOpp3", 2, 1, duration, "quartInOut");
            noteTweenAlpha("noteGoneOpp4", 3, 1, duration, "quartInOut");
		end

            if type == 5 and duration == 0 then
			for i = 0, 4, 1 do
				setPropertyFromGroup('playerStrums', i, 'alpha', 1)
			end
		elseif type == 5 and duration > 0 then
            noteTweenAlpha("noteGone5", 4, 1, duration, "quartInOut");
            noteTweenAlpha("noteGone6", 5, 1, duration, "quartInOut");
            noteTweenAlpha("noteGone7", 6, 1, duration, "quartInOut");
            noteTweenAlpha("noteGone8", 7, 1, duration, "quartInOut");
		end
           
            --UI Stuff Out

            if type == 6 and duration == 0 then
            setProperty('healthBar.alpha',  0)
            setProperty('iconP1.alpha',  0)
            setProperty('iconP2.alpha',  0)
            setProperty('scoreTxt.alpha',  0)
            setProperty('timeBar.alpha', 0)
            setProperty('timeTxt.alpha', 0)
            elseif type == 6 and duration > 0 then
            doTweenAlpha('hp', 'healthBar', 0, duration, 'quartInOut')
            doTweenAlpha('hpicon1', 'iconP1', 0, duration, 'quartInOut')
            doTweenAlpha('hpicon2', 'iconP2', 0, duration, 'quartInOut')
            doTweenAlpha('score', 'scoreTxt', 0, duration, 'quartInOut')
            doTweenAlpha('timeBar', 'timeBar', 0, duration, 'quartInOut')
            doTweenAlpha('timeBarTxt', 'timeTxt', 0, duration, 'quartInOut')
            end

            if type == 8 and duration == 0 then
            setProperty('healthBar.alpha',  0)
            setProperty('iconP1.alpha',  0)
            setProperty('iconP2.alpha',  0)
            setProperty('scoreTxt.alpha',  0)
            elseif type == 8 and duration > 0 then
            doTweenAlpha('hp', 'healthBar', 0, duration, 'quartInOut')
            doTweenAlpha('hpicon1', 'iconP1', 0, duration, 'quartInOut')
            doTweenAlpha('hpicon2', 'iconP2', 0, duration, 'quartInOut')
            doTweenAlpha('score', 'scoreTxt', 0, duration, 'quartInOut')
            end

            if type == 10 and duration == 0 then
            setProperty('timeBar.alpha', 0)
            setProperty('timeTxt.alpha', 0)
            elseif type == 10 and duration > 0 then
            doTweenAlpha('timeBar', 'timeBar', 0, duration, 'quartInOut')
            doTweenAlpha('timeBarTxt', 'timeTxt', 0, duration, 'quartInOut')
            end

            -- UI Stuff In
            if type == 7 and duration == 0 then
            setProperty('healthBar.alpha',  1)
            setProperty('iconP1.alpha',  1)
            setProperty('iconP2.alpha',  1)
            setProperty('scoreTxt.alpha',  1)
            setProperty('timeBar.alpha', 1)
            setProperty('timeTxt.alpha', 1)
		elseif type == 7 and duration > 0 then
            doTweenAlpha('hp', 'healthBar', 1, duration, 'quartInOut')
            doTweenAlpha('hpicon1', 'iconP1', 1, duration, 'quartInOut')
            doTweenAlpha('hpicon2', 'iconP2', 1, duration, 'quartInOut')
            doTweenAlpha('score', 'scoreTxt', 1, duration, 'quartInOut')
            doTweenAlpha('timeBar', 'timeBar', 1, duration, 'quartInOut')
            doTweenAlpha('timeBarTxt', 'timeTxt', 1, duration, 'quartInOut')
		end
            
            if type == 9 and duration == 0 then
            setProperty('healthBar.alpha',  1)
            setProperty('iconP1.alpha',  1)
            setProperty('iconP2.alpha',  1)
            setProperty('scoreTxt.alpha',  1)
            elseif type == 9 and duration > 0 then
            doTweenAlpha('hp', 'healthBar', 1, duration, 'quartInOut')
            doTweenAlpha('hpicon1', 'iconP1', 1, duration, 'quartInOut')
            doTweenAlpha('hpicon2', 'iconP2', 1, duration, 'quartInOut')
            doTweenAlpha('score', 'scoreTxt', 1, duration, 'quartInOut')
            end

            if type == 11 and duration == 0 then
            setProperty('timeBar.alpha', 1)
            setProperty('timeTxt.alpha', 1)
            elseif type == 11 and duration > 0 then
            doTweenAlpha('timeBar', 'timeBar', 1, duration, 'quartInOut')
            doTweenAlpha('timeBarTxt', 'timeTxt', 1, duration, 'quartInOut')
            end

            --Everything In

            if type == 12 and duration == 0 then
			for i = 0, 4, 1 do
				setPropertyFromGroup('playerStrums', i, 'alpha', 0)
			end
			for i = 0, 4, 1 do
				setPropertyFromGroup('opponentStrums', i, 'alpha', 0)
			end
            setProperty('healthBar.alpha',  0)
            setProperty('iconP1.alpha',  0)
            setProperty('iconP2.alpha',  0)
            setProperty('scoreTxt.alpha',  0)
            setProperty('timeBar.alpha', 0)
            setProperty('timeTxt.alpha', 0)
            setProperty('botplayTxt.alpha', 0)
		elseif type == 12 and duration > 0 then
			noteTweenAlpha("noteGoneOpp1", 0, 0, duration, "quartInOut");
            noteTweenAlpha("noteGoneOpp2", 1, 0, duration, "quartInOut");
            noteTweenAlpha("noteGoneOpp3", 2, 0, duration, "quartInOut");
            noteTweenAlpha("noteGoneOpp4", 3, 0, duration, "quartInOut");
            noteTweenAlpha("noteGone5", 4, 0, duration, "quartInOut");
            noteTweenAlpha("noteGone6", 5, 0, duration, "quartInOut");
            noteTweenAlpha("noteGone7", 6, 0, duration, "quartInOut");
            noteTweenAlpha("noteGone8", 7, 0, duration, "quartInOut");
            doTweenAlpha('hp', 'healthBar', 0, duration, 'quartInOut')
            doTweenAlpha('hpicon1', 'iconP1', 0, duration, 'quartInOut')
            doTweenAlpha('hpicon2', 'iconP2', 0, duration, 'quartInOut')
            doTweenAlpha('score', 'scoreTxt', 0, duration, 'quartInOut')
            doTweenAlpha('timeBar', 'timeBar', 0, duration, 'quartInOut')
            doTweenAlpha('timeBarTxt', 'timeTxt', 0, duration, 'quartInOut')
            doTweenAlpha('botplytxt', 'botplayTxt', 0, duration, 'quartInOut')
		end

            --Everything Out

            if type == 13 and duration == 0 then
			for i = 0, 4, 1 do
				setPropertyFromGroup('playerStrums', i, 'alpha', 1)
			end
			for i = 0, 4, 1 do
				setPropertyFromGroup('opponentStrums', i, 'alpha', 1)
			end
            setProperty('healthBar.alpha',  1)
            setProperty('iconP1.alpha',  1)
            setProperty('iconP2.alpha',  1)
            setProperty('scoreTxt.alpha',  1)
            setProperty('timeBar.alpha', 1)
            setProperty('timeTxt.alpha', 1)
            setProperty('botplayTxt.alpha', 1)
		elseif type == 13 and duration > 0 then
		noteTweenAlpha("noteGoneOpp1", 0, 1, duration, "quartInOut");
            noteTweenAlpha("noteGoneOpp2", 1, 1, duration, "quartInOut");
            noteTweenAlpha("noteGoneOpp3", 2, 1, duration, "quartInOut");
            noteTweenAlpha("noteGoneOpp4", 3, 1, duration, "quartInOut");
            noteTweenAlpha("noteGone5", 4, 1, duration, "quartInOut");
            noteTweenAlpha("noteGone6", 5, 1, duration, "quartInOut");
            noteTweenAlpha("noteGone7", 6, 1, duration, "quartInOut");
            noteTweenAlpha("noteGone8", 7, 1, duration, "quartInOut");
            doTweenAlpha('hp', 'healthBar', 1, duration, 'quartInOut')
            doTweenAlpha('hpicon1', 'iconP1', 1, duration, 'quartInOut')
            doTweenAlpha('hpicon2', 'iconP2', 1, duration, 'quartInOut')
            doTweenAlpha('score', 'scoreTxt', 1, duration, 'quartInOut')
            doTweenAlpha('timeBar', 'timeBar', 1, duration, 'quartInOut')
            doTweenAlpha('timeBarTxt', 'timeTxt', 1, duration, 'quartInOut')
            doTweenAlpha('botplytxt', 'botplayTxt', 1, duration, 'quartInOut')
		end
	end
end