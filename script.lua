local player = game:GetService("Players").LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

if playerGui:FindFirstChild("OldUI") then
	playerGui.OldUI:Destroy()
end

local gui = Instance.new("ScreenGui")
gui.Name = "OldUI"
gui.ResetOnSpawn = false
gui.IgnoreGuiInset = true
gui.DisplayOrder = 999
gui.Parent = playerGui

local box = Instance.new("Frame")
box.Size = UDim2.new(0, 420, 0, 130)
box.Position = UDim2.fromScale(0.5, 0.5)
box.AnchorPoint = Vector2.new(0.5, 0.5)
box.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
box.BorderSizePixel = 0
box.Parent = gui

local boxCorner = Instance.new("UICorner")
boxCorner.CornerRadius = UDim.new(0, 10)
boxCorner.Parent = box

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(60, 60, 60)
stroke.Thickness = 1
stroke.Parent = box

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, -30, 0, 32)
title.Position = UDim2.new(0, 15, 0, 16)
title.BackgroundTransparency = 1
title.Text = "Script is out of date"
title.TextColor3 = Color3.fromRGB(240, 240, 240)
title.TextSize = 22
title.TextXAlignment = Enum.TextXAlignment.Left
title.Font = Enum.Font.GothamBold
title.Parent = box

local subtitle = Instance.new("TextLabel")
subtitle.Size = UDim2.new(1, -30, 0, 20)
subtitle.Position = UDim2.new(0, 15, 0, 50)
subtitle.BackgroundTransparency = 1
subtitle.Text = "Join the Discord for the latest version:"
subtitle.TextColor3 = Color3.fromRGB(160, 160, 160)
subtitle.TextSize = 14
subtitle.TextXAlignment = Enum.TextXAlignment.Left
subtitle.Font = Enum.Font.Gotham
subtitle.Parent = box

local serverLink = Instance.new("TextButton")
serverLink.Size = UDim2.new(1, -30, 0, 40)
serverLink.Position = UDim2.new(0, 15, 0, 76)
serverLink.BackgroundColor3 = Color3.fromRGB(88, 101, 242)
serverLink.BorderSizePixel = 0
serverLink.Text = "discord.gg/hSgE9xGzZ4"
serverLink.TextColor3 = Color3.fromRGB(255, 255, 255)
serverLink.TextSize = 16
serverLink.Font = Enum.Font.GothamMedium
serverLink.Parent = box

local linkCorner = Instance.new("UICorner")
linkCorner.CornerRadius = UDim.new(0, 6)
linkCorner.Parent = serverLink

serverLink.MouseButton1Click:Connect(function()
	if setclipboard then
		setclipboard("https://discord.gg/hSgE9xGzZ4")
	elseif toclipboard then
		toclipboard("https://discord.gg/hSgE9xGzZ4")
	end
	serverLink.Text = "Copied"
	task.wait(2)
	serverLink.Text = "discord.gg/hSgE9xGzZ4"
end)
