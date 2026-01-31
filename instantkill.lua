local KillGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local MainFrame_UIS = Instance.new("UIStroke")
local TopBar = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local TextInput = Instance.new("TextBox")
local TextInput_UIS = Instance.new("UIStroke")
local KillButton = Instance.new("TextButton")
local KillButton_UIS = Instance.new("UIStroke")

--Properties:

KillGui.Name = "KillGui"
KillGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
KillGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
KillGui.ResetOnSpawn = false

MainFrame.Name = "MainFrame"
MainFrame.Parent = KillGui
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
MainFrame.Size = UDim2.new(0, 225, 0, 100)

MainFrame_UIS.Name = "MainFrame_UIS"
MainFrame_UIS.Parent = MainFrame
MainFrame_UIS.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
MainFrame_UIS.Color = Color3.fromRGB(0, 0, 0)
MainFrame_UIS.Thickness = 3
MainFrame_UIS.Transparency = 0.4

TopBar.Name = "TopBar"
TopBar.Parent = MainFrame
TopBar.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
TopBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
TopBar.BorderSizePixel = 0
TopBar.Size = UDim2.new(1, 0, 0, 10)

Title.Name = "Title"
Title.Parent = MainFrame
Title.AnchorPoint = Vector2.new(0.5, 0)
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.5, 0, 0, 15)
Title.Size = UDim2.new(0, 100, 0, 20)
Title.Font = Enum.Font.SourceSans
Title.Text = "Instant Death"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 14.000

TextInput.Name = "TextInput"
TextInput.Parent = MainFrame
TextInput.AnchorPoint = Vector2.new(0.5, 0)
TextInput.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
TextInput.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextInput.BorderSizePixel = 0
TextInput.Position = UDim2.new(0.5, 0, 0, 40)
TextInput.Size = UDim2.new(0, 200, 0, 20)
TextInput.Font = Enum.Font.SourceSans
TextInput.PlaceholderText = "Enter Username or Display Name"
TextInput.Text = ""
TextInput.TextColor3 = Color3.fromRGB(255, 255, 255)
TextInput.TextSize = 14.000

TextInput_UIS.Name = "TextInput_UIS"
TextInput_UIS.Parent = TextInput
TextInput_UIS.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
TextInput_UIS.Color = Color3.fromRGB(35, 35, 35)
TextInput_UIS.Thickness = 3
TextInput_UIS.Transparency = 0.4

KillButton.Name = "KillButton"
KillButton.Parent = MainFrame
KillButton.AnchorPoint = Vector2.new(0.5, 0)
KillButton.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
KillButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
KillButton.BorderSizePixel = 0
KillButton.Position = UDim2.new(0.5, 0, 0, 70)
KillButton.Size = UDim2.new(0, 100, 0, 20)
KillButton.Font = Enum.Font.SourceSans
KillButton.Text = "Kill"
KillButton.TextColor3 = Color3.fromRGB(255, 255, 255)
KillButton.TextSize = 14.000

KillButton_UIS.Name = "KillButton_UIS"
KillButton_UIS.Parent = KillButton
KillButton_UIS.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
KillButton_UIS.Color = Color3.fromRGB(255, 75, 75)
KillButton_UIS.Thickness = 3
KillButton_UIS.Transparency = 0.3

-- Scripts:

local function YMHKJ_fake_script() -- MainFrame.FrameDrag 
	local frame = script.Parent
	local userInput = game:GetService("UserInputService")

	local dragging = false
	local dragStart
	local startPos

	-- Combined input types for PC and Mobile
	local inputTypes = {
		Enum.UserInputType.MouseButton1,
		Enum.UserInputType.Touch
	}

	local function isSupportedInput(input)
		for _, inputType in pairs(inputTypes) do
			if input.UserInputType == inputType then
				return true
			end
		end
		return false
	end

	frame.InputBegan:Connect(function(input)
		if isSupportedInput(input) then
			dragging = true
			dragStart = input.Position
			startPos = frame.Position

			-- Handles touch state tracking to ensure it doesn't "stick"
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	userInput.InputChanged:Connect(function(input)
		if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
			local delta = input.Position - dragStart
			frame.Position = UDim2.new(
				startPos.X.Scale,
				startPos.X.Offset + delta.X,
				startPos.Y.Scale,
				startPos.Y.Offset + delta.Y
			)
		end
	end)
end
coroutine.wrap(YMHKJ_fake_script)()
function notice(title, msg)
	game:GetService("StarterGui"):SetCore("SendNotification", {
		Title = title,
		Text = msg,
		Duration = 15,
	})
	
end
local players = game:GetService("Players")
local plr = players.LocalPlayer
function getChar()
	return plr.Character
end
function getBp()
	return plr.Backpack
end
function getPlr(str)
	local targetss = {}
	str = str:lower()

	for _, v in pairs(players:GetPlayers()) do
		if v.Name:lower():match(str) or v.DisplayName:lower():match(str) then
			return {v} -- Return as a table
		end
	end
	return {} -- Return empty table if no match
end
local objectStates = {}

function Firetouchinterest(object1, object2, touch)
	if not object1 then 
		task.wait() 
		error("Sending A firetouchinterest With An Invalid Value: object1") 
		return 
	end
	if not object2 then 
		task.wait() 
		error("Sending A firetouchinterest With An Invalid Value: object2") 
		return 
	end
	if touch == 0 then 
		objectStates[object1] = {
			CFrame = object1.CFrame,
			CanCollide = object1.CanCollide
		}
		object1.CFrame = object2.CFrame
		object1.CanCollide = false
		task.wait()
		return

	elseif touch == 1 then
		local savedState = objectStates[object1]
		if savedState then
			object1.CFrame = savedState.CFrame
			object1.CanCollide = savedState.CanCollide
			objectStates[object1] = nil 
		end

		task.wait()
		return

	else 
		error("Sending A firetouchinterest With An Invalid Number: " .. tostring(touch))
		return
	end
end

function enableToolAnim()
	local animate = plr.Character.Animate
	if not animate:FindFirstChild("PlayEmote") then
		local PlayEmote = Instance.new("BindableFunction")
		PlayEmote.Name = "PlayEmote"
		PlayEmote.Parent = animate
	end
	animate.Disabled = true
	animate.Disabled = false
end

-- Disable tool animations
function disableToolAnim()
	local animate = plr.Character.Animate
	if not animate:FindFirstChild("PlayEmote") then
		enableToolAnim()
	end
	animate.PlayEmote:Destroy()
	animate.Disabled = true
	animate.Disabled = false
end

function stopsoundinobj(obje)
	for _, v in pairs(obje:GetDescendants()) do
		if v:IsA("Sound") then
			v.Playing = false
			v:Stop()
		end
	end
end

function kill(target)
	repeat task.wait() until target.Character and not target.Character:FindFirstChild("ForceField")
	
	local tool = getBp():FindFirstChildOfClass("Tool") or getChar():FindFirstChildOfClass("Tool")
	if not tool or not tool:FindFirstChild("Handle") then notice("Warning", "Failed Your Player Has No Tool") task.wait() return end
	
	if getChar():FindFirstChild("Humanoid").Sit then notice("Warning", "Failed Your Player Is Sitting") task.wait() return end
	if target.Character:FindFirstChild("Humanoid").Health <= 0 or getChar():FindFirstChild("Humanoid").Health <= 0 or target.Character:FindFirstChild("HumanoidRootPart") == nil then task.wait() return end
	if getChar():FindFirstChild("Humanoid").Health <= 0 then notice("Warning", "Failed Your Player Is Dead") task.wait() return end
	local originalGrip = tool.Grip
	local originalShape = tool.Handle.Shape
	local originalSize = tool.Handle.Size
	local toolGUI
	for _, v in pairs(game:GetService("CoreGui"):FindFirstChild("RobloxGui"):FindFirstChild("Backpack"):FindFirstChild("Hotbar"):GetDescendants()) do
		if v:FindFirstChild("ToolName") and v:FindFirstChild("ToolName") ~= nil and v:FindFirstChild("ToolName").Text == tool.Name then
			toolGUI = v
		end
	end
	tool.Handle.Massless = true
	tool.Grip = CFrame.new(0, 5774, 0)
	tool.Handle.Shape = "Ball"
	tool.Handle.Size = Vector3.new(10,10,10)
	disableToolAnim()
	tool.Parent = getChar()
	toolGUI:FindFirstChild("Equipped").Visible = false
	stopsoundinobj(tool.Handle)
	tool.Enabled = false
	repeat 
		if not target.Character or target.Character.Humanoid.Health <= 0 or getChar().Humanoid.Health <= 0 or not target.Character:FindFirstChild("HumanoidRootPart") then break end
		Firetouchinterest(target.Character:FindFirstChild("HumanoidRootPart"), tool:FindFirstChild("Handle"), 0)
		Firetouchinterest(target.Character:FindFirstChild("HumanoidRootPart"), tool:FindFirstChild("Handle"), 1)
	until target.Character.Humanoid.Health <= 0 or getChar().Humanoid.Health <= 0
	tool.Enabled = true
	stopsoundinobj(tool.Handle)
	tool.Handle.Shape = originalShape
	tool.Handle.Size = originalSize
	enableToolAnim()
	toolGUI:FindFirstChild("Equipped").Visible = true
	stopsoundinobj(tool.Handle)
	getChar():FindFirstChildOfClass("Humanoid"):UnequipTools()
	tool.Grip = originalGrip
end
function firesound(soundid)
	local sound = Instance.new("Sound")
	sound.SoundId = "rbxassetid://"..soundid..""
	sound.Parent = game:GetService("SoundService")
	sound:Play()
end
TextInput:GetPropertyChangedSignal("Text"):Connect(function()
	firesound(15675032796) 
end)
local function ButtonRuntimeWrap() -- MainFrame.FrameDrag 
	local script = Instance.new('LocalScript', KillButton)

	local button = script.Parent
	
	button.MouseButton1Click:Connect(function()
		local target = getPlr(TextInput.Text):lower()
		for i,v in pairs(target)do
			if #target == 0 then return end
			kill(v)
			if v.Character.Humanoid.Health <= 0 then 
				notice("Killed","Killed "..v.Name..".")
			elseif v.Character.Humanoid.Health >= 1 then
				notice("Failed","Failed "..v.Name.." Did Not Die")
			end
		end
	end)
end
coroutine.wrap(ButtonRuntimeWrap)()
