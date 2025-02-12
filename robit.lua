function firesound(soundid)
	local sound = Instance.new("Sound")
	sound.SoundId = "rbxassetid://"..soundid..""
	sound.Parent = game:GetService("SoundService")
	sound:Play()
end
if not game.Players.LocalPlayer:FindFirstChild("PlayerGui"):FindFirstChild("Loader") then
local Loader = Instance.new("ScreenGui")
local Load = Instance.new("Frame")
local LO = Instance.new("TextLabel")
local GO = Instance.new("TextLabel")
local BOt = Instance.new("Frame")
local Bar = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")
local Corner = Instance.new("Frame")
local GO_2 = Instance.new("TextLabel")
local LO_2 = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local UIGradient_2 = Instance.new("UIGradient")


Loader.Name = "Loader"
Loader.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Loader.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Loader.ResetOnSpawn = false

Load.Name = "Load"
Load.Parent = Loader
Load.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
Load.BorderColor3 = Color3.fromRGB(77, 77, 77)
Load.BorderSizePixel = 2
Load.Position = UDim2.new(0.442548364, 0, 0.476653695, 0)
Load.Size = UDim2.new(0, 100, 0, 62)

LO.Name = "LO"
LO.Parent = Load
LO.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LO.BackgroundTransparency = 1.000
LO.BorderColor3 = Color3.fromRGB(0, 0, 0)
LO.BorderSizePixel = 0
LO.Position = UDim2.new(0.100000001, 0, 0.249354705, 0)
LO.Size = UDim2.new(0, 35, 0, 30)
LO.Font = Enum.Font.SourceSansBold
LO.Text = "R"
LO.TextColor3 = Color3.fromRGB(255, 255, 255)
LO.TextSize = 50.000
LO.TextWrapped = true

GO.Name = "GO"
GO.Parent = Load
GO.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GO.BackgroundTransparency = 1.000
GO.BorderColor3 = Color3.fromRGB(0, 0, 0)
GO.BorderSizePixel = 0
GO.Position = UDim2.new(0, 35, 0, 18)
GO.Size = UDim2.new(0, 55, 0, 30)
GO.Font = Enum.Font.SourceSansBold
GO.Text = "exc"
GO.TextColor3 = Color3.fromRGB(255, 170, 0)
GO.TextSize = 40.000
GO.TextWrapped = true

BOt.Name = "BOt"
BOt.Parent = Load
BOt.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
BOt.BorderColor3 = Color3.fromRGB(77, 77, 77)
BOt.BorderSizePixel = 2
BOt.Position = UDim2.new(0.00254821777, 0, 0.992782593, 0)
BOt.Size = UDim2.new(0, 100, 0, 12)

Bar.Name = "Bar"
Bar.Parent = BOt
Bar.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
Bar.BorderColor3 = Color3.fromRGB(77, 77, 77)
Bar.BorderSizePixel = 0
Bar.Size = UDim2.new(0, 5, 0, 12)

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(95, 95, 95)), ColorSequenceKeypoint.new(0.51, Color3.fromRGB(85, 0, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
UIGradient.Rotation = 45
UIGradient.Parent = Load

Corner.Name = "Corner"
Corner.Parent = Loader
Corner.AnchorPoint = Vector2.new(0, 1)
Corner.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
Corner.BackgroundTransparency = 0.100
Corner.BorderColor3 = Color3.fromRGB(77, 77, 77)
Corner.BorderSizePixel = 2
Corner.Position = UDim2.new(0, 10, 1, -10)
Corner.Size = UDim2.new(0, 100, 0, 35)

GO_2.Name = "GO"
GO_2.Parent = Corner
GO_2.AnchorPoint = Vector2.new(0, 1)
GO_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GO_2.BackgroundTransparency = 1.000
GO_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
GO_2.BorderSizePixel = 0
GO_2.Position = UDim2.new(-0.0299999993, 34, 0.971428573, 0)
GO_2.Size = UDim2.new(0, 55, 0, 30)
GO_2.Font = Enum.Font.SourceSansBold
GO_2.Text = "exc"
GO_2.TextColor3 = Color3.fromRGB(255, 170, 0)
GO_2.TextSize = 35.000
GO_2.TextTransparency = 0.100
GO_2.TextWrapped = true

LO_2.Name = "LO"
LO_2.Parent = Corner
LO_2.AnchorPoint = Vector2.new(0, 1)
LO_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LO_2.BackgroundTransparency = 1.000
LO_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
LO_2.BorderSizePixel = 0
LO_2.Position = UDim2.new(0.0299999993, 10, 0.942857146, -2)
LO_2.Size = UDim2.new(0, 35, 0, 30)
LO_2.Font = Enum.Font.SourceSansBold
LO_2.Text = "R"
LO_2.TextColor3 = Color3.fromRGB(255, 255, 255)
LO_2.TextSize = 40.000
LO_2.TextTransparency = 0.100
LO_2.TextWrapped = true

UICorner.Parent = Corner

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(95, 95, 95)), ColorSequenceKeypoint.new(0.51, Color3.fromRGB(85, 0, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
UIGradient_2.Rotation = 45
UIGradient_2.Parent = Corner

-- Scripts:

local function BLNS_fake_script() -- Load.Drag 
	local script = Instance.new('LocalScript', Load)

	local frame = script.Parent
	local userInput = game:GetService("UserInputService")
	
	local dragging = false
	local dragStart
	local startPos
	
	frame.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = true
			dragStart = input.Position
			startPos = frame.Position
		end
	end)
	
	frame.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = false
		end
	end)
	
	userInput.InputChanged:Connect(function(input)
		if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
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
coroutine.wrap(BLNS_fake_script)()

Load.BackgroundTransparency = 1
BOt.BackgroundTransparency = 1
Bar.BackgroundTransparency = 1
LO.TextTransparency = 1
GO.TextTransparency = 1

firesound(5693220817) -- shine
for i = 1,0,-0.1 do
	Load.BackgroundTransparency = i
	BOt.BackgroundTransparency = i
	Bar.BackgroundTransparency = i
	LO.TextTransparency = i
	GO.TextTransparency = i
	wait()
end
firesound(3320590485) -- loading
for i = 0,25,math.random(0.1, 5) do
	Bar.Size = UDim2.new(0, i, 0, 12)
	wait()
end

wait(math.random(1, 5))
firesound(3320590485) -- loading
for i = 25,50,math.random(0.1, 5) do
	Bar.Size = UDim2.new(0, i, 0, 12)
	wait()
end

wait(math.random(1, 5))
firesound(3320590485) -- loading
for i = 50,75,math.random(0.1, 5) do
	Bar.Size = UDim2.new(0, i, 0, 12)
	wait()
end

wait(math.random(1, 5))
firesound(3320590485) -- loading
for i = 75,100,math.random(0.1, 5) do
	Bar.Size = UDim2.new(0, i, 0, 12)
	wait()
end

wait(math.random(1, 5))
firesound(2865227039) -- loaded
for i = 0,1,0.1 do
	Load.BackgroundTransparency = i
	BOt.BackgroundTransparency = i
	Bar.BackgroundTransparency = i
	LO.TextTransparency = i
	GO.TextTransparency = i
	wait()
end
Load:Destroy()
end

if not game.Players.LocalPlayer:FindFirstChild("PlayerGui"):FindFirstChild("RoBit") then
local RoBit = Instance.new("ScreenGui")
local Top = Instance.new("Frame")
local Middle = Instance.new("Frame")
local Executer = Instance.new("ScrollingFrame")
local Line = Instance.new("TextBox")
local Execute = Instance.new("TextButton")
local Clear = Instance.new("TextButton")
local Logs = Instance.new("TextButton")
local R = Instance.new("TextLabel")
local Close = Instance.new("TextButton")
local Minimize = Instance.new("TextButton")
local exc = Instance.new("TextLabel")
local Console = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local UIG = Instance.new("UIGradient")
local UIG1 = Instance.new("UIGradient")
local players = game:GetService("Players")
local plr = players.LocalPlayer
local foundremote = nil
local foundremotename = "None"
ssworks = false
function Destroy(instance)
	spawn(function()
    if foundremotename == "DeleteCar" then
			foundremote:FireServer(instance)

		elseif foundremotename == "DestroySegway" then
			foundremote:FireServer(instance, {Value = instance})

		elseif foundremotename == "GuiHandler" then
			foundremote:FireServer(false, instance)

		elseif foundremotename == "Building Tools" then
			local args = {
				[1] = "Remove",
				[2] = {
				    [1] = instance
				}
			}
			game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Building Tools").SyncAPI.ServerEndpoint:InvokeServer(unpack(args))
        end
		
	end)
end

for _, v in pairs(game:GetDescendants()) do
    if v:IsA("RemoteEvent") or v:IsA("RemoteFuntion") then
		if v.Name == "DeleteCar" or v.Name == "GuiHandler" or v.Name == "DestroySegway" then
			foundremote = v
            foundremotename = v.Name
            ssworks = true
		end
	end
end
if plr.Backpack:FindFirstChild("Building Tools") then
    foundremotename = "Building Tools"
    ssworks = true
end

local function getPlr(str)
	for i,v in pairs(players:GetPlayers()) do
		if v.Name:lower():match(str) or v.DisplayName:lower():match(str) then
			return v
		end
	end
	return str
end

RoBit.Name = "RoBit"
RoBit.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
RoBit.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
RoBit.ResetOnSpawn = false

Top.Name = "Top"
Top.Parent = RoBit
Top.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
Top.BorderColor3 = Color3.fromRGB(77, 77, 77)
Top.BorderSizePixel = 2
Top.Position = UDim2.new(0.341296941, 0, 0.346303493, 0)
Top.Size = UDim2.new(0, 278, 0, 20)

Middle.Name = "Middle"
Middle.Parent = Top
Middle.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
Middle.BorderColor3 = Color3.fromRGB(77, 77, 77)
Middle.BorderSizePixel = 2
Middle.Position = UDim2.new(-0.000429661159, 0, 0.996304333, 0)
Middle.Size = UDim2.new(0, 278, 0, 158)

Executer.Name = "Executer"
Executer.Parent = Middle
Executer.Active = true
Executer.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
Executer.BorderColor3 = Color3.fromRGB(77, 77, 77)
Executer.BorderSizePixel = 2
Executer.Position = UDim2.new(0.0179856122, 0, 0.03164557, 0)
Executer.Size = UDim2.new(0, 268, 0, 120)
Executer.CanvasSize = UDim2.new(150, 0, 150, 0)
Executer.ScrollBarThickness = 4

Line.Name = "Line"
Line.Parent = Executer
Line.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
Line.BorderColor3 = Color3.fromRGB(21, 21, 21)
Line.BorderSizePixel = 4
Line.Size = UDim2.new(10, 0, 10, 0)
Line.ClearTextOnFocus = false
Line.Font = Enum.Font.Code
Line.MultiLine = true
Line.PlaceholderColor3 = Color3.fromRGB(125, 125, 125)
Line.PlaceholderText = "-- Robit Executer"
Line.Text = ""
Line.TextColor3 = Color3.fromRGB(255, 255, 255)
Line.TextSize = 12.000
Line.TextWrapped = true
Line.TextXAlignment = Enum.TextXAlignment.Left
Line.TextYAlignment = Enum.TextYAlignment.Top

Execute.Name = "Execute"
Execute.Parent = Middle
Execute.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
Execute.BorderColor3 = Color3.fromRGB(77, 77, 77)
Execute.BorderSizePixel = 2
Execute.Position = UDim2.new(0.0179999992, 0, 0.829999983, 0)
Execute.Size = UDim2.new(0, 68, 0, 22)
Execute.Font = Enum.Font.SourceSansBold
Execute.Text = "Execute"
Execute.TextColor3 = Color3.fromRGB(255, 255, 255)
Execute.TextSize = 14.000

Clear.Name = "Clear"
Clear.Parent = Middle
Clear.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
Clear.BorderColor3 = Color3.fromRGB(77, 77, 77)
Clear.BorderSizePixel = 2
Clear.Position = UDim2.new(0.733827233, 0, 0.830000103, 0)
Clear.Size = UDim2.new(0, 68, 0, 22)
Clear.Font = Enum.Font.SourceSansBold
Clear.Text = "Clear"
Clear.TextColor3 = Color3.fromRGB(255, 255, 255)
Clear.TextSize = 14.000

Logs.Name = "Logs"
Logs.Parent = Middle
Logs.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
Logs.BorderColor3 = Color3.fromRGB(77, 77, 77)
Logs.BorderSizePixel = 2
Logs.Position = UDim2.new(0.280589908, 0, 0.874303877, 0)
Logs.Size = UDim2.new(0, 120, 0, 15)
Logs.Font = Enum.Font.SourceSansBold
Logs.Text = "Logs"
Logs.TextColor3 = Color3.fromRGB(255, 255, 255)
Logs.TextSize = 14.000

UIG.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(95, 95, 95)), ColorSequenceKeypoint.new(0.51, Color3.fromRGB(85, 0, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
UIG.Rotation = 90
UIG.Parent = Middle

R.Name = "R"
R.Parent = Top
R.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
R.BackgroundTransparency = 1.000
R.BorderColor3 = Color3.fromRGB(0, 0, 0)
R.BorderSizePixel = 0
R.Size = UDim2.new(0, 18, 0, 19)
R.Font = Enum.Font.SourceSansBold
R.Text = "R"
R.TextColor3 = Color3.fromRGB(255, 255, 255)
R.TextSize = 24.000
R.TextWrapped = true
R.TextYAlignment = Enum.TextYAlignment.Bottom

Close.Name = "Close"
Close.Parent = Top
Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Close.BackgroundTransparency = 1.000
Close.BorderColor3 = Color3.fromRGB(0, 0, 0)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.935251772, 0, 0.0500000007, 0)
Close.Size = UDim2.new(0, 17, 0, 17)
Close.Font = Enum.Font.SourceSansBold
Close.Text = "x"
Close.TextColor3 = Color3.fromRGB(255, 255, 255)
Close.TextSize = 20.000
Close.TextYAlignment = Enum.TextYAlignment.Bottom

Minimize.Name = "Minimize"
Minimize.Parent = Top
Minimize.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Minimize.BackgroundTransparency = 1.000
Minimize.BorderColor3 = Color3.fromRGB(0, 0, 0)
Minimize.BorderSizePixel = 0
Minimize.Position = UDim2.new(0.874100745, 0, 0.0500000007, 0)
Minimize.Size = UDim2.new(0, 17, 0, 17)
Minimize.Font = Enum.Font.SourceSansBold
Minimize.Text = "-"
Minimize.TextColor3 = Color3.fromRGB(255, 255, 255)
Minimize.TextSize = 20.000
Minimize.TextYAlignment = Enum.TextYAlignment.Bottom

exc.Name = "exc"
exc.Parent = Top
exc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
exc.BackgroundTransparency = 1.000
exc.BorderColor3 = Color3.fromRGB(0, 0, 0)
exc.BorderSizePixel = 0
exc.Position = UDim2.new(0, 15, 0, 0)
exc.Size = UDim2.new(0, 37, 0, 19)
exc.Font = Enum.Font.SourceSansBold
exc.Text = "exc"
exc.TextColor3 = Color3.fromRGB(255, 170, 0)
exc.TextSize = 20.000
exc.TextWrapped = true
exc.TextXAlignment = Enum.TextXAlignment.Left
exc.TextYAlignment = Enum.TextYAlignment.Bottom

Console.Name = "Console"
Console.Parent = Top
Console.Active = true
Console.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
Console.BorderColor3 = Color3.fromRGB(77, 77, 77)
Console.BorderSizePixel = 2
Console.Position = UDim2.new(0, 0, 8.85000038, 0)
Console.Size = UDim2.new(0, 278, 0, 72)

UIListLayout.Parent = Console
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 1)

UIG1.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(95, 95, 95)), ColorSequenceKeypoint.new(0.51, Color3.fromRGB(85, 0, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
UIG1.Parent = Top

Console.Visible = false

-- Scripts:

local function CZNXFPC_fake_script() -- Execute.Script 
	local script = Instance.new('Script', Execute)

	function onClicked(GUI)
	    local inputText = Line.Text
	    local extText = string.match(inputText, 'destroy%(%"(.-)%"%)')
	    local extText1 = string.match(inputText, 'print%(%"(.-)%"%)')
	    firesound(15675032796) -- click
	    if extText then
	    	if ssworks == true then
	    		Destroy(getPlr(extText))
	    		SendLog("Destroying Object...", Color3.fromRGB(0, 255, 0))
	    	else
	    		SendLog("Failed To Find Remotes Try A Different Game.", Color3.fromRGB(255, 0, 0))
	    	end
	    elseif extText1 then
	    loadstring(inputText)()
	    	SendLog(extText1, Color3.fromRGB(255, 255, 255))
	    else
	    	loadstring(inputText)()
	    	SendLog("Executing Line Text.", Color3.fromRGB(125, 125, 125))
	    end
	end
	script.Parent.MouseButton1Click:connect(onClicked)
end
coroutine.wrap(CZNXFPC_fake_script)()
local function TJSUSG_fake_script() -- Clear.Script 
	local script = Instance.new('Script', Clear)

	function onClicked(GUI)
	firesound(15675032796) -- click
		Line.Text = ""
		SendLog("Clearing Local Line.", Color3.fromRGB(125, 125, 125))
	end
	script.Parent.MouseButton1Click:connect(onClicked)
end
coroutine.wrap(TJSUSG_fake_script)()
local function MXVL_fake_script() -- Logs.Script 
	local script = Instance.new('Script', Logs)

	function onClicked(GUI)
	firesound(15675032796) -- click
		if Console.Visible == true then
			Console.Visible = false
		else
			Console.Visible = true
		end
	end
	script.Parent.MouseButton1Click:connect(onClicked)
end
coroutine.wrap(MXVL_fake_script)()
local function JUKYF_fake_script() -- Close.Script 
	local script = Instance.new('Script', Close)

	function onClicked(GUI)
	firesound(15675032796) -- click
		RoBit:Destroy()
	end
	script.Parent.MouseButton1Click:connect(onClicked)
end
coroutine.wrap(JUKYF_fake_script)()
local function RMNNMF_fake_script() -- Minimize.Script 
	local script = Instance.new('Script', Minimize)

	function onClicked(GUI)
	firesound(15675032796) -- click
		Console.Visible = false
		if Middle.Visible == true then
			Middle.Visible = false
		else
			Middle.Visible = true
		end
	end
	script.Parent.MouseButton1Click:connect(onClicked)
end
coroutine.wrap(RMNNMF_fake_script)()
local function OZDMO_fake_script() -- Console.Script 
	local script = Instance.new('Script', Console)

	local scrollingFrame = script.Parent 
	local listLayout = scrollingFrame:FindFirstChildOfClass("UIListLayout") 
	local function updateCanvasSize()
		local itemCount = #scrollingFrame:GetChildren() - 1 
		local newSize = UDim2.new(0, 0, 2.5 + (math.floor(itemCount / 5) * 2), 0)
		scrollingFrame.CanvasSize = newSize
	end
	
	scrollingFrame.ChildAdded:Connect(updateCanvasSize)
	scrollingFrame.ChildRemoved:Connect(updateCanvasSize)
	
	updateCanvasSize()
	
end
coroutine.wrap(OZDMO_fake_script)()
local function MTWWXFM_fake_script() -- Top.DragScript 
	local script = Instance.new('LocalScript', Top)

	local frame = script.Parent
	local userInput = game:GetService("UserInputService")
	
	local dragging = false
	local dragStart
	local startPos
	
	frame.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = true
			dragStart = input.Position
			startPos = frame.Position
			--input.MouseIconEnable = false
		end
	end)
	
	frame.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = false
		end
	end)
	
	userInput.InputChanged:Connect(function(input)
		if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
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
coroutine.wrap(MTWWXFM_fake_script)()
function SendLog(msg, color)
	local TextLabel = Instance.new("TextLabel")
	TextLabel.Parent = Console
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.BorderSizePixel = 0
	TextLabel.Size = UDim2.new(0, 278, 0, 10)
	TextLabel.Font = Enum.Font.Code
	TextLabel.TextColor3 = color
	TextLabel.TextSize = 12.000
	TextLabel.Text = msg
end
end