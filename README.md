# Friday Night Funkin' - YouTube Animation Peril
Slightly unoptimized due to the formatting, but whatever.

Anyway, let me tell ya the context/story.
One day, BF and GF were bored and decided to go search up animations on YouTube. But with BF being a stupido and with cartoon logic, on that one particular day, BF spilled his drink on the computer and both BF and GF got sucked into YT and then wake up somewhere unfamiliar. (Wow like they haven't been too unfamiliar places millions of times before.) Then, they realized they were in the animations that they were searching up on YT. Now, BF has to challenge rap battles for whoever they face in these YT Animations. The only thing you can ask is, will BF be able to survive in all of these animations? We may never find out.

## Installation:
You must have [Haxe version 4.2.5](https://haxe.org/download/version/4.2.5/), seriously, stop using older or newer versions, it won't work!

open up a Command Prompt/PowerShell or Terminal, type `haxelib install hmm`

A fter it finishes, simply type `haxelib run hmm install` in order to install all the needed libraries for *YouTube Animation Peril!*

If the compiler gives an error saying that hxCodec cannot be found read this issue to fix it: ShadowMario/FNF-PsychEngine#12770

## Customization:

if you wish to disable things like *Lua Scripts* or *Video Cutscenes*, you can read over to `Project.xml`

inside `Project.xml`, you will find several variables to customize Psych Engine to your liking

to start you off, disabling Videos should be simple, simply Delete the line `"VIDEOS_ALLOWED"` or comment it out by wrapping the line in XML-like comments, like this `<!-- YOUR_LINE_HERE -->`

same goes for *Lua Scripts*, comment out or delete the line with `LUA_ALLOWED`, this and other customization options are all available within the `Project.xml` file

## YT Animation Peril Credits:
THEYRE IN THE CREDITS.TXT IM TOO LAZY

## Psych Credits:
* Shadow Mario - Programmer
* RiverOaken - Artist

### Special Thanks
* Yoshubs/CubicYoshi - Ex-Programmer, New Input System
* bbpanzu - Ex-Programmer
* SqirraRNG - Crash Handler and Base code for Chart Editor's Waveform
* KadeDev - Fixed some cool stuff on Chart Editor and other PRs
* iFlicky - Composer of Psync and Tea Time, also made the Dialogue Sounds
* PolybiusProxy - .MP4 Video Loader Library (hxCodec)
* Keoiki - Note Splash Animations
* Smokey - Sprite Atlas Support
* superpowers04 - LUA JIT Fork and some Lua reworks
_____________________________________

# Features

## Attractive animated dialogue boxes:

![](https://user-images.githubusercontent.com/44785097/127706669-71cd5cdb-5c2a-4ecc-871b-98a276ae8070.gif)


## Mod Support
* Probably one of the main points of this engine, you can code in .lua and .hx files outside of the source code, making your own weeks without even messing with the source!
* Comes with a Mod Organizing/Disabling Menu.


## Atleast one change to every week:
### Week 1:
  * New Dad Left sing sprite
  * Unused stage lights are now used
  * Dad Battle has a spotlight effect for the breakdown
### Week 2:
  * Both BF and Skid & Pump does "Hey!" animations
  * Thunders does a quick light flash and zooms the camera in slightly
  * Added a quick transition/cutscene to Monster
### Week 3:
  * BF does "Hey!" during Philly Nice
  * ~~Blammed has a cool new color flash during that sick part of the song~~
### Week 4:
  * Better hair physics for Mom/Boyfriend (Maybe even slightly better than Week 7's :eyes:)
  * Henchmen die during all songs. Yeah :(
### Week 5:
  * Bottom Boppers and GF does "Hey!" animations during Cocoa and Eggnog
  * On Winter Horrorland, GF bops her head slower in some parts of the song.
### Week 6:
  * On Thorns, the HUD is hidden during the cutscene
  * Also there's the Background girls being spooky during the "Hey!" parts of the Instrumental

## Cool new Chart Editor changes and countless bug fixes
![](https://github.com/ShadowMario/FNF-PsychEngine/blob/main/docs/img/chart.png?raw=true)
* You can now chart "Event" notes, which are bookmarks that trigger specific actions that usually were hardcoded on the vanilla version of the game.
* Your song's BPM can now have decimal values
* You can manually adjust a Note's strum time if you're really going for milisecond precision
* You can change a note's type on the Editor, it comes with five example types:
  * Alt Animation: Forces an alt animation to play, useful for songs like Ugh/Stress
  * Hey: Forces a "Hey" animation instead of the base Sing animation, if Boyfriend hits this note, Girlfriend will do a "Hey!" too.
  * Hurt Notes: If Boyfriend hits this note, he plays a miss animation and loses some health.
  * GF Sing: Rather than the character hitting the note and singing, Girlfriend sings instead.
  * No Animation: Character just hits the note, no animation plays.

## Multiple editors to assist you in making your own Mod
![Screenshot_3](https://user-images.githubusercontent.com/44785097/144629914-1fe55999-2f18-4cc1-bc70-afe616d74ae5.png)
* Working both for Source code modding and Downloaded builds!
* Includes a debug menu for note splashes as well!

## Story mode menu rework:
![](https://i.imgur.com/UB2EKpV.png)
* Added a different BG to every song (less Tutorial)
* All menu characters are now in individual spritesheets, makes modding it easier.

## Credits menu
![Screenshot_1](https://user-images.githubusercontent.com/44785097/144632635-f263fb22-b879-4d6b-96d6-865e9562b907.png)
* You can add a head icon, name, description and a Redirect link for when the player presses Enter while the item is currently selected.

## Awards/Achievements
* The engine comes with 16 example achievements that you can mess with and learn how it works (Check Achievements.hx and search for "checkForAchievement" on PlayState.hx)

## Options menu:
* You can change Note colors, Delay and Combo Offset, Controls, and Preferences there.
 * On Preferences, you can toggle Downscroll, Lane Underlay, Middlescroll, Anti-Aliasing, Framerate, Low Quality, Note Splashes, Flashing Lights, etc.

## Other gameplay features:
* When the enemy hits a note, their strum note also glows.
* Lag doesn't impact the camera movement and player icon scaling anymore.
* Some stuff based on Week 7's changes has been put in (Background colors on Freeplay, Note splashes)
* You can reset your Week/Song score on Freeplay/Story Mode by pressing Reset(R) button.
* You can listen to a song by pressing Space on freeplay or adjust Scroll Speed/Damage taken/etc. by pressing Ctrl.
* You can enable "Combo Stacking" in Gameplay Options. This causes the combo sprites to just be one sprite with an animation rather than sprites spawning each note hit.