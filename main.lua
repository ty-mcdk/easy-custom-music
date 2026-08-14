return function(mod)

  local SUPPORTED_FORMATS = {
      ["mp3"] = true,
      ["ogg"] = true,
      ["wav"] = true,
      ["flac"] = true
  }

  -- Mapping of in-game music hooks to user-friendly folder names
  local musicFolders = {
      -- Battle Themes
      Music_DefeatedGymLeader = "Gym Leader Victory",
      Music_DefeatedTrainer   = "Trainer Victory",
      Music_DefeatedWildMon   = "Wild Victory",
      Music_FinalBattle       = "Final Battle",
      Music_GymLeaderBattle   = "Gym Leader Battle",
      Music_TrainerBattle     = "Trainer Battle",
      Music_WildBattle        = "Wild Battle",

      -- Map/Location Themes
      Music_Celadon         = "Celadon City",
      Music_Cinnabar        = "Cinnabar Island",
      Music_CinnabarMansion = "Cinnabar Mansion",
      Music_Cities1         = "Cities 1",
      Music_Cities2         = "Cities 2",
      Music_Dungeon1        = "Dungeon 1",
      Music_Dungeon2        = "Dungeon 2",
      Music_Dungeon3        = "Dungeon 3",
      Music_GameCorner      = "Game Corner",
      Music_Gym             = "Gym",
      Music_IndigoPlateau   = "Indigo Plateau",
      Music_Lavender        = "Lavender Town",
      Music_OaksLab         = "Oaks Lab",
      Music_PalletTown      = "Pallet Town",
      Music_Pokecenter      = "Pokemon Center",
      Music_PokemonTower    = "Pokemon Tower",
      Music_Routes1         = "Routes 1",
      Music_Routes2         = "Routes 2",
      Music_Routes3         = "Routes 3",
      Music_Routes4         = "Routes 4",
      Music_SSAnne          = "SS Anne",
      Music_SafariZone      = "Safari Zone",
      Music_SilphCo         = "Silph Co",
      Music_Vermilion       = "Vermilion City",
  }

    print("[EasyCustomMusic] Starting scan for custom music...")
    local filesLoaded = 0


    for hook, folderName in pairs(musicFolders) do
        local relativeDir = "assets/" .. folderName
        
        -- Use the new mod:info() to check if the directory exists
        local dirInfo = mod:info(relativeDir)
        
        if dirInfo and dirInfo.type == "directory" then
            -- Use mod:list() to get an array of all filenames inside the folder
            local items = mod:list(relativeDir)
            
            for _, itemName in ipairs(items) do
                -- Extract the file extension
                local ext = itemName:match("^.+%.(.+)$")
                
                if ext and SUPPORTED_FORMATS[ext:lower()] then
                    
                    local filePath = relativeDir .. "/" .. itemName
                    
                    -- Double-check that it's actually a file, not a directory named "test.mp3"
                    local fileInfo = mod:info(filePath)
                    if fileInfo and fileInfo.type == "file" then
                        
                        -- Execute the override
                        mod.content.music:override(hook, {
                            file = mod.assets:path(filePath)
                        })
                        
                        print("[EasyCustomMusic] SUCCESS: Replaced '" .. hook .. "' with '" .. itemName .. "' in " .. folderName)
                        filesLoaded = filesLoaded + 1
                        
                        -- Break so we only load the first valid song per folder
                        break
                    end
                end
            end --end for loop

        end

    end -- end for loop 
    
    print("[EasyCustomMusic] Finished scanning. Successfully loaded " .. filesLoaded .. " custom songs.")

  
end --end mod
