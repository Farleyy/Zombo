-- Gui to Lua
-- Version: 3.2

-- Instances:

local MichealZombies = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local KillAura = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local Aimbot = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local ESP = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")

--Properties:

MichealZombies.Name = "MichealZombies"
MichealZombies.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Main.Name = "Main"
Main.Parent = MichealZombies
Main.Active = true
Main.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Main.Position = UDim2.new(0.31845966, 0, 0.283529401, 0)
Main.Selectable = true
Main.Size = UDim2.new(0, 481, 0, 318)

UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = Main

KillAura.Name = "KillAura"
KillAura.Parent = Main
KillAura.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
KillAura.Position = UDim2.new(0.0228690207, 0, 0.125786185, 0)
KillAura.Size = UDim2.new(0, 144, 0, 32)
KillAura.Font = Enum.Font.SourceSans
KillAura.Text = "Kill Aura"
KillAura.TextColor3 = Color3.fromRGB(255, 255, 255)
KillAura.TextSize = 20.000

UICorner_2.CornerRadius = UDim.new(0, 4)
UICorner_2.Parent = KillAura

Aimbot.Name = "Aimbot"
Aimbot.Parent = Main
Aimbot.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Aimbot.Position = UDim2.new(0.349272341, 0, 0.125786185, 0)
Aimbot.Size = UDim2.new(0, 144, 0, 32)
Aimbot.Font = Enum.Font.SourceSans
Aimbot.Text = "Aimbot [NW]"
Aimbot.TextColor3 = Color3.fromRGB(255, 255, 255)
Aimbot.TextSize = 20.000

UICorner_3.CornerRadius = UDim.new(0, 4)
UICorner_3.Parent = Aimbot

TextLabel.Parent = Main
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Size = UDim2.new(0, 67, 0, 32)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Zombo"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 20.000

ESP.Name = "ESP"
ESP.Parent = Main
ESP.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
ESP.Position = UDim2.new(0.67151767, 0, 0.125786185, 0)
ESP.Size = UDim2.new(0, 144, 0, 32)
ESP.Font = Enum.Font.SourceSans
ESP.Text = "ESP"
ESP.TextColor3 = Color3.fromRGB(255, 255, 255)
ESP.TextSize = 20.000

UICorner_4.CornerRadius = UDim.new(0, 4)
UICorner_4.Parent = ESP

-- Scripts:

local function TPDZGJ_fake_script() -- KillAura.LocalScript 
	local script = Instance.new('LocalScript', KillAura)

	script.Parent.MouseButton1Click:Connect(function()
		local LocalPlayer = game.Players.LocalPlayer
	
		getgenv().run_loopy_pls2 = true
	
		function is_within_distance(zombie, dist)
			if zombie:FindFirstChild("HumanoidRootPart") and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
				return (LocalPlayer.Character.HumanoidRootPart.Position - zombie.HumanoidRootPart.Position).Magnitude <= (dist or 30)
			end
			return false
		end
	
	
		while task.wait(.1) and run_loopy_pls2 do
			for i,v in pairs(workspace.Ignore.Zombies:GetChildren()) do
				if v and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and is_within_distance(v, 80) then
					game:GetService("ReplicatedStorage").Framework.Remotes.KnifeHitbox:FireServer(v.Humanoid)
				end
			end
		end
	end)
	
end
coroutine.wrap(TPDZGJ_fake_script)()
local function FWAOYWD_fake_script() -- Aimbot.LocalScript 
	local script = Instance.new('LocalScript', Aimbot)

	
end
coroutine.wrap(FWAOYWD_fake_script)()
local function DFFJACD_fake_script() -- ESP.LocalScript 
	local script = Instance.new('LocalScript', ESP)

	script.Parent.MouseButton1Click:Connect(function()
		while wait(.1) do
			for i,v in pairs(workspace.Ignore.Zombies:GetChildren()) do
				if v:IsA('Model') and v:FindFirstChild('Head') then
					local esp = Instance.new("Highlight")
					esp.Name = v.Name
					esp.FillTransparency = 0
					esp.FillColor = Color3.new(1, 0.666667, 0)
					esp.OutlineColor = Color3.new(1, 0.333333, 1)
					esp.OutlineTransparency = 0
					esp.Parent = v.Head
	
				end
			end
		end
	end)
end
coroutine.wrap(DFFJACD_fake_script)()
local function ERXAAS_fake_script() -- Main.Dragify 
	local script = Instance.new('LocalScript', Main)

	local UIS = game:GetService("UserInputService")
	function dragify(Frame)
	    dragToggle = nil
	    local dragSpeed = 0.50
	    dragInput = nil
	    dragStart = nil
	    local dragPos = nil
	    function updateInput(input)
	        local Delta = input.Position - dragStart
	        local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
	        game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.80), {Position = Position}):Play()
	    end
	    Frame.InputBegan:Connect(function(input)
	        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
	            dragToggle = true
	            dragStart = input.Position
	            startPos = Frame.Position
	            input.Changed:Connect(function()
	                if input.UserInputState == Enum.UserInputState.End then
	                    dragToggle = false
	                end
	            end)
	        end
	    end)
	    Frame.InputChanged:Connect(function(input)
	        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
	            dragInput = input
	        end
	    end)
	    game:GetService("UserInputService").InputChanged:Connect(function(input)
	        if input == dragInput and dragToggle then
	            updateInput(input)
	        end
	    end)
	end
	
	dragify(script.Parent)
end
coroutine.wrap(ERXAAS_fake_script)() 
