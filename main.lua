local SUPPORTED_FORMATS = { mp3 = true, ogg = true, wav = true, flac = true }
local generalMusicFolders = {
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




-- Converts a Title Case folder name back to UPPER_SNAKE_CASE for the engine map ID
local function folderNameToMapId(folderName)
    return folderName:gsub(" ", "_"):upper()
end

-- Scans a folder and returns the relative path and filename of the first valid audio file
local function getAudioFileInFolder(mod, folderPath)
    local items = mod:list(folderPath)
    if not items then return nil, nil end
    
    for _, itemName in ipairs(items) do
        local ext = itemName:match("^.+%.(.+)$")
        if ext and SUPPORTED_FORMATS[ext:lower()] then
            local fullPath = folderPath .. "/" .. itemName
            local fileInfo = mod:info(fullPath)
            if fileInfo and fileInfo.type == "file" then
                return fullPath, itemName
            end
        end
    end
    
    return nil, nil
end

-- Scans the General Music folder and overrides vanilla hooks dynamically
local function applyGeneralMusicOverrides(mod)
    local generalDir = "assets/General Music"
    local info = mod:info(generalDir)
    if not info or info.type ~= "directory" then return end

    local items = mod:list(generalDir)
    if not items then return end

    for _, folderName in ipairs(items) do
        local folderPath = generalDir .. "/" .. folderName
        local folderInfo = mod:info(folderPath)
        
        if folderInfo and folderInfo.type == "directory" then
            local vanillaHook = generalMusicFolders[folderName]
            
            if vanillaHook then
                local audioPath, fileName = getAudioFileInFolder(mod, folderPath)
                if audioPath then
                    mod.content.music:override(vanillaHook, {
                        file = mod.assets:path(audioPath)
                    })
                    print("[EasyCustomMusic] GENERAL: Replaced '" .. folderName .. "' (" .. vanillaHook .. ") with '" .. fileName .. "'")
                end
            else
                print("[EasyCustomMusic] WARNING: Unrecognized General Music folder -> " .. folderName)
            end
        end
    end
end

-- Checks for a song, registers it and overrides the map immediately on discovery, skipping empty folders 
local function processSpecificMusic(mod, currentPath, depth)
    depth = depth or 0
    if depth > 5 then return end -- Prevents infinite recursion

    local info = mod:info(currentPath)
    if not info or info.type ~= "directory" then return end

    local items = mod:list(currentPath)
    if not items then return end

    -- Check if this folder contains an active audio file
    local audioPath, fileName = getAudioFileInFolder(mod, currentPath)
    if audioPath then
        local folderName = currentPath:match("([^/]+)$")
        if folderName then
            local mapId = folderNameToMapId(folderName)
            local customHookName = "CustomMusic_" .. mapId
            
            -- Register the new song def into the music registry
            mod.content.music:register(customHookName, {
                file = mod.assets:path(audioPath)
            })
            
            -- Retarget the map to use the newly registered song
            mod.content.map_songs:override(mapId, customHookName)
            
            print("[EasyCustomMusic] SPECIFIC: Routed map '" .. mapId .. "' to '" .. fileName .. "'")
        end
    end

    -- Continue traversing subdirectories recursively
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
    
    applyGeneralMusicOverrides(mod)
    processSpecificMusic(mod, "assets/Specific Music", 0)
    
    print("[EasyCustomMusic] Initialization Complete.")
end