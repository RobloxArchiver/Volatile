--[[

    Volatile - Official Source Code
    Credits: 

    Development - RobloxArchiver (Github @ RobloxArchiver) 
    Elerium UI Library - Singularity (V3rm @ King Singularity) (Discord @ Singularity#5490)
    Elerium UI Library (Slight Modifications) - RobloxArchiver

]]

loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxArchiver/Volatile/main/libraries/ui.lua"))()

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local Volatile = {
    Version = "0.0.1a",
    Cycle = "Pre-Alpha",
}

function Volatile.CeleryLoaded()
    if (getgenv().rnet) or (getgenv().setidentity) then
        return "Celery Loaded"
    else
        return "Celery Not Loaded"
    end
end

function Volatile.IsCeleryLoaded()
    if (getgenv().rnet) or (getgenv().setidentity) then
        return true
    else
        return false
    end
end

local Elerium = getgenv().elerium

local Main_Window = Elerium:AddWindow(string.format("Volatile v%s %s", Volatile.Version, Volatile.Cycle), {
    main_color = Color3.fromRBG(157, 206, 92),
    min_size = Vector2.new(500, 600),
    can_resize = true
})

--[[

    Main Tab/Welcome Tab

]]

local Main_Tab = Main_Window:AddTab("Main")

Main_Tab:AddLabel(string.format("Hello, %s!", LocalPlayer.Name))
Main_Tab:AddLabel(Volatile.CeleryLoaded())

local Rnet_Tab = Main_Window:AddTab("RNET")

Rnet_Tab:AddLabel("RNET is a celery-specific set of scripts to allow modifcation of network.")
