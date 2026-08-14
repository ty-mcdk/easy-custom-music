# Easy Custom Music

Let's users easily replace in-game music tracks in Gen1Recomp. Wanted to replace the battle theme with the one from FF7? Want to see if Guile's Theme really does go with everything? Well now you can

(Currently Gen1 only, will be updated for Gen2 support)

Literally drag & drop, find the specific folder in /assets and just drop your audio file in there.

For example:
Replace Pokemon Center music -> Drop your music into /assets/Pokemon Center
Replace Trainer Battle music -> Drop your music into /assets/Trainer Battle

That's it. No config, no messing.

Supports the following audio formats:
- .mp3
- .ogg
- .wav
- .flac

.ogg is recommended as it doesn't have audio padding, so it starts a little quicker and works better in a loop. However mp3s and other formats work just fine

This mod currently only supports one track per folder. If you use more than one it'll pick the first track it finds and move on, which may vary across different devices and OSes. My recommendation is to stick to one song per folder

No specific conflicts, but they may arise with other music-based mods, depending on which/how many songs you override

Feel free to drop in any requests and feedback.


# Limitations

Replaces core music which is re-used in the vanilla game, not specific to a particular building etc. For example replacing the Pokemon Center music replaces *all* Pokemon Center (and Poke Mart) music with the track you picked.

Currently only supports one audio file per music theme


# Future plans

Gen2 support (next update)

If there's enough demand I can add better customisation, for example have themes for each specific Pokemon Center and different themes for each gym leader

Likewise if there's enough demand I can add support for multiple tracks per location, for the game to rotate between.



## Installation

1. Download the latest .zip release.
2. Drag mod into the launcher with the mods tab open. Alternatively place extract the mod from the .zip file and place it into your mods/ directory.
3. Place any songs you want to override in their correct folder in /assets, inside the mod folder
4. Launch the game. The engine will automatically mount the mod. Replaced tracks automatically play when the mod is enabled
