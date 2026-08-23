local GameVersion = require("src.core.GameVersion")

local SUPPORTED_FORMATS = { mp3 = true, ogg = true, wav = true, flac = true }

-- Master tables to hold randomised playlists
local generalPlaylists = {}
local specificPlaylists = {}

local gen1GeneralMusicFolders = {
    ["Bike Riding"] = "Music_BikeRiding",
    ["Celadon City"] = "Music_Celadon",
    ["Cinnabar Island"] = "Music_Cinnabar",
    ["Cinnabar Mansion"] = "Music_CinnabarMansion",
    ["Cities 1"] = "Music_Cities1",
    ["Cities 2"] = "Music_Cities2",
    ["Dungeon 1"] = "Music_Dungeon1",
    ["Dungeon 2"] = "Music_Dungeon2",
    ["Dungeon 3"] = "Music_Dungeon3",
    ["Final Battle"] = "Music_FinalBattle",
    ["Game Corner"] = "Music_GameCorner",
    ["Gym"] = "Music_Gym",
    ["Gym Leader Battle"] = "Music_GymLeaderBattle",
    ["Gym Leader Victory"] = "Music_DefeatedGymLeader",
    ["Indigo Plateau"] = "Music_IndigoPlateau",
    ["Lavender Town"] = "Music_Lavender",
    ["Oaks Lab"] = "Music_OaksLab",
    ["Pallet Town"] = "Music_PalletTown",
    ["Pokemon Center"] = "Music_Pokecenter",
    ["Pokemon Tower"] = "Music_PokemonTower",
    ["Routes 1"] = "Music_Routes1",
    ["Routes 2"] = "Music_Routes2",
    ["Routes 3"] = "Music_Routes3",
    ["Routes 4"] = "Music_Routes4",
    ["Safari Zone"] = "Music_SafariZone",
    ["Silph Co"] = "Music_SilphCo",
    ["SS Anne"] = "Music_SSAnne",
    ["Trainer Battle"] = "Music_TrainerBattle",
    ["Trainer Victory"] = "Music_DefeatedTrainer",
    ["Vermilion City"] = "Music_Vermilion",
    ["Wild Battle"] = "Music_WildBattle",
    ["Wild Victory"] = "Music_DefeatedWildMon"
}

local gen2GeneralMusicFolders = {
    ["After The Rival Fight"] = "Music_AfterTheRivalFight",
    ["Azalea Town"] = "Music_AzaleaTown",
    ["Bike Riding"] = "Music_Bicycle",
    ["Bug Catching Contest"] = "Music_BugCatchingContest",
    ["Burned Tower"] = "Music_BurnedTower",
    ["Celadon City"] = "Music_CeladonCity",
    ["Champion Battle"] = "Music_ChampionBattle",
    ["Cherrygrove City"] = "Music_CherrygroveCity",
    ["Contest Results"] = "Music_ContestResults",
    ["Credits"] = "Music_Credits",
    ["Dancing Hall"] = "Music_DancingHall",
    ["Dark Cave"] = "Music_DarkCave",
    ["Dragons Den"] = "Music_DragonsDen",
    ["Ecruteak City"] = "Music_EcruteakCity",
    ["Elms Lab"] = "Music_ElmsLab",
    ["Evolution"] = "Music_Evolution",
    ["Game Corner"] = "Music_GameCorner",
    ["Gold Silver Opening"] = "Music_GoldSilverOpening",
    ["Gold Silver Opening 2"] = "Music_GoldSilverOpening2",
    ["Goldenrod City"] = "Music_GoldenrodCity",
    ["Gym"] = "Music_Gym",
    ["Gym Leader Victory"] = "Music_GymLeaderVictory",
    ["Hall Of Fame"] = "Music_HallOfFame",
    ["Heal Pokemon"] = "Music_HealPokemon",
    ["Indigo Plateau"] = "Music_IndigoPlateau",
    ["Johto Gym Battle"] = "Music_JohtoGymBattle",
    ["Johto Trainer Battle"] = "Music_JohtoTrainerBattle",
    ["Johto Wild Battle"] = "Music_JohtoWildBattle",
    ["Johto Wild Battle Night"] = "Music_JohtoWildBattleNight",
    ["Kanto Gym Battle"] = "Music_KantoGymBattle",
    ["Kanto Trainer Battle"] = "Music_KantoTrainerBattle",
    ["Kanto Wild Battle"] = "Music_KantoWildBattle",
    ["Lake Of Rage"] = "Music_LakeOfRage",
    ["Lake Of Rage Rocket Radio"] = "Music_LakeOfRageRocketRadio",
    ["Lavender Town"] = "Music_LavenderTown",
    ["Lighthouse"] = "Music_Lighthouse",
    ["Look Beauty"] = "Music_LookBeauty",
    ["Look Hiker"] = "Music_LookHiker",
    ["Look Kimono Girl"] = "Music_LookKimonoGirl",
    ["Look Lass"] = "Music_LookLass",
    ["Look Officer"] = "Music_LookOfficer",
    ["Look Pokemaniac"] = "Music_LookPokemaniac",
    ["Look Rival"] = "Music_LookRival",
    ["Look Rocket"] = "Music_LookRocket",
    ["Look Sage"] = "Music_LookSage",
    ["Look Youngster"] = "Music_LookYoungster",
    ["Magnet Train"] = "Music_MagnetTrain",
    ["Main Menu"] = "Music_MainMenu",
    ["Mom"] = "Music_Mom",
    ["Mt Moon"] = "Music_MtMoon",
    ["Mt Moon Square"] = "Music_MtMoonSquare",
    ["National Park"] = "Music_NationalPark",
    ["New Bark Town"] = "Music_NewBarkTown",
    ["Pallet Town"] = "Music_PalletTown",
    ["Poke Flute Channel"] = "Music_PokeFluteChannel",
    ["Pokemon Center"] = "Music_PokemonCenter",
    ["Pokemon Channel"] = "Music_PokemonChannel",
    ["Pokemon Lullaby"] = "Music_PokemonLullaby",
    ["Pokemon March"] = "Music_PokemonMarch",
    ["Post Credits"] = "Music_PostCredits",
    ["Printer"] = "Music_Printer",
    ["Prof Oak"] = "Music_ProfOak",
    ["Prof Oaks Pokemon Talk"] = "Music_ProfOaksPokemonTalk",
    ["Rival Battle"] = "Music_RivalBattle",
    ["Rocket Battle"] = "Music_RocketBattle",
    ["Rocket Hideout"] = "Music_RocketHideout",
    ["Rocket Theme"] = "Music_RocketTheme",
    ["Route 1"] = "Music_Route1",
    ["Route 12"] = "Music_Route12",
    ["Route 2"] = "Music_Route2",
    ["Route 26"] = "Music_Route26",
    ["Route 29"] = "Music_Route29",
    ["Route 3"] = "Music_Route3",
    ["Route 30"] = "Music_Route30",
    ["Route 36"] = "Music_Route36",
    ["Route 37"] = "Music_Route37",
    ["Ruins Of Alph Interior"] = "Music_RuinsOfAlphInterior",
    ["Ruins Of Alph Radio"] = "Music_RuinsOfAlphRadio",
    ["SS Aqua"] = "Music_SSAqua",
    ["Show Me Around"] = "Music_ShowMeAround",
    ["Sprout Tower"] = "Music_SproutTower",
    ["Successful Capture"] = "Music_SuccessfulCapture",
    ["Surf"] = "Music_Surf",
    ["Tin Tower"] = "Music_TinTower",
    ["Title Screen"] = "Music_TitleScreen",
    ["Trainer Victory"] = "Music_TrainerVictory",
    ["Union Cave"] = "Music_UnionCave",
    ["Vermilion City"] = "Music_VermilionCity",
    ["Victory Road"] = "Music_VictoryRoad",
    ["Violet City"] = "Music_VioletCity",
    ["Viridian City"] = "Music_ViridianCity",
    ["Wild Victory"] = "Music_WildPokemonVictory"
}

-- Converts a Title Case folder name back to UPPER_SNAKE_CASE for the engine map ID
local function folderNameToMapId(folderName)
    return folderName:gsub(" ", "_"):upper()
end

-- Scans a folder and returns a table of ALL valid audio files inside it
local function getAudioFilesInFolder(mod, folderPath)
    local files = {}
    local items = mod:list(folderPath)
    if not items then return files end
    
    for _, itemName in ipairs(items) do
        local ext = itemName:match("^.+%.(.+)$")
        if ext and SUPPORTED_FORMATS[ext:lower()] then
            local fullPath = folderPath .. "/" .. itemName
            local fileInfo = mod:info(fullPath)
            if fileInfo and fileInfo.type == "file" then
                table.insert(files, { path = fullPath, name = itemName })
            end
        end
    end
    
    return files
end

-- Scans General Music and loads playlists dynamically
local function applyGeneralMusicOverrides(mod, generalDir, mappingTable)
    local info = mod:info(generalDir)
    if not info or info.type ~= "directory" then return end

    local items = mod:list(generalDir)
    if not items then return end

    for _, folderName in ipairs(items) do
        local folderPath = generalDir .. "/" .. folderName
        local folderInfo = mod:info(folderPath)
        
        if folderInfo and folderInfo.type == "directory" then
            local vanillaHook = mappingTable[folderName]
            
            if vanillaHook then
                local audioFiles = getAudioFilesInFolder(mod, folderPath)
                if #audioFiles > 0 then
                    generalPlaylists[vanillaHook] = {}
                    
                    for i, file in ipairs(audioFiles) do
                        local customId = "GenMusic_" .. vanillaHook .. "_" .. tostring(i)
                        mod.content.music:register(customId, { file = mod.assets:path(file.path) })
                        table.insert(generalPlaylists[vanillaHook], customId)
                    end
                    print("[EasyCustomMusic] GENERAL: Loaded " .. tostring(#audioFiles) .. " track(s) for '" .. folderName .. "'")
                end
            else
                print("[EasyCustomMusic] WARNING: Unrecognized General Music folder -> " .. folderPath)
            end
        end
    end
end

-- Scans Specific Music recursively and builds map playlists
local function processSpecificMusic(mod, currentPath, depth)
    depth = depth or 0
    if depth > 5 then return end

    local info = mod:info(currentPath)
    if not info or info.type ~= "directory" then return end

    local items = mod:list(currentPath)
    if not items then return end

    local audioFiles = getAudioFilesInFolder(mod, currentPath)
    if #audioFiles > 0 then
        local folderName = currentPath:match("([^/]+)$")
        if folderName then
            local mapId = folderNameToMapId(folderName)
            specificPlaylists[mapId] = {}
            
            for i, file in ipairs(audioFiles) do
                local customId = "SpecMusic_" .. mapId .. "_" .. tostring(i)
                mod.content.music:register(customId, { file = mod.assets:path(file.path) })
                table.insert(specificPlaylists[mapId], customId)
            end
            print("[EasyCustomMusic] SPECIFIC: Loaded " .. tostring(#audioFiles) .. " track(s) for map '" .. mapId .. "'")
        end
    end

    for _, itemName in ipairs(items) do
        local fullPath = currentPath .. "/" .. itemName
        local itemInfo = mod:info(fullPath)
        
        if itemInfo and itemInfo.type == "directory" then
            processSpecificMusic(mod, fullPath, depth + 1)
        end
    end
end


return function(mod)
    print("[EasyCustomMusic] Initializing...")
    
    -- Ensure rng is seeded for random track selection
    math.randomseed(os.time())
    
    local v = GameVersion.get()
    
    if v == "gold" then
        print("[EasyCustomMusic] Gen 2 (Gold) detected. Scanning Gen 2 folders...")
        applyGeneralMusicOverrides(mod, "assets/Gen 2/General Music", gen2GeneralMusicFolders)
        processSpecificMusic(mod, "assets/Gen 2/Specific Music", 0)
        
    elseif v == "red" or v == "blue" or v == "yellow" then
        print("[EasyCustomMusic] Gen 1 detected. Scanning Gen 1 folders...")
        applyGeneralMusicOverrides(mod, "assets/Gen 1/General Music", gen1GeneralMusicFolders)
        processSpecificMusic(mod, "assets/Gen 1/Specific Music", 0)
        
    else
        print("[EasyCustomMusic] WARNING: Unknown game version detected (" .. tostring(v) .. ")")
    end
    
    -- To remember the last track we played. 
    local lastIntent = nil
    local lastCustomSong = nil


    -- First we pull what the engine intends to play next and account for priority (i.e is it a specific or general theme)
        -- If the "intent" is the same since the last map transition keep playing the current song. Avoids jarring music switches when a new area is technically loaded but the music should stay the same (e.g. riding a bicycle)
        -- If the intent changes randomly select a new theme
    mod.hooks:wrap("music.select", function(next, song, ctx)
        local engineSong = next(song, ctx)
        if not engineSong then return nil end

        local isSpecificMap = (ctx.mapId and specificPlaylists[ctx.mapId] and engineSong == ctx.mapSong)
        local currentIntent = isSpecificMap and ctx.mapId or engineSong
        if currentIntent == lastIntent and lastCustomSong then
            return lastCustomSong
        end

        local selectedSong = engineSong

        if isSpecificMap then
            local playlist = specificPlaylists[ctx.mapId]
            selectedSong = playlist[math.random(#playlist)]
        elseif generalPlaylists[engineSong] then
            local playlist = generalPlaylists[engineSong]
            selectedSong = playlist[math.random(#playlist)]
        end

        lastIntent = currentIntent
        lastCustomSong = selectedSong

        return selectedSong
    end)
    
    print("[EasyCustomMusic] Initialization Complete.")
end