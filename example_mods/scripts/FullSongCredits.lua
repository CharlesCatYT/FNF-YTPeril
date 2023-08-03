--[[
CREDITS :yippee:

omotashi: Made the script (https://twitter.com/omotashii)
legole0: Helped me make the base script when I started from scratch (https://twitter.com/legole0)
Piggyfriend1792: The OG Script from the Monday Night Monsterin' Mod that I used for making the thing show up (https://twitter.com/piggyfriend1792)
DEAD SKULLXX: Requested me to add Artist and Charter Credits 
--]]



local songdata = {
--yes i used the pico week bc i didnt wanna interfere with the old version
    ['Scientifical'] = {
    'Scientifical', -- Song Name [1]
    'CharlesCatYT', -- Composer [2]
    '5', --  Length for onscreen [3]
    'CharlesCatYT and Isaiah Mods', -- Artist [4]
    'SauceyRed', -- Charter [5]
    },

    ['Crazy'] = {
        'Crazy',
        'Maicon',
        '5',
        'Isaiah Mods',
        'Maicon',
    },

     ['Narration'] = {
        'Narration',
        'Isaiah Mods',
        '5',
        'Isaiah Mods and Digital Hourglass',
        'RESURRECTION',
    }, 

    ['Terrene'] = {
        'Terrene',
        'N/A',
        '5',
        'Isaiah Mods and',
        'N/A',
    },
    
   ['Hazardous'] = {
    'Hazardous', -- Song Name [1]
    'Vencerist', -- Composer [2]
    '5', --  Length for onscreen [3]
    'Isaiah Mods, Vencerist and cloudy', -- Artist [4]
    'CharlesCatYT', -- Charter [5]
    },

    ['Finger Cut'] = {
        'Finger Cut',
        'Isaiah Mods and CharlesCatYT',
        '5',
        'Isaiah Mods and',
        'N/A',
    },

    ['Martian'] = {
        'Martian',
        'FishyBread',
        '5',
        'N/A',
        'N/A',
    },

    ['Extraterrestrial'] = {
        'Extraterrestrial',
        'Maicon',
        '5',
        'N/A',
        'SauceyRed',
    },
    
    ['Explanation'] = {
    'Explanation', -- Song Name [1]
    'Isaiah Mods', -- Composer [2]
    '5', --  Length for onscreen [3]
    'N/A', -- Artist [4]
    'N/A', -- Charter [5]
    },

    ['Never Gonna Get It'] = {
        'Never Gonna Get It',
        'CharlesCatYT',
        '5',
        'N/A',
        'N/A',
    },   

     ['Hilarious'] = {
        'Hilarious',
        'Vencerist',
        '5',
        'Vencerist and',
        'SauceyRed',
    },   

     ['Nutshell'] = {
        'Nutshell',
        'CharlesCatYT',
        '5',
        'Vencerist and',
        'N/A',
    },   

     ['Idiot'] = {
        'Idiot',
        'Vencerist',
        '5',
        'Isaiah Mods and cloudy',
        'N/A',
    },   

   ['Brainy'] = {
    'Brainy', -- Song Name [1]
    'Isaiah Mods', -- Composer [2]
    '5', --  Length for onscreen [3]
    'JoshieX and', -- Artist [4]
    'N/A', -- Charter [5]
    },

    ['Factual'] = {
        'Factual',
        'N/A',
        '5',
        'N/A',
        'N/A',
    },

['Knowledge'] = {
    'Knowledge', -- Song Name [1]
    'CharlesCatYT', -- Composer [2]
    '5', --  Length for onscreen [3]
    'Isaiah Mods and Goof!', -- Artist [4]
    'CharlesCatYT', -- Charter [5]
    },

    ['Glitcher'] = {
        'Glitcher',
        'N/A',
        '5',
        'N/A',
        'N/A',
    },

    ['Bob'] = {
    'Bob', -- Song Name [1]
    'N/A', -- Composer [2]
    '5', --  Length for onscreen [3]
    'N/A', -- Artist [4]
    'N/A', -- Charter [5]
    },

    ['Scar'] = {
        'Scar',
        'N/A',
        '5',
        'N/A',
        'N/A',
    },

    ['Cloned'] = {
        'Cloned',
        'N/A',
        '5',
        'N/A',
        'N/A',
    },
    
 ['Infographic'] = {
    'Infographic', -- Song Name [1]
    'oxiqa?', -- Composer [2]
    '5', --  Length for onscreen [3]
    'N/A', -- Artist [4]
    'N/A', -- Charter [5]
    },

    ['Hypothetical'] = {
        'Hypothetical',
        'N/A',
        '5',
        'N/A',
        'N/A',
    },

    ['Number One'] = {
        'Number One',
        'CharlesCatYT',
        '5',
        'Kimb.MP4 and',
        'SauceyRed',
    },

    ['Life Hack'] = {
        'Life Hack',
        'Isaiah Mods',
        '5',
        'Kimb.MP4 and',
        'CharlesCatYT',
    },
    
    ['Contendedly'] = {
    'Contendedly', -- Song Name [1]
    'Vencerist', -- Composer [2]
    '5', --  Length for onscreen [3]
    'TheAnimateMan', -- Artist [4]
    'N/A', -- Charter [5]
    },

    ['Voler'] = {
        'Voler',
        'Vencerist',
        '5',
        'TheAnimateMan and',
        'N/A',
    },

    ['Drawn'] = {
        'Drawn',
        'Isaiah Mods',
        '5',
        'TheAnimateMan and',
        'N/A',
    },
    
    ['Jesus Lover'] = {
    'Jesus Lover', -- Song Name [1]
    'Maicon', -- Composer [2]
    '5', --  Length for onscreen [3]
    'Isaiah Mods and', -- Artist [4]
    'Maicon', -- Charter [5]
    },

    ['Beasts'] = {
        'Beasts',
        'N/A',
        '5',
        'N/A',
        'N/A',
    },
    
    ['Demonstration'] = {
    'Demonstration', -- Song Name [1]
    'N/A', -- Composer [2]
    '5', --  Length for onscreen [3]
    'N/A', -- Artist [4]
    'N/A', -- Charter [5]
    },

    ['Danger'] = {
        'Danger',
        'N/A',
        '5',
        'N/A',
        'N/A',
    },
    
    ['Trampoline'] = {
    'Trampoline', -- Song Name [1]
    'Isaiah Mods and CharlesCatYT', -- Composer [2]
    '5', --  Length for onscreen [3]
    'Isaiah Mods and Oxyi142', -- Artist [4]
    'CharlesCatYT', -- Charter [5]
    },

    ['Brew'] = {
        'Brew',
        'CalcuimLmao?',
        '5',
        'Isaiah Mods and Oxyi142',
        'N/A',
    },

    ['Call'] = {
    'Call', -- Song Name [1]
    'Isaiah Mods', -- Composer [2]
    '5', --  Length for onscreen [3]
    'N/A', -- Artist [4]
    'N/A', -- Charter [5]
    },

    ['Illinois'] = {
        'Illinois',
        'N/A',
        '5',
        'N/A',
        'N/A',
    },
    
 ['ChiVi'] = {
    'ChiVi', -- Song Name [1]
    'CharlesCatYT', -- Composer [2]
    '5', --  Length for onscreen [3]
    'Isaiah Mods', -- Artist [4]
    'Maicon', -- Charter [5]
    },

    ['Rope Struck'] = {
        'Rope Struck',
        'Vencerist',
        '5',
        'Isaiah Mods and',
        'N/A',
    },

    ['Popular Path'] = {
        'Popular Path',
        'Vencerist',
        '5',
        'Isaiah Mods and',
        'N/A',
    },    

    ['Toony'] = {
        'Toony',
        'TheAnimateMan',
        '5',
        'TheAnimateMan and Isaiah Mods',
        'TheAnimateMan',
    },

    ['Academic'] = {
        'Academic',
        'Isaiah Mods',
        '5',
        'Isaiah Mods',
        'N/A',
    },

    ['Logical'] = {
        'Logical',
        'Isaiah Mods',
        '5',
        'Isaiah Mods',
        'N/A',
    },

    ['Schooled'] = {
        'Schooled',
        'AmongBoy',
        '5',
        'Isaiah Mods',
        'AmongBoy',
    },

    ['Hornstromp'] = {
        'Hornstromp',
        'sibottle',
        '5',
        'Isaiah Mods',
        'idk who',
    },    
    

-- Replace this data with your songs and the song composer. 
-- The song name in the [] MUST be the same song in the JSON file
-- The Next two are just string values, have fun :3
}

local offsetX = 10
local offsetY = 500
local objWidth = 500


function ifExists(table, valuecheck) -- This stupid function stops your game from throwing up errors when you play a main week song thats not in the Song Data Folder
    if table[valuecheck] then
        return true
    else
        return false
    end
end


function onCreatePost() -- This creates all the placeholder shit B) ((THIS PART OF THE SCRIPT WAS MADE BY PIGGY))
    luaDebugMode = true

    makeLuaSprite('creditBox', 'empty', 0 - objWidth, offsetY)
    makeGraphic('creditBox', objWidth, 150, '000000')
    setObjectCamera('creditBox', 'other')
    setProperty("creditBox.alpha", 0.7)
    addLuaSprite('creditBox', true)

    makeLuaText('creditTitle', 'PlaceholderTitle', objWidth, offsetX - objWidth, offsetY+0)
    setTextSize('creditTitle', 45)
    setTextAlignment('creditTitle', 'left')
    setObjectCamera('creditTitle', 'other')
    addLuaText("creditTitle",true)

    makeLuaText('creditComposer', 'PlaceholderComposer', objWidth, offsetX - objWidth, offsetY+45)
    setTextSize('creditComposer', 30)
    setTextAlignment('creditComposer', 'left')
    setObjectCamera('creditComposer', 'other')
    addLuaText("creditComposer",true)

    makeLuaText('creditArtist', 'PlaceholderArtist', objWidth, offsetX - objWidth, offsetY+80)
    setTextSize('creditArtist', 30)
    setTextAlignment('creditArtist', 'left')
    setObjectCamera('creditArtist', 'other')
    addLuaText("creditArtist",true)

    makeLuaText('creditCharter', 'PlaceholderCharter', objWidth, offsetX - objWidth, offsetY+115)
    setTextSize('creditCharter', 30)
    setTextAlignment('creditCharter', 'left')
    setObjectCamera('creditCharter', 'other')
    addLuaText("creditCharter",true)

    -- If you dont NOT want the art and charter credits (or a mix of two), the value used in the old version is:
    -- offsetY+25 for creditTitle
    -- offsetY+80 for the other credit (be it Composer, Charting, or Art)
end


function onSongStart()

 songExists = ifExists(songdata, songName) -- Checks to see if song exists

 if songExists == true then
    local curSongTable = songdata[songName]
    setTextString('creditTitle', curSongTable[1]) -- Sets the actual things
    setTextString('creditComposer', "Song: "..curSongTable[2])
    setTextString('creditArtist', "Visuals: "..curSongTable[4])
    setTextString('creditCharter', "Charting: "..curSongTable[5])

    --Tweens--
    doTweenX("creditBoxTween", "creditBox", getProperty("creditBox.x") + objWidth, 1, "expoOut")
    doTweenX("creditTitleTween", "creditTitle", getProperty("creditTitle.x") + objWidth, 1, "expoOut")
    doTweenX("creditArtistTween", "creditArtist", getProperty("creditArtist.x") + objWidth, 1, "expoOut")
    doTweenX("creditComposerTween", "creditComposer", getProperty("creditComposer.x") + objWidth, 1, "expoOut")
    doTweenX("creditCharterTween", "creditCharter", getProperty("creditCharter.x") + objWidth, 1, "expoOut")
    runTimer("creditDisplay",curSongTable[3],1)
 else

    

 end
end

function onTimerCompleted(timerName)

    if timerName == "creditDisplay" then
        doTweenX("creditBoxTween", "creditBox", getProperty("creditBox.x") - objWidth, 0.5, "sineIn")
        doTweenX("creditTitleTween", "creditTitle", getProperty("creditTitle.x") - objWidth, 0.5, "sineIn")
        doTweenX("creditComposerTween", "creditComposer", getProperty("creditComposer.x") - objWidth, 0.5, "sineIn")
        doTweenX("creditArtistTween", "creditArtist", getProperty("creditArtist.x") - objWidth, 0.5, "sineIn")
        doTweenX("creditCharterTween", "creditCharter", getProperty("creditCharter.x") - objWidth, 0.5, "sineIn")
    end

end
