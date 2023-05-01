--[[

    Volatile - Official Source Code
    Credits: 

    Development - RobloxArchiver & UptightSL @ github.com
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

local Elerium = getgenv().elerium

local Main_Window = Elerium:AddWindow(string.format("Volatile v%s %s", Volatile.Version, Volatile.Cycle), {
    main_color = Color3.fromRBG(157, 206, 92),
    min_size = Vector2.new(500, 600),
    can_resize = true
})

local Main_Tab = Main_Window:AddTab("Main")

Main_Tab:AddLabel(string.format("Hello, %s!", LocalPlayer.Name))
