-- Darkness Loader v2 | Full Custom Script by PSPH_Josh754
local gui = Instance.new("ScreenGui", game.CoreGui)
gui.Name = "DarknessLoader"

local main = Instance.new("Frame", gui)
main.Size = UDim2.new(0, 350, 0, 480)
main.Position = UDim2.new(0.3, 0, 0.2, 0)
main.BackgroundColor3 = Color3.fromRGB(15,15,15)
main.Active = true
main.Draggable = true

local title = Instance.new("TextLabel", main)
title.Size = UDim2.new(1, 0, 0, 50)
title.Text = "🌑 DARKNESS LOADER 🌑"
title.Font = Enum.Font.GothamBlack
title.TextSize = 22
title.TextColor3 = Color3.new(1,1,1)
title.BackgroundTransparency = 1

function createBtn(text, posY, func)
	local btn = Instance.new("TextButton", main)
	btn.Size = UDim2.new(0, 320, 0, 35)
	btn.Position = UDim2.new(0, 15, 0, posY)
	btn.Text = text
	btn.BackgroundColor3 = Color3.fromRGB(25,25,25)
	btn.TextColor3 = Color3.new(1,1,1)
	btn.Font = Enum.Font.GothamBold
	btn.TextScaled = true
	btn.MouseButton1Click:Connect(func)
end

-- Auto Farm
createBtn("🗡️ Auto Farm Level", 60, function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xQuartyx/DonateMe/main/BFHub"))()
end)

-- Fruit ESP
createBtn("🥭 Devil Fruit ESP", 100, function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xDepressionx/Free-Script/main/FruitFinder"))()
end)

-- Fruit Sniper
createBtn("🎯 Fruit Sniper", 140, function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Marcos2103/fruit_sniper/main/fruit_sniper.lua"))()
end)

-- Player & Chest ESP
createBtn("🧠 ESP (Player + Chest + Fruit)", 180, function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Efe0626/My-Scripts/main/BFEsp"))()
end)

-- Auto Store Fruit
createBtn("📦 Auto Store Fruit", 220, function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ScriptRUs/Rando/main/fruitautostore.lua"))()
end)

-- Teleport GUI
createBtn("🗺️ Teleport GUI", 260, function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MarsQQ/Roblox/main/BloxFruitTeleport"))()
end)

-- FPS Boost
createBtn("🚀 FPS Boost", 300, function()
    for _, v in pairs(game:GetDescendants()) do
        if v:IsA("BasePart") then
            v.Material = Enum.Material.SmoothPlastic
            v.Reflectance = 0
        elseif v:IsA("Decal") then
            v.Transparency = 1
        end
    end
    setfpscap(60)
    game.Lighting.GlobalShadows = false
end)

-- Server Hop
createBtn("🌐 Server Hop", 340, function()
    loadstring(game:HttpGet("https://pastebin.com/raw/AiTtG7tA"))()
end)

-- Infinite Jump
createBtn("🦘 Infinite Jump", 380, function()
    local plr = game:GetService("Players").LocalPlayer
    local UIS = game:GetService("UserInputService")
    UIS.JumpRequest:Connect(function()
        plr.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
    end)
end)

-- UI Toggle Button (Mobile Friendly)
local toggleBtn = Instance.new("TextButton", gui)
toggleBtn.Size = UDim2.new(0, 120, 0, 35)
toggleBtn.Position = UDim2.new(0, 10, 0.9, 0)
toggleBtn.Text = "🌓 TOGGLE UI"
toggleBtn.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
toggleBtn.TextColor3 = Color3.new(1,1,1)
toggleBtn.Font = Enum.Font.GothamBold
toggleBtn.TextScaled = true

toggleBtn.MouseButton1Click:Connect(function()
	main.Visible = not main.Visible
end)

-- Anti-AFK
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:Connect(function()
	vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	wait(1)
	vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
