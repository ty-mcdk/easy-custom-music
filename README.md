# Easy Custom Music

Let's users easily replace in-game music tracks in Gen1Recomp. Want to replace the battle theme with the one from FF7? Want to see if Guile's Theme really does go with everything? Well now you can

Literally drag & drop, find the folder you need in /assets and just drop your audio file(s) in there.

That's it. No config, no messing.


General folder structure is `/assets/{game gen}/General Music` and `/assets/{game gen}/Specific Music`
For example:
    - `/assets/Gen 1/General Music/Pokemon Center` replaces all Pokemon Center music in Gen 1 games
    - `/assets/Gen 2/General Music/Pokemon Center` replaces all Pokemon Center music in Gen 2 games

(For any users updating from v1 or lower please read the warning about updating below)


Supports the following audio formats:
- .mp3
- .ogg (Vorbis only!)
- .wav
- .flac

Please note that due to a limitation with the Love 2D engine which powers the Gen1Recomp, only Vorbis is supported for .ogg format. ogg Opus can and will cause errors. OGG (vorbis) is recommended as it doesn't have audio padding, so it starts a little quicker and works better in a loop. However mp3s and other formats work just fine

Multiple tracks per folder are supported, for example you can have it cycle through different battle themes on each encounter.

No specific conflicts, but they may arise with other music-based mods, depending on which/how many songs you override

Feel free to drop in any requests and feedback.


## Updating from version 1.x.x

For anyone updating from version 1.x.x (or earlier) you may lose the songs you've spent time organising as replacements, as the folder structure has changed to account for multiple gens. To keep your replacements safe and carry over to version 2, copy the "General Music" and "Specific Music" folders in `/assets` to a safe location before updating the mod to v2.x.x.

After updating you can drop the folders into `/assets/Gen 1` and they'll work exactly as before

This doesn't affect anyone installing the mod for the first time.


## Quick music replacement

The quickest replacement is general themes, which appropriately live in `/assets/{gen}/General Music`. Want to replace the theme for all Pokemon Centers in one go? Just drop an audio file into `/assets/{gen}/General Music/Pokemon Center`

If you want quick, no fuss music replacements `/assets/{gen}/General Music` is the only folder you need to worry about. Feel free to ignore `/assets/{gen}/Specific Music`


## More customisable music replacement

There were requests for specific music themes, for example specific gym, Pokemon Center and town themes (some towns use the same music). If you go into `/assets/{gen}/Specific Music` you can replace songs for specific locations. To make things easier to navigate I've grouped locations, for example Pewter Gym, Pewter Poke Mart and Pewter Poke Center are all grouped under `/assets/{gen}/Specific Music/Pewter City`. 

For example if you want to replace only the Pewter Gym theme, you'd place your song in `/assets/{gen}/Specific Music/Pewter City/Pewter Gym`. That song would then only apply to Pewter Gym (unless you also used the same song in other locations)

Mappings for specific music locations are further down


## Using both general & specific music

When you enter an area, the mod checks for custom music in this order:

1. **Specific Music:** The mod first checks if you have placed a song in the exact folder for your current map (e.g., `/assets/{gen}/Specific Music/Cerulean City/Bike Shop/`). If a valid audio file is found, it plays it.
2. **General Music:** If the specific folder is empty, the mod checks the `/assets/{gen}/General Music/` folder for the general theme (e.g., `Cities 2`). If a file is found there, it plays it instead.
3. **Vanilla:** If neither folder has a custom track, the mod falls back to the original soundtrack.

You can also combine general and specific music for ease of us. For example you can place "song A" in `Specific Music/Fuchsia City/Fuchsia Gym`, "Song B" in `Specific Music/Saffron City/Saffron Gym` and "Song C" in  `General Music/Pokemon Center`. In this example Song A will play specifically in Fuchsia City Gym, Song B will play specifically in Saffron City Gym and Song C will play in all other gyms




## Android issues

Due to restrictions on Android beyond the control of the game engine, non-root users may have issues accessing the mod directory to drop their audio files in.

The best current workaround if you can't access the mods folder properly when using Android is as follows:
1. Download the latest release of this mod from https://github.com/ty-mcdk/easy-custom-music/releases
2. Unzip the mod (you may need a 3rd party app if one isn't already installed on your device)
3. Place your audio tracks as usual inside `(unzipped mod folder)/assets/...`
4. Compress/zip the mod folder once again with the added audio tracks inside
5. Open the game launcher
6. Select the option to import the mod zip

Unfortunately our hands are tied and there is literally no other way of doing this if you have a restricted Android device (typically phones)



## Specific Music Location Guide

This is a directory map of every specific location available in the mod, corresponding exactly to the folders inside `/assets/{gen}/Specific Music/`. You can easily find the right folder by using Ctrl + F

## Gen 1 (/assets/Gen 1/Specific Music):

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






## Gen 2 (/assets/Gen 2/Specific Music):

* **Azalea Town:** Azalea Gym, Azalea Mart, Azalea Pokecenter 1F, Azalea Town, Charcoal Kiln, Kurts House, Move Deleters House, Day Of Week Siblings House

* **Blackthorn City:** Blackthorn City, Blackthorn Dragon Speech House, Blackthorn Emys House, Blackthorn Gym 1F, Blackthorn Gym 2F, Blackthorn Mart, Blackthorn Pokecenter 1F

* **Burned Tower:** Burned Tower 1F, Burned Tower B1F

* **Celadon City:** Celadon Cafe, Celadon City, Celadon Dept Store 1F, Celadon Dept Store 2F, Celadon Dept Store 3F, Celadon Dept Store 4F, Celadon Dept Store 5F, Celadon Dept Store 6F, Celadon Dept Store Elevator, Celadon Game Corner, Celadon Game Corner Prize Room, Celadon Gym, Celadon Mansion 1F, Celadon Mansion 2F, Celadon Mansion 3F, Celadon Mansion Roof, Celadon Mansion Roof House, Celadon Pokecenter 1F, Celadon Pokecenter 2F Beta

* **Cerulean City:** Cerulean City, Cerulean Gym, Cerulean Gym Badge Speech House, Cerulean Mart, Cerulean Pokecenter 1F, Cerulean Pokecenter 2F Beta, Cerulean Police Station, Cerulean Trade Speech House

* **Cherrygrove City:** Cherrygrove City, Cherrygrove Evolution Speech House, Cherrygrove Gym Speech House, Cherrygrove Mart, Cherrygrove Pokecenter 1F, Guide Gents House

* **Cianwood City:** Cianwood City, Cianwood Gym, Cianwood Lugia Speech House, Cianwood Pharmacy, Cianwood Photo Studio, Cianwood Pokecenter 1F

* **Cinnabar Island:** Cinnabar Island, Cinnabar Pokecenter 1F, Cinnabar Pokecenter 2F Beta

* **Dark Cave:** Dark Cave Blackthorn Entrance, Dark Cave Violet Entrance

* **Dragons Den:** Dragons Den 1F, Dragons Den B1F

* **Ecruteak City:** Dance Theater, Ecruteak City, Ecruteak Gym, Ecruteak Itemfinder House, Ecruteak Lugia Speech House, Ecruteak Mart, Ecruteak Pokecenter 1F, Ecruteak Tin Tower Back Entrance, Ecruteak Tin Tower Entrance, Manias House

* **Fast Ship:** Fast Ship 1F, Fast Ship B1F, Fast Ship Cabins Nnw Nne Ne, Fast Ship Cabins Se Sse Captains Cabin, Fast Ship Cabins Sw Ssw Nw

* **Fuchsia City:** Fuchsia City, Fuchsia Gym, Fuchsia Mart, Fuchsia Pokecenter 1F, Fuchsia Pokecenter 2F Beta, Safari Zone Beta, Safari Zone Fuchsia Gate Beta, Safari Zone Main Office, Safari Zone Wardens Home

* **Goldenrod City:** Goldenrod Bike Shop, Goldenrod City, Goldenrod Dept Store 1F, Goldenrod Dept Store 2F, Goldenrod Dept Store 3F, Goldenrod Dept Store 4F, Goldenrod Dept Store 5F, Goldenrod Dept Store 6F, Goldenrod Dept Store B1F, Goldenrod Dept Store Elevator, Goldenrod Flower Shop, Goldenrod Game Corner, Goldenrod Gym, Goldenrod Happiness Rater, Goldenrod Magnet Train Station, Goldenrod Name Rater, Goldenrod Pokecenter 1F, Goldenrod Pp Speech House, Goldenrod Underground, Goldenrod Underground Switch Room Entrances, Goldenrod Underground Warehouse

* **Ice Path:** Ice Path 1F, Ice Path B1F, Ice Path B2F Blackthorn Side, Ice Path B2F Mahogany Side, Ice Path B3F

* **Ilex Forest:** Ilex Forest, Ilex Forest Azalea Gate

* **Indigo Plateau:** Indigo Plateau Pokecenter 1F, Wills Room, Kogas Room, Brunos Room, Karens Room, Lances Room, Hall Of Fame

* **Lake Of Rage:** Lake Of Rage, Lake Of Rage Hidden Power House, Lake Of Rage Magikarp House

* **Lavender Town:** Lavender Mart, Lavender Name Rater, Lavender Pokecenter 1F, Lavender Pokecenter 2F Beta, Lavender Speech House, Lavender Town, Lav Radio Tower 1F, Mr Fujis House, Soul House

* **Mahogany Town:** Mahogany Gym, Mahogany Pokecenter 1F, Mahogany Red Gyarados Speech House, Mahogany Town

* **Mount Moon:** Mount Moon, Mount Moon Gift Shop, Mount Moon Square

* **Mount Mortar:** Mount Mortar 1F Inside, Mount Mortar 1F Outside, Mount Mortar 2F Inside, Mount Mortar B1F

* **National Park:** National Park, National Park Bug Contest

* **New Bark Town:** Elms House, Elms Lab, New Bark Town, Players House 1F, Players House 2F, Players Neighbors House

* **Olivine City:** Olivine Cafe, Olivine City, Olivine Good Rod House, Olivine Gym, Olivine House Beta, Olivine Mart, Olivine Pokecenter 1F, Olivine Port, Olivine Port Passage, Olivine Punishment Speech House, Olivine Tims House

* **Olivine Lighthouse:** Olivine Lighthouse 1F, Olivine Lighthouse 2F, Olivine Lighthouse 3F, Olivine Lighthouse 4F, Olivine Lighthouse 5F, Olivine Lighthouse 6F

* **Pallet Town:** Blues House, Oaks Lab, Pallet Town, Reds House 1F, Reds House 2F

* **Pewter City:** Pewter City, Pewter Gym, Pewter Mart, Pewter Nidoran Speech House, Pewter Pokecenter 1F, Pewter Pokecenter 2F Beta, Pewter Snooze Speech House

* **Rock Tunnel:** Rock Tunnel 1F, Rock Tunnel B1F

* **Routes:** Route 1, Route 2, Route 3, Route 4, Route 5, Route 6, Route 7, Route 8, Route 9, Route 10 North, Route 10 Pokecenter 1F, Route 10 Pokecenter 2F Beta, Route 10 South, Route 11, Route 12, Route 12 Super Rod House, Route 13, Route 14, Route 15, Route 15 Fuchsia Gate, Route 16, Route 16 Fuchsia Speech House, Route 16 Gate, Route 17, Route 17 Route 18 Gate, Route 18, Route 19, Route 19 Fuchsia Gate, Route 20, Route 21, Route 22, Route 23, Route 24, Route 25, Route 26, Route 26 Heal House, Route 27, Route 27 Sandstorm House, Route 28, Route 28 Steel Wing House, Route 29, Route 29 Route 46 Gate, Route 2 Gate, Route 2 Nugget House, Route 30, Route 30 Berry House, Route 31, Route 31 Violet Gate, Route 32, Route 32 Pokecenter 1F, Route 32 Ruins Of Alph Gate, Route 33, Route 34, Route 34 Ilex Forest Gate, Route 35, Route 35 Goldenrod Gate, Route 35 National Park Gate, Route 36, Route 36 National Park Gate, Route 36 Ruins Of Alph Gate, Route 37, Route 38, Route 38 Ecruteak Gate, Route 39, Route 39 Barn, Route 39 Farmhouse, Route 40, Route 41, Route 42, Route 42 Ecruteak Gate, Route 43, Route 43 Gate, Route 43 Mahogany Gate, Route 44, Route 45, Route 46, Route 5 Cleanse Tag House, Route 5 Saffron Gate, Route 5 Underground Path Entrance, Route 6 Saffron Gate, Route 6 Underground Path Entrance, Route 7 Saffron Gate, Route 8 Saffron Gate

* **Ruins Of Alph:** Ruins Of Alph Aerodactyl Chamber, Ruins Of Alph Ho Oh Chamber, Ruins Of Alph Inner Chamber, Ruins Of Alph Kabuto Chamber, Ruins Of Alph Omanyte Chamber, Ruins Of Alph Outside, Ruins Of Alph Research Center

* **Saffron City:** Copycats House 1F, Copycats House 2F, Fighting Dojo, Mr Psychics House, Saffron City, Saffron Gym, Saffron Magnet Train Station, Saffron Mart, Saffron Pokecenter 1F, Saffron Pokecenter 2F Beta, Silph Co 1F

* **Silver Cave:** Silver Cave Item Rooms, Silver Cave Outside, Silver Cave Pokecenter 1F, Silver Cave Room 1, Silver Cave Room 2, Silver Cave Room 3

* **Slowpoke Well:** Slowpoke Well B1F, Slowpoke Well B2F

* **Sprout Tower:** Sprout Tower 1F, Sprout Tower 2F, Sprout Tower 3F

* **Standalone:** Bills Familys House, Bills House, Bills Older Sisters House, Colosseum, Day Care, Digletts Cave, Mr Pokemons House, Pokecenter 2F, Power Plant, Seafoam Gym, Time Capsule, Tohjo Falls, Trade Center, Underground Path

* **Team Rocket Base:** Team Rocket Base B1F, Team Rocket Base B2F, Team Rocket Base B3F

* **Tin Tower:** Tin Tower 1F, Tin Tower 2F, Tin Tower 3F, Tin Tower 4F, Tin Tower 5F, Tin Tower 6F, Tin Tower 7F, Tin Tower 8F, Tin Tower 9F, Tin Tower Roof

* **Union Cave:** Union Cave 1F, Union Cave B1F, Union Cave B2F

* **Vermilion City:** Pokemon Fan Club, Vermilion City, Vermilion Digletts Cave Speech House, Vermilion Fishing Speech House, Vermilion Gym, Vermilion Magnet Train Speech House, Vermilion Mart, Vermilion Pokecenter 1F, Vermilion Pokecenter 2F Beta, Vermilion Port, Vermilion Port Passage

* **Victory Road:** Victory Road, Victory Road Gate

* **Violet City:** Earls Pokemon Academy, Violet City, Violet Gym, Violet Kyles House, Violet Mart, Violet Nickname Speech House, Violet Pokecenter 1F

* **Viridian City:** Trainer House 1F, Trainer House B1F, Viridian City, Viridian Gym, Viridian Mart, Viridian Nickname Speech House, Viridian Pokecenter 1F, Viridian Pokecenter 2F Beta

* **Whirl Island:** Whirl Island B1F, Whirl Island B2F, Whirl Island Cave, Whirl Island Lugia Chamber, Whirl Island Ne, Whirl Island Nw, Whirl Island Se, Whirl Island Sw








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
