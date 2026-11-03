-- Rivals Script (Keylime UI)
-- Features: Aimbot, Aim Lock, Kill All (Multi-Hit), Hitbox Extender, Gun Mod, Inf Jump, No Fall Damage, ESP

local Keylime = loadstring(game:HttpGet('https://strazos.xyz/files/5f83c2d2ce76f33d75fdb818.txt'))()
local person = game.Players.LocalPlayer.Character.HumanoidRootPart

-- Global State Variables
local godmode = false
local Jump = false
local mine = false
local joe = false
local distance = 5
local aimbotEnabled = false
local aimbotFOV = 100
local aimbotSmooth = 0.15
local espEnabled = false
local tracerEnabled = false
local hitboxExtender = false
local gunMod = false
local noFallDamage = false

-- Main Library
local Library = Keylime.new("Rivals Hub")

-- ================= UI CONTROLS =================

-- 1. Aimbot Settings
local AimGroup = Library:Create("Group", "Aimbot")

AimGroup:Create("Toggle", "Aimbot Enabled", function(thing)
    aimbotEnabled = thing
end, {Default = false})

AimGroup:Create