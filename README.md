# wow-classic-macros


## Request windfury macro
A macro that gives feedback to your shaman. Send a helpful message to your grouped shaman either in whisper or party chat when windfury falls off. Macro only fires when grouped with a shaman that is alive and is visible to you.

### Example of party message
<img src="https://github.com/TimAndreJacobsen/wow-classic-macros/raw/master/assets/partychat.png" alt="picture of chat window with party macro">
### Example of whisper message
<img src="https://github.com/TimAndreJacobsen/wow-classic-macros/blob/master/assets/whisper.png" alt="picture of chat window with whisper macro">


## installation guide:
This macro needs SuperMacro to work.

### how to install supermacro
Download SuperMacro here: https://github.com/Battle-Cow/SuperMacro
Click the green button Clone or download and choose download ZIP.
Extract the zip and rename the extracted folder to "SuperMacro" (delete "-master").
Place the folder inside ~\World of Warcraft\Interface\AddOns
Make sure the add-on is enabled on the character selection screen.

### how to add extended lua function and call it.
In-game open the macro panel by clicking esc and then click supermacro.
Copy the code from WindfuryParty or WindfuryWhisper and paste it into the right window.
Then call the function from the left window with:
/run WindfuryParty()
/run WindfuryWhisper()