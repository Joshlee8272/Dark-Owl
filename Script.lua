-- Dino Event Bypass UI with Cute Dino Logo by PSPH_Josh754

local DinoImageID = "rbxassetid://17021211271" -- Replace with your own Dino decal if needed

local gui = Instance.new("ScreenGui", game.CoreGui)
gui.Name = "DinoBypassUI"

-- Main Panel
local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0, 260, 0, 140)
frame.Position = UDim2.new(0.02, 0, 0.3, 0)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.Active = true
frame.Draggable = true
Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 12)

-- Dino Image
local dinoImg = Instance.new("ImageLabel", frame)
dinoImg.Size = UDim2.new(0, 60, 0, 60)
dinoImg.Position = UDim2.new(0.05, 0, 0.05, 0)
dinoImg.BackgroundTransparency = 1
dinoImg.Image = DinoImageID

-- Title Text
local title = Instance.new("TextLabel", frame)
title.Text = "Dino Event Bypass"
title.Size = UDim2.new(1, -70, 0, 30)
title.Position = UDim2.new(0.3, 0, 0.05, 0)
title.BackgroundTransparency = 1
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.GothamBold
title.TextScaled = true

-- Bypass Button
local button = Instance.new("TextButton", frame)
button.Text = "🚀 Bypass Dino Event"
button.Size = UDim2.new(0.9, 0, 0.4, 0)
button.Position = UDim2.new(0.05, 0, 0.55, 0)
button.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
button.TextColor3 = Color3.new(1, 1, 1)
button.Font = Enum.Font.Gotham
button.TextScaled = true
Instance.new("UICorner", button).CornerRadius = UDim.new(0, 8)

-- Hover
button.MouseEnter:Connect(function()
	button.BackgroundColor3 = Color3.fromRGB(0, 200, 255)
end)
button.MouseLeave:Connect(function()
	button.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
end)

-- Action
button.MouseButton1Click:Connect(function()
	button.Text = "🕐 Bypassing..."

	local success1 = pcall(function()
		local summer = workspace:FindFirstChild("SummerHarvestEvent")
		if summer and (summer:IsA("Model") or summer:IsA("Folder")) then
			summer:Destroy()
		end
	end)

	local success2 = pcall(function()
		local rs = game:GetService("ReplicatedStorage")
		local mod = rs:FindFirstChild("Modules")
		if mod and mod:FindFirstChild("UpdateService") then
			local dino = mod.UpdateService:FindFirstChild("DinoEvent")
			if dino and not workspace:FindFirstChild("DinoEvent") then
				dino.Parent = workspace
			end
		end
	end)

	if success1 and success2 then
		button.Text = "✅ Dino Bypassed"
	else
		button.Text = "⚠️ Error"
	end

	wait(2)
	button.Text = "🚀 Bypass Dino Event"
end)
