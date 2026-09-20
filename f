-- =================================================================
-- vozoid hax - rivals
-- =================================================================
local ui = loadstring(game:HttpGet("https://raw.githubusercontent.com/lokerdavid77-star/asddasdasada/refs/heads/main/vozoidui.lua"))()

local Lighting    = game:GetService("Lighting")
local Players     = game:GetService("Players")
local RunService  = game:GetService("RunService")
local UIS         = game:GetService("UserInputService")
local Camera      = workspace.CurrentCamera
local LocalPlayer = Players.LocalPlayer

local win = ui:Window({ Name = "vozoid hax - rivals", Size = UDim2.fromOffset(680, 520) })

-- MAIN
local main = win:Tab("Main")
local perf = main:Section("Performance", "Left")
perf:Toggle({ Name = "Override FPS", Flag = "OverrideFPS", Default = false,
    Callback = function(v) print("override fps:", v) end })
perf:Slider({ Name = "FPS Cap", Flag = "FpsCap", Min = 15, Max = 240, Default = 60,
    Callback = function(v) print("fps cap:", v) end })
perf:Dropdown({ Name = "Priority", Flag = "PerfPriority",
    Values = {"Balanced","Performance","Quality"}, Default = "Balanced",
    Callback = function(v) print("priority:", v) end })

local miscSec = main:Section("Misc", "Right")
miscSec:Button({ Name = "Rejoin Server",
    Callback = function()
        game:GetService("TeleportService"):Teleport(game.PlaceId, LocalPlayer)
    end })
miscSec:Keybind({ Name = "Panic Key", Flag = "PanicKey", Default = Enum.KeyCode.Delete,
    Callback = function()
