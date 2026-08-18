# Easy Custom Music

Let's users easily replace in-game music tracks in Gen1Recomp. Want to replace the battle theme with the one from FF7? Want to see if Guile's Theme really does go with everything? Well now you can

(Currently Gen1 only, will be updated for Gen2 support in a future update)

Literally drag & drop, find the folder you need in /assets and just drop your audio file in there.

That's it. No config, no messing.



Supports the following audio formats:
- .mp3
- .ogg (Vorbis only!)
- .wav
- .flac

Please note that due to a limitation with the Love 2D engine which powers the Gen1Recomp, only Vorbis is supported for .ogg format. ogg Opus can and will cause errors

.ogg (vorbis) is recommended as it doesn't have audio padding, so it starts a little quicker and works better in a loop. However mp3s and other formats work just fine

This mod currently only supports one track per folder. If you use more than one it'll pick the first track it finds and move on, which may vary across different devices and OSes. My recommendation is to stick to one song per folder

No specific conflicts, but they may arise with other music-based mods, depending on which/how many songs you override

Feel free to drop in any requests and feedback.


## Quick music replacement

The quickest replacement is general themes, which appropriately live in `/assets/General Music`. Want to replace the theme for all Pokemon Centers in one go? Just drop an audio file into `/assets/General Music/Pokemon Center`

If you want quick, no fuss music replacements `/assets/General Music` is the only folder you need to worry about. Feel free to ignore `/assets/Specific Music`


## More customisable music replacement

There were requests for specific music themes, for example specific gym, Pokemon Center and town themes (some towns use the same music). If you go into `/assets/Specific Music` you can replace songs for specific locations. To make things easier to navigate I've grouped locations, for example Pewter Gym, Pewter Poke Mart and Pewter Poke Center are all grouped under `assets/Specific Music/Pewter City`. 

For example if you want to replace only the Pewter Gym theme, you'd place your song in `assets/Specific Music/Pewter City/Pewter Gym`. That song would then only apply to Pewter Gym (unless you also used the same song in other locations)

Mappings for specific music locations are further down


## Using both general & specific music

When you enter an area, the mod checks for custom music in this order:

1. **Specific Music:** The mod first checks if you have placed a song in the exact folder for your current map (e.g., `assets/Specific Music/Cerulean City/Bike Shop/`). If a valid audio file is found, it plays it.
2. **General Music:** If the specific folder is empty, the mod checks the `assets/General Music/` folder for the general theme (e.g., `Music_Cities2`). If a file is found there, it plays it instead.
3. **Vanilla:** If neither folder has a custom track, the mod falls back to the original soundtrack.

You can also combine general and specific music for ease of us. For example you can place "song A" in `Specific Music/Fuchsia City/Fuchsia Gym`, "Song B" in `Specific Music/Saffron City/Saffron Gym` and "Song C" in  `General Music/Pokemon Center`. In this example Song A will play specifically in Fuchsia City Gym, Song B will play specifically in Saffron City Gym and Song C will play in all other gyms




## Android issues

Due to restrictions on Android beyond the control of the game engine, non-root users may have issues accessing the mod directory to drop their audio files in.

The best current workaround if you can't access the mods folder properly when using Android is as follows:
    - Download the latest release of this mod from https://github.com/ty-mcdk/easy-custom-music/releases
    - Unzip the mod (you may need a 3rd party app if one isn't already installed on your device)
    - Place your audio tracks as usual inside `(unzipped mod folder)/assets/...`
    - Compress/zip the mod folder once again with the added audio tracks inside
    - Open the game launcher
    - Select the option to import the mod zip

Unfortunately our hands are tied and there is literally no other way of doing this if you have a restricted Android device (typically phones)



## Specific Music Location Guide

This is a directory map of every specific location available in the mod, corresponding exactly to the folders inside `/assets/Specific Music/`. You can easily find the right folder by using Ctrl + F

* **Celadon City:** Celadon City, Celadon Chief House, Celadon Diner, Celadon Gym, Celadon Hotel, Celadon Mansion 1F, Celadon Mansion 2F, Celadon Mansion 3F, Celadon Mansion Roof, Celadon Mansion Roof House, Celadon Mart 1F, Celadon Mart 2F, Celadon Mart 3F, Celadon Mart 4F, Celadon Mart 5F, Celadon Mart Elevator, Celadon Mart Roof, Celadon Pokecenter, Game Corner, Game Corner Prize Room, Rocket Hideout B1F, Rocket Hideout B2F, Rocket Hideout B3F, Rocket Hideout B4F, Rocket Hideout Elevator

* **Cerulean Cave:** Cerulean Cave 1F, Cerulean Cave 2F, Cerulean Cave B1F

* **Cerulean City:** Cerulean City, Cerulean Badge House, Cerulean Gym, Cerulean Mart, Cerulean Pokecenter, Cerulean Trade House, Cerulean Trashed House, Cerulean Trashed House Copy, Bike Shop

* **Cinnabar Island:** Cinnabar Island, Cinnabar Gym, Cinnabar Lab, Cinnabar Lab Fossil Room, Cinnabar Lab Metronome Room, Cinnabar Lab Trade Room, Cinnabar Mart, Cinnabar Mart Copy, Cinnabar Pokecenter, Pokemon Mansion 1F, Pokemon Mansion 2F, Pokemon Mansion 3F, Pokemon Mansion B1F

* **Digletts Cave:** Digletts Cave, Digletts Cave Route 11, Digletts Cave Route 2

* **Fuchsia City:** Fuchsia City, Fuchsia Bills Grandpas House, Fuchsia Good Rod House, Fuchsia Gym, Fuchsia Mart, Fuchsia Meeting Room, Fuchsia Pokecenter, Wardens House, Safari Zone Gate

* **Indigo Plateau:** Indigo Plateau, Indigo Plateau Lobby, Lances Room, Loreleis Room, Brunos Room, Agathas Room, Champions Room, Hall Of Fame

* **Lavender Town:** Lavender Town, Lavender Cubone House, Lavender Mart, Lavender Pokecenter, Mr Fujis House, Name Raters House, Pokemon Tower 1F, Pokemon Tower 2F, Pokemon Tower 3F, Pokemon Tower 4F, Pokemon Tower 5F, Pokemon Tower 6F, Pokemon Tower 7F

* **Mt Moon:** Mt Moon 1F, Mt Moon B1F, Mt Moon B2F, Mt Moon Pokecenter

* **Pallet Town:** Pallet Town, Blues House, Reds House 1F, Reds House 2F, Oaks Lab

* **Pewter City:** Pewter City, Pewter Gym, Pewter Mart, Pewter Nidoran House, Pewter Pokecenter, Pewter Speech House, Museum 1F, Museum 2F

* **Rock Tunnel:** Rock Tunnel 1F, Rock Tunnel B1F, Rock Tunnel Pokecenter

* **Routes:** Route 1 through 25, Route 2 Gate, Route 2 Trade House, Route 5 Gate, Route 6 Gate, Route 7 Gate, Route 8 Gate, Route 11 Gate 1F, Route 11 Gate 2F, Route 12 Gate 1F, Route 12 Gate 2F, Route 12 Super Rod House, Route 15 Gate 1F, Route 15 Gate 2F, Route 16 Fly House, Route 16 Gate 1F, Route 16 Gate 2F, Route 18 Gate 1F, Route 18 Gate 2F, Route 22 Gate

* **Safari Zone:** Safari Zone Center, Safari Zone East, Safari Zone North, Safari Zone West, Safari Zone Center Rest House, Safari Zone East Rest House, Safari Zone North Rest House, Safari Zone West Rest House, Safari Zone Secret House

* **Saffron City:** Saffron City, Saffron Gym, Saffron Mart, Saffron Pidgey House, Saffron Pokecenter, Copycats House 1F, Copycats House 2F, Fighting Dojo, Mr Psychics House, Silph Co 1F, Silph Co 2F, Silph Co 3F, Silph Co 4F, Silph Co 5F, Silph Co 6F, Silph Co 7F, Silph Co 8F, Silph Co 9F, Silph Co 10F, Silph Co 11F, Silph Co Elevator

* **Seafoam Islands:** Seafoam Islands 1F, Seafoam Islands B1F, Seafoam Islands B2F, Seafoam Islands B3F, Seafoam Islands B4F

* **SS Anne:** SS Anne 1F, SS Anne 1F Rooms, SS Anne 2F, SS Anne 2F Rooms, SS Anne 3F, SS Anne B1F, SS Anne B1F Rooms, SS Anne Bow, SS Anne Captains Room, SS Anne Kitchen

* **Standalone:** Power Plant, Trade Center, Colosseum, Daycare, Bills House, Underground Path North South, Underground Path West East, Underground Path Route 5, Underground Path Route 6, Underground Path Route 6 Copy, Underground Path Route 7, Underground Path Route 7 Copy, Underground Path Route 8, Unused Map 0B, Unused Map 69, Unused Map 6A, Unused Map 6B, Unused Map 6D, Unused Map 6E, Unused Map 6F, Unused Map 70, Unused Map 72, Unused Map 73, Unused Map 74, Unused Map 75, Unused Map CC, Unused Map CD, Unused Map CE, Unused Map E7, Unused Map ED, Unused Map EE, Unused Map F1, Unused Map F2, Unused Map F3, Unused Map F4

* **Vermilion City:** Vermilion City, Vermilion Dock, Vermilion Gym, Vermilion Mart, Vermilion Old Rod House, Vermilion Pidgey House, Vermilion Pokecenter, Vermilion Trade House, Pokemon Fan Club

* **Victory Road:** Victory Road 1F, Victory Road 2F, Victory Road 3F

* **Viridian City:** Viridian City, Viridian Gym, Viridian Mart, Viridian Nickname House, Viridian Pokecenter, Viridian School House

* **Viridian Forest:** Viridian Forest, Viridian Forest North Gate, Viridian Forest South Gate




# Limitations

Using .ogg Opus may cause errors due to a limitation with the Love 2D engine. Please only use .ogg Vorbis format

Currently only supports one audio file per folder

Currently Gen1 only


# Future plans

Gen2 support (next update)

Likewise if there's enough demand I can add support for multiple tracks per location, for the game to rotate between.



## Installation

1. Download the latest .zip release.
2. Drag mod into the launcher with the mods tab open. Alternatively place extract the mod from the .zip file and place it into your mods/ directory.
3. Place any songs you want to override in their correct folder
4. Launch the game. The engine will automatically mount the mod. Replaced tracks automatically play when the mod is enabled
