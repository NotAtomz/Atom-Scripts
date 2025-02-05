-- made with dex link: https://rawscripts.net/raw/Universal-Script-Dex-explorer-fe-that-support-many-executors-22929
print("script executed")
if not game:IsLoaded() then
	print("Waiting For Game To Load")
	game.Loaded:Wait()
end
print("game loaded executing atomic v2")
local Admin = Instance.new("ScreenGui")
local Commands = Instance.new("Frame")
local Scroll = Instance.new("Frame")
local Lists = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local Title = Instance.new("TextLabel")
local CommandBar = Instance.new("Frame")
local FocusBar = Instance.new("TextBox")
local UnderBar = Instance.new("TextLabel")
local Settings = Instance.new("Frame")
local Stuff = Instance.new("Frame")
local thing = Instance.new("TextLabel")
local prefixlabel = Instance.new("TextLabel")
local StopEverything = Instance.new("TextButton")
local Title_2 = Instance.new("TextLabel")
local AtomLoader = Instance.new("Frame")
local LoaderText = Instance.new("Frame")
local Logo = Instance.new("TextLabel")
local Logo2 = Instance.new("TextLabel")
local TextOnLoader = Instance.new("TextLabel")
local LoadingBar = Instance.new("Frame")
local BarToFinish = Instance.new("Frame")
local R = Instance.new("TextBox")
local G = Instance.new("TextBox")
local B = Instance.new("TextBox")
local red = Instance.new("TextLabel")
local green = Instance.new("TextLabel")
local blue = Instance.new("TextLabel")
local SetBackground = Instance.new("TextButton")

local players = game:GetService("Players")
local plr = players.LocalPlayer
local tws = game:GetService('TweenService')
local admins = {}
local connections = {} 
local owners = {}
local protected = {}
local tweeninfo = TweenInfo.new(1,Enum.EasingStyle.Linear)
RunService = game:GetService("RunService")
lplayer = game:GetService("Players").LocalPlayer
prefix = ";"
ssworks = false
inmicup = false
autoro = false
rbb = false
Lagging = false
invisRunning = false
scriptunloaded = false
local ranremotecheck = false
local foundremote = nil
local foundremotename = "None"
local nc = false
local ncLoop
ncLoop = game:GetService("RunService").Stepped:Connect(function()
	if nc and getChar() ~= nil then
		for _, v in pairs(getChar():GetDescendants()) do
			if v:IsA("BasePart") and v.CanCollide == true then
				v.CanCollide = false
			end
		end
	end
end)
-- Roblox Patches --
game:GetService("CoreGui"):FindFirstChild("RobloxGui"):FindFirstChild("NotificationFrame").Position = UDim2.new(1, -215, 0.5, 0)
game:GetService("TextChatService"):FindFirstChild("BubbleChatConfiguration").BackgroundTransparency = 1
game:GetService("TextChatService"):FindFirstChild("BubbleChatConfiguration").TextSize = 24
game:GetService("TextChatService"):FindFirstChild("BubbleChatConfiguration").TextColor3 = Color3.fromRGB(255,255,255)
-- End Of Roblox Patches
-- Functions --
function firesound(soundid)
	local sound = Instance.new("Sound")
	sound.SoundId = "rbxassetid://"..soundid..""
	sound.Parent = game:GetService("SoundService")
	sound:Play()
end
function tpbypass(v)
	if plr.Character and plr.Character:FindFirstChild('HumanoidRootPart') then
		local cf = v.Character.Humanoid.RootPart.CFrame
		local a = tws:Create(plr.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
		a:Play()
	end
end
function touch(Toucher,TouchThis)
    local lastthispos = TouchThis.Position
    local lastthisrot = TouchThis.Rotation
    firetouchinterest(Toucher,TouchThis,0) 
    firetouchinterest(Toucher,TouchThis,1)
    wait(0.2)
    TouchThis.Position = lastthispos
    TouchThis.Rotation = lastthisrot
end
local function getChar()
	return plr.Character
end
local function getBp()
	return plr.Backpack
end
local function replacechar()
	local c = plr.Character
	plr.Character = nil
	plr.Character = c
end

local function getPlr(str)
local targetss = {}
	for i,v in pairs(players:GetPlayers()) do
		if v.Name:lower():match(str) or v.DisplayName:lower():match(str) then
			return v
        end
		if str == "me" or str == "self" then
			return plr
        end
		if str == "all" or str == "everyone" then
			return players:GetPlayers()
        end
		if str == "others" then
			targetss = players:GetPlayers()
			table.remove(targetss, 1)
			return targets
        end
		if str == "random" then
			return {players:GetPlayers()[math.random(1,#players:GetPlayers())]}
		end
	end
    return plr
end
function anchor()
	local cr = plr.Character
	for _, part in next, cr:GetDescendants() do
		if part:IsA("Part") then
			part.Anchored = true
		end
	end
end
function disableatoolnim()
	plr.Character.Animate.PlayEmote:Destroy()
	plr.Character.Animate.Disabled = true
	plr.Character.Animate.Disabled = false
end
function enabletoolanim()
	local PlayEmote = Instance.new("BindableFunction")
	PlayEmote.Name = "PlayEmote"
	PlayEmote.Parent = plr.Character.Animate
	plr.Character.Animate.Disabled = true
	plr.Character.Animate.Disabled = false
end
function reset()
	local HumanoidBackUp = Instance.new("Humanoid")
	HumanoidBackUp.Parent = plr.Character
	HumanoidBackUp.Name = "Humanoid"
	wait()
	plr.Character["Humanoid"].Health = -10000
	wait()
	plr.Character["Humanoid"].Health = 10000
	wait()
	plr.Character["Humanoid"].Health = -10000
end
local function replacehum()
	local h = plr.Character:FindFirstChild("Humanoid"):Clone()
	plr.Character:FindFirstChild("Humanoid"):Destroy()
	h.Parent = plr.Character
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
if game:GetService("ReplicatedStorage"):FindFirstChild("Building Tools") then
    foundremotename = "Building Tools"
    ssworks = true
end
for _, v in pairs(game:GetDescendants()) do
    if v:IsA("RemoteEvent") or v:IsA("RemoteFuntion") then
		if v.Name == "UpdateBoothText" or v.Name == "DeleteBoothOwnership" then
			inmicup = true
		end
	end
end
function Chat(Message)
	if game:GetService("ReplicatedStorage"):FindFirstChild("DefaultChatSystemChatEvents") then
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(Message, "All")
	else
		game:GetService("TextChatService"):FindFirstChild("TextChannels"):FindFirstChild("RBXGeneral"):SendAsync(Message)
	end
end
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
function FindInTable(tbl,val)
	if tbl == nil then return false end
	for _,v in pairs(tbl) do
		if v == val then return true end
	end 
	return false
end
local slockk = false
local banned = {}
players.PlayerAdded:connect(function(target)
	if slockk then
		Destroy(target)
		game.StarterGui:SetCore("ChatMakeSystemMessage", {
			Text = ("A Player Attempted To Join While Slocked / Server Locked Name: "..target.Name.."");
			Font = Enum.Font.SourceSansBold;
			Color = Color3.fromRGB(25, 25, 25);
		})
	end
	if FindInTable(banned, target.UserId) then
		Destroy(target)
		game.StarterGui:SetCore("ChatMakeSystemMessage", {
			Text = ("A Player Attempted To Join While Banned Name: "..target.Name.."");
			Font = Enum.Font.SourceSansBold;
			Color = Color3.fromRGB(255, 0, 0);
		})
	end
end)
function stopsoundinobj(obje)
for _, v in pairs(obje:GetDescendants()) do
    if v:IsA("Sound") then
		v.Playing = false
	end
end
end
function notice(msg)
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Notice",
    Text = msg,
    Duration = 10,
    Button1 = "Dismiss",
    Callback = function() end
})
wait()
local noticgui = game:GetService("CoreGui"):FindFirstChild("RobloxGui"):FindFirstChild("NotificationFrame"):FindFirstChild("Notification")
noticgui.BackgroundTransparency = 0
noticgui.BackgroundColor3 = Color3.fromRGB(14, 14, 14)
noticgui.BorderColor3 = Color3.fromRGB(24, 24, 24)
noticgui.BorderSizePixel = 6
noticgui:FindFirstChild("NotificationTitle").Position = UDim2.new(0, 8, 0.5, -28)
noticgui:FindFirstChild("NotificationText").Position = UDim2.new(0, 8, 0.5, -10)
noticgui:FindFirstChild("Button1").Position = UDim2.new(0, 0, 1, 5)
noticgui:FindFirstChild("Button1").BackgroundTransparency = 0
noticgui:FindFirstChild("Button1").BackgroundColor3 = Color3.fromRGB(14, 14, 14)
noticgui:FindFirstChild("Button1").BorderColor3 = Color3.fromRGB(24, 24, 24)
noticgui:FindFirstChild("Button1").BorderSizePixel = 6
noticgui.Name = "Noticed"
firesound(1544910054)
end
function noticenotbutton(msg)
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Notice",
    Text = msg,
    Duration = 10,
})
wait()
local noticgui = game:GetService("CoreGui"):FindFirstChild("RobloxGui"):FindFirstChild("NotificationFrame"):FindFirstChild("Notification")
noticgui.BackgroundTransparency = 0
noticgui.BackgroundColor3 = Color3.fromRGB(14, 14, 14)
noticgui.BorderColor3 = Color3.fromRGB(24, 24, 24)
noticgui.BorderSizePixel = 6
noticgui:FindFirstChild("NotificationTitle").Position = UDim2.new(0, 8, 0.5, -28)
noticgui:FindFirstChild("NotificationText").Position = UDim2.new(0, 8, 0.5, -10)
noticgui.Name = "Noticed"
firesound(1544910054)
end
-- End Of Functions --

Admin.Name = "Admin"
Admin.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Admin.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Admin.ResetOnSpawn = false

Commands.Name = "Commands"
Commands.Parent = Admin
Commands.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
--Commands.BackgroundTransparency = 0.400
Commands.BorderColor3 = Color3.fromRGB(0, 0, 0)
Commands.BorderSizePixel = 0
Commands.Position = UDim2.new(0.438, 0, 0.293774307, 0)
Commands.Size = UDim2.new(0, 169, 0, 212)
Commands.Visible = false

Scroll.Name = "Scroll"
Scroll.Parent = Commands
Scroll.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
Scroll.BackgroundTransparency = 0.400
Scroll.BorderColor3 = Color3.fromRGB(0, 0, 0)
Scroll.BorderSizePixel = 0
Scroll.Position = UDim2.new(0.0355798863, 0, 0.0858489722, 0)
Scroll.Size = UDim2.new(0, 155, 0, 186)

Lists.Name = "Lists"
Lists.Parent = Scroll
Lists.Active = true
Lists.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Lists.BackgroundTransparency = 1.000
Lists.BorderColor3 = Color3.fromRGB(0, 0, 0)
Lists.BorderSizePixel = 0
Lists.Position = UDim2.new(0, 0, 0.0387097448, 0)
Lists.Size = UDim2.new(0, 155, 0, 171)
Lists.ScrollBarThickness = 5
Lists.CanvasSize = UDim2.new(0, 0, 8.5, 0)
Lists.ScrollBarImageTransparency = 1

UIListLayout.Parent = Lists
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.Padding = UDim.new(0, 2)

Title.Name = "Title"
Title.Parent = Commands
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Size = UDim2.new(0, 169, 0, 19)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "Atomic V2 | Commands"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 15.000

CommandBar.Name = "CommandBar"
CommandBar.Parent = Admin
CommandBar.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
CommandBar.BackgroundTransparency = 0.400
CommandBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
CommandBar.BorderSizePixel = 0
CommandBar.Position = UDim2.new(0.413, 0, 0.782101154, 0)
CommandBar.Size = UDim2.new(0, 236, 0, 33)
CommandBar.Visible = false

FocusBar.Name = "FocusBar"
FocusBar.Parent = CommandBar
FocusBar.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
FocusBar.BackgroundTransparency = 0.400
FocusBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
FocusBar.BorderSizePixel = 0
FocusBar.Position = UDim2.new(0.0254237279, 0, 0.181818187, 0)
FocusBar.Size = UDim2.new(0, 224, 0, 21)
FocusBar.Font = Enum.Font.SourceSans
FocusBar.PlaceholderText = "Enter A Command"
FocusBar.Text = ""
FocusBar.TextColor3 = Color3.fromRGB(255, 255, 255)
FocusBar.TextSize = 14.000
FocusBar.TextWrapped = true

UnderBar.Name = "UnderBar"
UnderBar.Parent = CommandBar
UnderBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UnderBar.BackgroundTransparency = 1.000
UnderBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
UnderBar.BorderSizePixel = 0
UnderBar.Position = UDim2.new(0, 0, 1, 0)
UnderBar.Size = UDim2.new(0, 235, 0, 30)
UnderBar.Font = Enum.Font.SourceSans
UnderBar.Text = "Atomic Admin  [ Version 2 ]"
UnderBar.TextColor3 = Color3.fromRGB(255, 255, 255)
UnderBar.TextSize = 14.000
UnderBar.TextYAlignment = Enum.TextYAlignment.Top

Settings.Name = "Settings"
Settings.Parent = Admin
Settings.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
--Settings.BackgroundTransparency = 0.400
Settings.BorderColor3 = Color3.fromRGB(0, 0, 0)
Settings.BorderSizePixel = 0
Settings.Position = UDim2.new(0.438, 0, 0.293774307, 0)
Settings.Size = UDim2.new(0, 169, 0, 212)
Settings.Visible = false

Stuff.Name = "Stuff"
Stuff.Parent = Settings
Stuff.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
Stuff.BackgroundTransparency = 0.400
Stuff.BorderColor3 = Color3.fromRGB(0, 0, 0)
Stuff.BorderSizePixel = 0
Stuff.Position = UDim2.new(0.0355798863, 0, 0.0858489722, 0)
Stuff.Size = UDim2.new(0, 155, 0, 186)

thing.Name = "thing"
thing.Parent = Stuff
thing.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
thing.BackgroundTransparency = 1.000
thing.BorderColor3 = Color3.fromRGB(0, 0, 0)
thing.BorderSizePixel = 0
thing.Position = UDim2.new(0, 0, 0.03763441, 0)
thing.Size = UDim2.new(0, 62, 0, 23)
thing.Font = Enum.Font.SourceSans
thing.Text = "Prefix"
thing.TextColor3 = Color3.fromRGB(255, 255, 255)
thing.TextSize = 14.000

prefixlabel.Name = "prefixlabel"
prefixlabel.Parent = Stuff
prefixlabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
prefixlabel.BackgroundTransparency = 1.000
prefixlabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
prefixlabel.BorderSizePixel = 0
prefixlabel.Position = UDim2.new(0.600000024, 0, 0.03763441, 0)
prefixlabel.Size = UDim2.new(0, 62, 0, 23)
prefixlabel.Font = Enum.Font.SourceSans
prefixlabel.Text = prefix
prefixlabel.TextColor3 = Color3.fromRGB(255, 255, 255)
prefixlabel.TextSize = 14.000

R.Name = "R"
R.Parent = Stuff
R.BackgroundColor3 = Color3.fromRGB(91, 91, 91)
R.BackgroundTransparency = 0.300
R.BorderColor3 = Color3.fromRGB(0, 0, 0)
R.BorderSizePixel = 0
R.Position = UDim2.new(0.716128826, 0, 0.161290318, 0)
R.Size = UDim2.new(0, 25, 0, 25)
R.Font = Enum.Font.SourceSans
R.PlaceholderText = "0"
R.Text = ""
R.TextColor3 = Color3.fromRGB(255, 255, 255)
R.TextSize = 14.000

G.Name = "G"
G.Parent = Stuff
G.BackgroundColor3 = Color3.fromRGB(91, 91, 91)
G.BackgroundTransparency = 0.300
G.BorderColor3 = Color3.fromRGB(0, 0, 0)
G.BorderSizePixel = 0
G.Position = UDim2.new(0.716000021, 0, 0.305999994, 0)
G.Size = UDim2.new(0, 25, 0, 25)
G.Font = Enum.Font.SourceSans
G.PlaceholderText = "0"
G.Text = ""
G.TextColor3 = Color3.fromRGB(255, 255, 255)
G.TextSize = 14.000

B.Name = "B"
B.Parent = Stuff
B.BackgroundColor3 = Color3.fromRGB(91, 91, 91)
B.BackgroundTransparency = 0.300
B.BorderColor3 = Color3.fromRGB(0, 0, 0)
B.BorderSizePixel = 0
B.Position = UDim2.new(0.716000021, 0, 0.449999988, 0)
B.Size = UDim2.new(0, 25, 0, 25)
B.Font = Enum.Font.SourceSans
B.PlaceholderText = "0"
B.Text = ""
B.TextColor3 = Color3.fromRGB(255, 255, 255)
B.TextSize = 14.000

red.Name = "red"
red.Parent = Stuff
red.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
red.BackgroundTransparency = 1.000
red.BorderColor3 = Color3.fromRGB(0, 0, 0)
red.BorderSizePixel = 0
red.Position = UDim2.new(0, 0, 0.166666672, 0)
red.Size = UDim2.new(0, 62, 0, 23)
red.Font = Enum.Font.SourceSans
red.Text = "Red"
red.TextColor3 = Color3.fromRGB(255, 255, 255)
red.TextSize = 14.000

green.Name = "green"
green.Parent = Stuff
green.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
green.BackgroundTransparency = 1.000
green.BorderColor3 = Color3.fromRGB(0, 0, 0)
green.BorderSizePixel = 0
green.Position = UDim2.new(0, 0, 0.306451619, 0)
green.Size = UDim2.new(0, 62, 0, 23)
green.Font = Enum.Font.SourceSans
green.Text = "Green"
green.TextColor3 = Color3.fromRGB(255, 255, 255)
green.TextSize = 14.000

blue.Name = "blue"
blue.Parent = Stuff
blue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
blue.BackgroundTransparency = 1.000
blue.BorderColor3 = Color3.fromRGB(0, 0, 0)
blue.BorderSizePixel = 0
blue.Position = UDim2.new(0, 0, 0.435483873, 0)
blue.Size = UDim2.new(0, 62, 0, 23)
blue.Font = Enum.Font.SourceSans
blue.Text = "Blue"
blue.TextColor3 = Color3.fromRGB(255, 255, 255)
blue.TextSize = 14.000

SetBackground.Name = "SetBackground"
SetBackground.Parent = Stuff
SetBackground.BackgroundColor3 = Color3.fromRGB(91, 91, 91)
SetBackground.BackgroundTransparency = 0.300
SetBackground.BorderColor3 = Color3.fromRGB(0, 0, 0)
SetBackground.BorderSizePixel = 0
SetBackground.Position = UDim2.new(0.0190000478, 0, 0.62069881, 0)
SetBackground.Size = UDim2.new(0, 149, 0, 16)
SetBackground.Font = Enum.Font.SourceSans
SetBackground.Text = "Set Background Color"
SetBackground.TextColor3 = Color3.fromRGB(255, 255, 255)
SetBackground.TextSize = 14.000

StopEverything.Name = "StopEverything"
StopEverything.Parent = Stuff
StopEverything.BackgroundColor3 = Color3.fromRGB(91, 91, 91)
StopEverything.BackgroundTransparency = 0.300
StopEverything.BorderColor3 = Color3.fromRGB(0, 0, 0)
StopEverything.BorderSizePixel = 0
StopEverything.Position = UDim2.new(0.0189999994, 0, 0.824999988, 0)
StopEverything.Size = UDim2.new(0, 149, 0, 27)
StopEverything.Font = Enum.Font.SourceSans
StopEverything.Text = "Stop Admin"
StopEverything.TextColor3 = Color3.fromRGB(255, 255, 255)
StopEverything.TextSize = 14.000

Title_2.Name = "Title"
Title_2.Parent = Settings
Title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_2.BackgroundTransparency = 1.000
Title_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title_2.BorderSizePixel = 0
Title_2.Size = UDim2.new(0, 169, 0, 19)
Title_2.Font = Enum.Font.SourceSansBold
Title_2.Text = "Atomic V2 | Settings"
Title_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_2.TextSize = 15.000

AtomLoader.Name = "AtomLoader"
AtomLoader.Parent = Admin
AtomLoader.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
AtomLoader.BackgroundTransparency = 0.400
AtomLoader.BorderColor3 = Color3.fromRGB(0, 0, 0)
AtomLoader.BorderSizePixel = 0
AtomLoader.Position = UDim2.new(0.416, 0, 0.40272373, 0)
AtomLoader.Size = UDim2.new(0, 230, 0, 68)

LoaderText.Name = "LoaderText"
LoaderText.Parent = AtomLoader
LoaderText.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
LoaderText.BackgroundTransparency = 0.400
LoaderText.BorderColor3 = Color3.fromRGB(0, 0, 0)
LoaderText.BorderSizePixel = 0
LoaderText.Position = UDim2.new(0.0181882121, 0, 0.0658489987, 0)
LoaderText.Size = UDim2.new(0, 221, 0, 45)

Logo.Name = "Logo"
Logo.Parent = LoaderText
Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Logo.BackgroundTransparency = 1.000
Logo.BorderColor3 = Color3.fromRGB(0, 0, 0)
Logo.BorderSizePixel = 0
Logo.Size = UDim2.new(0, 36, 0, 36)
Logo.Font = Enum.Font.SourceSansBold
Logo.Text = "A"
Logo.TextColor3 = Color3.fromRGB(255, 255, 255)
Logo.TextScaled = true
Logo.TextSize = 15.000
Logo.TextWrapped = true

Logo2.Name = "Logo2"
Logo2.Parent = LoaderText
Logo2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Logo2.BackgroundTransparency = 1.000
Logo2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Logo2.BorderSizePixel = 0
Logo2.Position = UDim2.new(0.0678733066, 0, 0.088888891, 0)
Logo2.Size = UDim2.new(0, 36, 0, 36)
Logo2.Font = Enum.Font.SourceSansBold
Logo2.Text = "v2"
Logo2.TextColor3 = Color3.fromRGB(255, 170, 0)
Logo2.TextSize = 19.000
Logo2.TextWrapped = true

TextOnLoader.Name = "TextOnLoader"
TextOnLoader.Parent = LoaderText
TextOnLoader.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextOnLoader.BackgroundTransparency = 1.000
TextOnLoader.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextOnLoader.BorderSizePixel = 0
TextOnLoader.Position = UDim2.new(0.230769232, 0, 0.088888891, 0)
TextOnLoader.Size = UDim2.new(0, 170, 0, 36)
TextOnLoader.Font = Enum.Font.SourceSansBold
TextOnLoader.Text = "Loading..."
TextOnLoader.TextColor3 = Color3.fromRGB(255, 255, 255)
TextOnLoader.TextSize = 15.000
TextOnLoader.TextWrapped = true

LoadingBar.Name = "LoadingBar"
LoadingBar.Parent = AtomLoader
LoadingBar.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
LoadingBar.BackgroundTransparency = 0.400
LoadingBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
LoadingBar.BorderSizePixel = 0
LoadingBar.Position = UDim2.new(0.0179999992, 0, 0.75999999, 0)
LoadingBar.Size = UDim2.new(0, 221, 0, 12)

BarToFinish.Name = "BarToFinish"
BarToFinish.Parent = LoadingBar
BarToFinish.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
BarToFinish.BackgroundTransparency = 0.400
BarToFinish.BorderColor3 = Color3.fromRGB(0, 0, 0)
BarToFinish.BorderSizePixel = 0
BarToFinish.Size = UDim2.new(0, 1, 0, 12)

local function NVOMOT_fake_script() -- Commands.DragScript 
	local script = Instance.new('LocalScript', Commands)

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
			input.MouseIconEnable = false
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
coroutine.wrap(NVOMOT_fake_script)()
local function SLOO_fake_script() -- Settings.DragScript 
	local script = Instance.new('LocalScript', Settings)

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
			input.MouseIconEnable = false
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
coroutine.wrap(SLOO_fake_script)()

local function STOPBUTTON_fake_script() -- stopbutton.Script 
	local script = Instance.new('Script', StopEverything)
	function onClicked(GUI)
		scriptunloaded = true
		print("unloading script...")
		print("script unloaded!")
        Admin:Destroy()
	end
	script.Parent.MouseButton1Click:connect(onClicked)
end
coroutine.wrap(STOPBUTTON_fake_script)()

local function SETBACKBUTTON_fake_script() -- stopbutton.Script 
	local script = Instance.new('Script', SetBackground)
	function onClicked(GUI)
        local rBox = tonumber(R.Text) or 0
        local gBox = tonumber(G.Text) or 0
        local bBox = tonumber(B.Text) or 0
        rBox = math.clamp(rBox, 0, 255)
        gBox = math.clamp(gBox, 0, 255)
        bBox = math.clamp(bBox, 0, 255)
		CommandBar.BackgroundColor3 = Color3.fromRGB(rBox, gBox, bBox)
        Commands.BackgroundColor3 = Color3.fromRGB(rBox, gBox, bBox)
        Settings.BackgroundColor3 = Color3.fromRGB(rBox, gBox, bBox)
	end
	script.Parent.MouseButton1Click:connect(onClicked)
end
coroutine.wrap(SETBACKBUTTON_fake_script)()

AtomLoader.BackgroundTransparency = 1
LoaderText.BackgroundTransparency = 1
Logo.TextTransparency = 1
Logo2.TextTransparency = 1
TextOnLoader.TextTransparency = 1
LoadingBar.BackgroundTransparency = 1
BarToFinish.BackgroundTransparency = 1

for i = 1,0.4,-0.1 do
	AtomLoader.BackgroundTransparency = i
	LoaderText.BackgroundTransparency = i
	wait()
end
for i = 1,0,-0.1 do
	Logo.TextTransparency = i
    Logo2.TextTransparency = i
    TextOnLoader.TextTransparency = i
    LoadingBar.BackgroundTransparency = i
    BarToFinish.BackgroundTransparency = i
	wait()
end

TextOnLoader.Text = "Loading..."
BarToFinish.Size = UDim2.new(0, 1, 0, 12)--Vector2(1, 12)
wait(1)
TextOnLoader.Text = "Checking Version..."
BarToFinish.Size = UDim2.new(0, 50, 0, 12)--Vector2(50, 12)
wait(1)
local ver = 2
local onlinever = 2
local updated = false
if ver == onlinever then
	updated = true
end
if updated == false then
	TextOnLoader.Text = "Failed Update Script"
	BarToFinish.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    wait(3)
    Admin:Destroy()
	return
end
wait(1)
TextOnLoader.Text = "Checking Remotes..."
BarToFinish.Size = UDim2.new(0, 110, 0, 12)--Vector2(170, 12)
wait(1)
TextOnLoader.Text = "Loading Contents..."
BarToFinish.Size = UDim2.new(0, 170, 0, 12)--Vector2(170, 12)
wait(2)
TextOnLoader.Text = "Done!"
BarToFinish.Size = UDim2.new(0, 221, 0, 12)--Vector2(221, 12)
wait(2)
for i = 0,1,0.1 do
	Logo.TextTransparency = i
    Logo2.TextTransparency = i
    TextOnLoader.TextTransparency = i
    LoadingBar.BackgroundTransparency = i
    BarToFinish.BackgroundTransparency = i
	wait()
end
for i = 0.4,1,0.1 do
	AtomLoader.BackgroundTransparency = i
	LoaderText.BackgroundTransparency = i
	wait()
end

AtomLoader.Visible = false
print("load1")
local cmds = {
	"commands/cmds",
	"settings",
	"setprefix/sp [p]",
	"admin [plr]",
    "unadmin [plr]",
    "owner [plr]",
    "unowner [plr]",
    "breakchat/bc",
    "kick/remove [plr]",
    "ban [plr]",
    "clearbans/clrbans",
    "kill [plr]",
    "noclip/nc",
    "clip/c",
    "fling/throw [plr]",
    "toolfling/tf",
    "view/watch [plr]",
    "unview/unwatch",
    "fly",
    "deletegame/dg",
    "shutdown",
    "serverlock/slock",
    "unserverlock/unslock",
    "firetouchinterest/fti",
    "hipheight/hh [num]",
    "jumppower/jp [num]",
    "walkspeed/ws [num]",
    "rejoin/rj",
    "goto/to [plr]",
    "sit",
    "btools/f3x",
    "fall",
    "unfall",
    "checkremotes/cr",
    "refresh/re",
    "antifling",
    "punish/hide [plr]",
    "bang/rape [plr] [speed]",
    "unbang/unrape [plr]",
    "autorespawn/autore",
    "unautorespawn/unautore",
    "clickfling/cft",
    "clickbang/cbt",
    "clickkick/ck",
    "clickban/cb",
    "telek",
    "clicktp/tpt",
    "execute/exec [link]",
    "claimablebooths/mbc",
    "extendbase/eb",
    "rainbowbooth/rb [msg]",
    "unrainbowbooth/unrb",
    "fixself/fs",
    "setwall/sw [msg]",
    "claimbooth [num]",
    "closebooth [num]",
    "clickclaimbooth/ccb",
    "clickclosebooth/cdb",
    "equiptools/eqt",
    "invisible/invis",
    "visible/vis",
    "freeze/anchor",
    "unfreeze/unanchor",
    "fakelag/fl",
    "unfakelag/unfl",
    "unvoiceban/unvcb",
    "armless/al [plr]",
    "legless/ll [plr]",
    "faceless/fal [plr]",
    "naked [plr]",
    "bald [plr]",
    "blank [plr]",
    "break [plr]",
    "clickdelete/cdel"
}
for i, cmd in ipairs(cmds) do
	local Command = Instance.new("Frame")
	local CmdText = Instance.new("TextBox")
	Command.Name = cmd
	Command.Parent = Lists
	Command.BackgroundColor3 = Color3.fromRGB(91, 91, 91)
	Command.BackgroundTransparency = 0.400
	Command.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Command.BorderSizePixel = 0
	Command.Size = UDim2.new(0, 144, 0, 19)

	CmdText.Name = "CmdText"
	CmdText.Parent = Command
	CmdText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	CmdText.BackgroundTransparency = 1.000
	CmdText.BorderColor3 = Color3.fromRGB(0, 0, 0)
	CmdText.BorderSizePixel = 0
	CmdText.Position = UDim2.new(-4.23855255e-07, 0, 0, 0)
	CmdText.Size = UDim2.new(0, 143, 0, 19)
	CmdText.Font = Enum.Font.SourceSans
	CmdText.Text = cmd
	CmdText.TextColor3 = Color3.fromRGB(255, 255, 255)
	CmdText.TextSize = 13.000
    CmdText.TextEditable = false

    CmdText:GetPropertyChangedSignal("Text"):Connect(function()
        CmdText.Text = cmd
    end)
end
print("load2")
function sendcmd(msg)
    local spaceSplit = msg:split(" ")
    if scriptunloaded == true then return end
	if spaceSplit[1] == prefix.."commands" or spaceSplit[1] == prefix.."cmds" then
		if Commands.Visible == false then
			Commands.Visible = true
		elseif Commands.Visible == true then
			Commands.Visible = false
		end

	elseif spaceSplit[1] == prefix.."settings" then
		if Settings.Visible == false then
			Settings.Visible = true
		elseif Settings.Visible == true then
			Settings.Visible = false
		end

    elseif spaceSplit[1] == prefix.."setprefix" or spaceSplit[1] == prefix.."sp" then
        prefix = spaceSplit[2]
        prefixlabel.Text = prefix
        notice("Changed Prefix To "..prefix)

    elseif spaceSplit[1] == prefix.."admin" then
        local target = getPlr(tostring(spaceSplit[2]):lower())
		admins[target.UserId] = {target = target}
		Chat("/w "..target.Name.." [AV2]: Hello, You Have Been Given Admin. Type "..prefix.."cmds To See All Commands.")
   
    elseif spaceSplit[1] == prefix.."antifling" then
        local Services = setmetatable({}, {__index = function(Self, Index)
			local NewService = game.GetService(game, Index)
			if NewService then
				Self[Index] = NewService
			end
			return NewService
		end})

		-- [ LocalPlayer ] --
		local LocalPlayer = Services.Players.LocalPlayer

		-- // Functions  --
		local function PlayerAdded(Player)
			local Detected = false
			local Character;
			local PrimaryPart;

			local function CharacterAdded(NewCharacter)
				Character = NewCharacter
				repeat
					wait()
					PrimaryPart = NewCharacter:FindFirstChild("HumanoidRootPart")
				until PrimaryPart
				Detected = false
			end

			CharacterAdded(Player.Character or Player.CharacterAdded:Wait())
			Player.CharacterAdded:Connect(CharacterAdded)
			Services.RunService.Heartbeat:Connect(function()
				if (Character and Character:IsDescendantOf(workspace)) and (PrimaryPart and PrimaryPart:IsDescendantOf(Character)) then
					if PrimaryPart.AssemblyAngularVelocity.Magnitude > 50 or PrimaryPart.AssemblyLinearVelocity.Magnitude > 100 then
						Detected = true
						for i,v in ipairs(Character:GetDescendants()) do
							if v:IsA("BasePart") then
								v.CanCollide = false
								v.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
								v.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
								v.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0)
							end
						end
						PrimaryPart.CanCollide = false
						PrimaryPart.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
						PrimaryPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
						PrimaryPart.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0)
					end
				end
			end)
		end

		-- // Event Listeners  --
		for i,v in ipairs(Services.Players:GetPlayers()) do
			if v ~= LocalPlayer then
				PlayerAdded(v)
			end
		end
		Services.Players.PlayerAdded:Connect(PlayerAdded)

		local LastPosition = nil
		Services.RunService.Heartbeat:Connect(function()
			pcall(function()
				local PrimaryPart = LocalPlayer.Character.PrimaryPart
				if PrimaryPart.AssemblyLinearVelocity.Magnitude > 150 or PrimaryPart.AssemblyAngularVelocity.Magnitude > 150 then
					PrimaryPart.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
					PrimaryPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
					PrimaryPart.CFrame = LastPosition
				elseif PrimaryPart.AssemblyLinearVelocity.Magnitude < 50 or PrimaryPart.AssemblyAngularVelocity.Magnitude > 50 then
					LastPosition = PrimaryPart.CFrame
				end
			end)
		end)

    elseif spaceSplit[1] == prefix.."autorespawn" or spaceSplit[1] == prefix.."autore" then
        autoro = true
		repeat wait()
			if plr.Character.Humanoid.Health <= 1 then
				local old = plr.Character:FindFirstChild("HumanoidRootPart").CFrame
				plr.CharacterAdded:Wait()
				getChar():WaitForChild("HumanoidRootPart").CFrame = old
			end
		until autoro == false
    
    elseif spaceSplit[1] == prefix.."armless" or spaceSplit[1] == prefix.."al" then
        if ssworks == true then
            local target = getPlr(tostring(spaceSplit[2]):lower())
			if target.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
				Destroy(target.Character.LeftUpperArm)
                Destroy(target.Character.RightUpperArm)
			else
                Destroy(target.Character:FindFirstChild("Left Arm"))
                Destroy(target.Character:FindFirstChild("Righ Arm"))
			end
        elseif ssworks == false then
            notice("Error Game Requires Remotes For This To Work")
        end

    elseif spaceSplit[1] == prefix.."ban" then
        if ssworks == true then
            local target = getPlr(tostring(spaceSplit[2]):lower())
			table.insert(banned, target.UserId)
			Destroy(target)
			game.StarterGui:SetCore("ChatMakeSystemMessage", {
				Text = ("A Player Was Banned By "..plr.Name.." Name: "..target.Name.."");
				Font = Enum.Font.SourceSansBold;
				Color = Color3.fromRGB(255, 255, 255);
			})
        elseif ssworks == false then
            notice("Error Game Requires Remotes For This To Work")
        end
    elseif spaceSplit[1] == prefix.."bald" then
        if ssworks == true then
            local target = getPlr(tostring(spaceSplit[2]):lower())
            for _, v in pairs(target.Character:GetDescendants()) do
                if v:IsA("Accessory") then
		            Destroy(v)
	            end
            end
			
        elseif ssworks == false then
            notice("Error Game Requires Remotes For This To Work")
        end

    elseif spaceSplit[1] == prefix.."bang" or spaceSplit[1] == prefix.."rape" then
        if bangDied then
			bangDied:Disconnect()
			bang:Stop()
			bangAnim:Destroy()
			bangLoop:Disconnect()
		end
		local humanoid = plr.Character:FindFirstChildWhichIsA("Humanoid")
		bangAnim = Instance.new("Animation")
		if plr.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
			bangAnim.AnimationId = "rbxassetid://14849662872" -- 5918726674, 104661990001870, 
		else
			bangAnim.AnimationId = "rbxassetid://148840371" -- 148840371
		end
		bang = humanoid:LoadAnimation(bangAnim)
		bang:Play(0.1, 1, 1)
		bang:AdjustSpeed(tonumber(spaceSplit[3]))-- or 3)
		bangDied = humanoid.Died:Connect(function()
			bang:Stop()
			bangAnim:Destroy()
			bangDied:Disconnect()
			bangLoop:Disconnect()
		end)
		local target = getPlr(tostring(spaceSplit[2]):lower())
		if target == nil then return end
		local bangOffet = CFrame.new(0, 0, 1.1)
		bangLoop = RunService.Stepped:Connect(function()
			pcall(function()
				if target.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
					local otherRoot = target.Character.UpperTorso
					plr.Character.HumanoidRootPart.CFrame = otherRoot.CFrame * bangOffet
				else
					local otherRoot = target.Character.Torso
					plr.Character.HumanoidRootPart.CFrame = otherRoot.CFrame * bangOffet
				end
			end)
		end)

    elseif spaceSplit[1] == prefix.."blank" then
        if ssworks == true then
            local target = getPlr(tostring(spaceSplit[2]):lower())
            for _, v in pairs(target.Character:GetDescendants()) do
                if v:IsA("Accessory") then
		            Destroy(v)
	            end
            end
            Destroy(target.Character:FindFirstChild("Body Colors"))
            Destroy(target.Character.Head.face)
            Destroy(target.Character.Shirt)
            Destroy(target.Character.Pants)
			
        elseif ssworks == false then
            notice("Error Game Requires Remotes For This To Work")
        end
    
    elseif spaceSplit[1] == prefix.."break" then
        if ssworks == true then
            local target = getPlr(tostring(spaceSplit[2]):lower())
            Destroy(target.Character.HumanoidRootPart)
			
        elseif ssworks == false then
            notice("Error Game Requires Remotes For This To Work")
        end

    elseif spaceSplit[1] == prefix.."breakchat" or spaceSplit[1] == prefix.."bc" then
        wait(0.5)
		for i=1,6 do
			Chat(" ")
		end

    elseif spaceSplit[1] == prefix.."btools" or spaceSplit[1] == prefix.."f3x" then
        loadstring(game:GetObjects("rbxassetid://6695644299")[1].Source)()

    elseif spaceSplit[1] == prefix.."checkremotes" or spaceSplit[1] == prefix.."cr" then
        if ssworks == true then
            if ranremotecheck == false then
                ranremotecheck = true
local RemoteChecker = Instance.new("ScreenGui")
local AtomLoader = Instance.new("Frame")
local LoaderText = Instance.new("Frame")
local Logo = Instance.new("TextLabel")
local Logo2 = Instance.new("TextLabel")
local TextInLoader = Instance.new("TextLabel")
local LoadingBar = Instance.new("Frame")
local BarToFinish = Instance.new("Frame")
local RemotesChecked = Instance.new("Frame")
local RC1 = Instance.new("TextLabel")
local RC2 = Instance.new("TextLabel")
local RC3 = Instance.new("TextLabel")
local RC4 = Instance.new("TextLabel")
local Checkbox1 = Instance.new("Frame")
local Checked = Instance.new("Frame")
local Checkbox2 = Instance.new("Frame")
local Checked_2 = Instance.new("Frame")
local Checkbox3 = Instance.new("Frame")
local Checked_3 = Instance.new("Frame")
local Checkbox4 = Instance.new("Frame")
local Checked_4 = Instance.new("Frame")
local Close = Instance.new("TextButton")
local Logo_2 = Instance.new("TextLabel")


RemoteChecker.Name = "RemoteChecker"
RemoteChecker.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
RemoteChecker.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
RemoteChecker.ResetOnSpawn = false

AtomLoader.Name = "AtomLoader"
AtomLoader.Parent = RemoteChecker
AtomLoader.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
AtomLoader.BackgroundTransparency = 0.400
AtomLoader.BorderColor3 = Color3.fromRGB(0, 0, 0)
AtomLoader.BorderSizePixel = 0
AtomLoader.Position = UDim2.new(0.4163948, 0, 0.249027237, 0)
AtomLoader.Size = UDim2.new(0, 230, 0, 219)

LoaderText.Name = "LoaderText"
LoaderText.Parent = AtomLoader
LoaderText.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
LoaderText.BackgroundTransparency = 0.400
LoaderText.BorderColor3 = Color3.fromRGB(0, 0, 0)
LoaderText.BorderSizePixel = 0
LoaderText.Position = UDim2.new(0.0179999992, 0, 0.0250000004, 0)
LoaderText.Size = UDim2.new(0, 221, 0, 45)

Logo.Name = "Logo"
Logo.Parent = LoaderText
Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Logo.BackgroundTransparency = 1.000
Logo.BorderColor3 = Color3.fromRGB(0, 0, 0)
Logo.BorderSizePixel = 0
Logo.Size = UDim2.new(0, 36, 0, 36)
Logo.Font = Enum.Font.SourceSansBold
Logo.Text = "A"
Logo.TextColor3 = Color3.fromRGB(255, 255, 255)
Logo.TextScaled = true
Logo.TextSize = 15.000
Logo.TextWrapped = true

Logo2.Name = "Logo2"
Logo2.Parent = LoaderText
Logo2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Logo2.BackgroundTransparency = 1.000
Logo2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Logo2.BorderSizePixel = 0
Logo2.Position = UDim2.new(0.0678733066, 0, 0.088888891, 0)
Logo2.Size = UDim2.new(0, 36, 0, 36)
Logo2.Font = Enum.Font.SourceSansBold
Logo2.Text = "v2"
Logo2.TextColor3 = Color3.fromRGB(255, 170, 0)
Logo2.TextSize = 19.000
Logo2.TextWrapped = true

TextInLoader.Name = "TextInLoader"
TextInLoader.Parent = LoaderText
TextInLoader.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextInLoader.BackgroundTransparency = 1.000
TextInLoader.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextInLoader.BorderSizePixel = 0
TextInLoader.Position = UDim2.new(0.230769232, 0, 0.088888891, 0)
TextInLoader.Size = UDim2.new(0, 170, 0, 36)
TextInLoader.Font = Enum.Font.SourceSansBold
TextInLoader.Text = "Starting Scan..."
TextInLoader.TextColor3 = Color3.fromRGB(255, 255, 255)
TextInLoader.TextSize = 15.000
TextInLoader.TextWrapped = true

LoadingBar.Name = "LoadingBar"
LoadingBar.Parent = AtomLoader
LoadingBar.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
LoadingBar.BackgroundTransparency = 0.400
LoadingBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
LoadingBar.BorderSizePixel = 0
LoadingBar.Position = UDim2.new(0.0179999992, 0, 0.25, 0)
LoadingBar.Size = UDim2.new(0, 221, 0, 12)

BarToFinish.Name = "BarToFinish"
BarToFinish.Parent = LoadingBar
BarToFinish.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
BarToFinish.BackgroundTransparency = 0.400
BarToFinish.BorderColor3 = Color3.fromRGB(0, 0, 0)
BarToFinish.BorderSizePixel = 0
BarToFinish.Size = UDim2.new(0, 221, 0, 12)

RemotesChecked.Name = "RemotesChecked"
RemotesChecked.Parent = AtomLoader
RemotesChecked.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
RemotesChecked.BackgroundTransparency = 0.400
RemotesChecked.BorderColor3 = Color3.fromRGB(0, 0, 0)
RemotesChecked.BorderSizePixel = 0
RemotesChecked.Position = UDim2.new(0.0180000644, 0, 0.339999974, 0)
RemotesChecked.Size = UDim2.new(0, 221, 0, 140)

RC1.Name = "RC1"
RC1.Parent = RemotesChecked
RC1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RC1.BackgroundTransparency = 1.000
RC1.BorderColor3 = Color3.fromRGB(0, 0, 0)
RC1.BorderSizePixel = 0
RC1.Position = UDim2.new(0.0149999997, 0, 0.0103176665, 0)
RC1.Size = UDim2.new(0, 95, 0, 33)
RC1.Font = Enum.Font.SourceSansBold
RC1.Text = "Delete Car"
RC1.TextColor3 = Color3.fromRGB(255, 255, 255)
RC1.TextSize = 15.000
RC1.TextWrapped = true
RC1.TextXAlignment = Enum.TextXAlignment.Left

RC2.Name = "RC2"
RC2.Parent = RemotesChecked
RC2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RC2.BackgroundTransparency = 1.000
RC2.BorderColor3 = Color3.fromRGB(0, 0, 0)
RC2.BorderSizePixel = 0
RC2.Position = UDim2.new(0.0149999997, 0, 0.261613905, 0)
RC2.Size = UDim2.new(0, 95, 0, 33)
RC2.Font = Enum.Font.SourceSansBold
RC2.Text = "GUI Handler"
RC2.TextColor3 = Color3.fromRGB(255, 255, 255)
RC2.TextSize = 15.000
RC2.TextWrapped = true
RC2.TextXAlignment = Enum.TextXAlignment.Left

RC3.Name = "RC3"
RC3.Parent = RemotesChecked
RC3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RC3.BackgroundTransparency = 1.000
RC3.BorderColor3 = Color3.fromRGB(0, 0, 0)
RC3.BorderSizePixel = 0
RC3.Position = UDim2.new(0.0149999997, 0, 0.505929351, 0)
RC3.Size = UDim2.new(0, 95, 0, 33)
RC3.Font = Enum.Font.SourceSansBold
RC3.Text = "Building Tools"
RC3.TextColor3 = Color3.fromRGB(255, 255, 255)
RC3.TextSize = 15.000
RC3.TextWrapped = true
RC3.TextXAlignment = Enum.TextXAlignment.Left

RC4.Name = "RC4"
RC4.Parent = RemotesChecked
RC4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RC4.BackgroundTransparency = 1.000
RC4.BorderColor3 = Color3.fromRGB(0, 0, 0)
RC4.BorderSizePixel = 0
RC4.Position = UDim2.new(0.0149999997, 0, 0.745821953, 0)
RC4.Size = UDim2.new(0, 95, 0, 33)
RC4.Font = Enum.Font.SourceSansBold
RC4.Text = "DestroySegway"
RC4.TextColor3 = Color3.fromRGB(255, 255, 255)
RC4.TextSize = 15.000
RC4.TextWrapped = true
RC4.TextXAlignment = Enum.TextXAlignment.Left

Checkbox1.Name = "Checkbox1"
Checkbox1.Parent = RemotesChecked
Checkbox1.BackgroundColor3 = Color3.fromRGB(41, 41, 41)
Checkbox1.BackgroundTransparency = 0.300
Checkbox1.BorderColor3 = Color3.fromRGB(0, 0, 0)
Checkbox1.BorderSizePixel = 0
Checkbox1.Position = UDim2.new(0.84162885, 0, 0.0500000007, 0)
Checkbox1.Size = UDim2.new(0, 20, 0, 20)

Checked.Name = "Checked"
Checked.Parent = Checkbox1
Checked.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
Checked.BorderColor3 = Color3.fromRGB(0, 0, 0)
Checked.BorderSizePixel = 0
Checked.Position = UDim2.new(0.0700012222, 0, 0.100000001, 0)
Checked.Size = UDim2.new(0, 16, 0, 16)

Checkbox2.Name = "Checkbox2"
Checkbox2.Parent = RemotesChecked
Checkbox2.BackgroundColor3 = Color3.fromRGB(41, 41, 41)
Checkbox2.BackgroundTransparency = 0.300
Checkbox2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Checkbox2.BorderSizePixel = 0
Checkbox2.Position = UDim2.new(0.84162885, 0, 0.314285725, 0)
Checkbox2.Size = UDim2.new(0, 20, 0, 20)

Checked_2.Name = "Checked"
Checked_2.Parent = Checkbox2
Checked_2.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
Checked_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Checked_2.BorderSizePixel = 0
Checked_2.Position = UDim2.new(0.0700012222, 0, 0.100000001, 0)
Checked_2.Size = UDim2.new(0, 16, 0, 16)

Checkbox3.Name = "Checkbox3"
Checkbox3.Parent = RemotesChecked
Checkbox3.BackgroundColor3 = Color3.fromRGB(41, 41, 41)
Checkbox3.BackgroundTransparency = 0.300
Checkbox3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Checkbox3.BorderSizePixel = 0
Checkbox3.Position = UDim2.new(0.84162885, 0, 0.550000012, 0)
Checkbox3.Size = UDim2.new(0, 20, 0, 20)

Checked_3.Name = "Checked"
Checked_3.Parent = Checkbox3
Checked_3.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
Checked_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Checked_3.BorderSizePixel = 0
Checked_3.Position = UDim2.new(0.0700012222, 0, 0.100000001, 0)
Checked_3.Size = UDim2.new(0, 16, 0, 16)

Checkbox4.Name = "Checkbox4"
Checkbox4.Parent = RemotesChecked
Checkbox4.BackgroundColor3 = Color3.fromRGB(41, 41, 41)
Checkbox4.BackgroundTransparency = 0.300
Checkbox4.BorderColor3 = Color3.fromRGB(0, 0, 0)
Checkbox4.BorderSizePixel = 0
Checkbox4.Position = UDim2.new(0.84162885, 0, 0.785714269, 0)
Checkbox4.Size = UDim2.new(0, 20, 0, 20)

Checked_4.Name = "Checked"
Checked_4.Parent = Checkbox4
Checked_4.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
Checked_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
Checked_4.BorderSizePixel = 0
Checked_4.Position = UDim2.new(0.0700012222, 0, 0.100000001, 0)
Checked_4.Size = UDim2.new(0, 16, 0, 16)

Close.Name = "Close"
Close.Parent = AtomLoader
Close.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
Close.BackgroundTransparency = 0.400
Close.BorderColor3 = Color3.fromRGB(0, 0, 0)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0, 0, 1.03652966, 0)
Close.Size = UDim2.new(0, 230, 0, 26)
Close.Font = Enum.Font.SourceSansBold
Close.Text = "Close"
Close.TextColor3 = Color3.fromRGB(255, 255, 255)
Close.TextSize = 15.000

Logo_2.Name = "Logo"
Logo_2.Parent = AtomLoader
Logo_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Logo_2.BackgroundTransparency = 1.000
Logo_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Logo_2.BorderSizePixel = 0
Logo_2.Position = UDim2.new(-3.98055363e-07, 0, -0.16438356, 0)
Logo_2.Size = UDim2.new(0, 229, 0, 36)
Logo_2.Font = Enum.Font.SourceSansBold
Logo_2.Text = "Remote Checker"
Logo_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Logo_2.TextSize = 20.000
Logo_2.TextWrapped = true

local function Close_script() -- stopbutton.Script 
	local script = Instance.new('Script', Close)
	function onClicked(GUI)
		RemoteChecker:Destroy()
	end
	script.Parent.MouseButton1Click:connect(onClicked)
end
coroutine.wrap(Close_script)()

Checked.Visible = false
Checked_2.Visible = false
Checked_3.Visible = false
Checked_4.Visible = false
Close.Visible = false

        local RemoteNameFound = "None"
        TextInLoader.Text = "Starting Scan..."
        BarToFinish.Size = UDim2.new(0, 1, 0, 12)
        wait(1)
        TextInLoader.Text = "Scanning Remotes..."
        BarToFinish.Size = UDim2.new(0, 50, 0, 12)
        for _, v in pairs(game:GetDescendants()) do
	        if v:IsA("RemoteEvent") or v:IsA("RemoteFuntion") then
		        if v.Name == "DeleteCar" or v.Name == "GuiHandler" or v.Name == "DestroySegway" then
			        RemoteNameFound = v.Name
			        TextInLoader.Text = "Found Remote!"
		        end
	        end
        end
        BarToFinish.Size = UDim2.new(0, 100, 0, 12)
        wait(1)
        BarToFinish.Size = UDim2.new(0, 150, 0, 12)
        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Building Tools") then
	        RemoteNameFound = "Building Tools"
	        TextInLoader.Text = "Found Remote!"
        end
        wait(1)
        BarToFinish.Size = UDim2.new(0, 200, 0, 12)
        TextInLoader.Text = "Finishing..."
        if RemoteNameFound ~= "None" then
	        wait(1)
	        BarToFinish.Size = UDim2.new(0, 221, 0, 12)
	        TextInLoader.Text = "Done!"
	        if RemoteNameFound == "DeleteCar" then
		        Checked.Visible = true
		        print("✅ DeleteCar")
	        elseif RemoteNameFound == "GuiHandler" then
		        Checked_2.Visible = true
		        print("✅ GuiHandler")
	        elseif RemoteNameFound == "DestroySegway" then
		        Checked_3.Visible = true
		        print("✅ DestroySegway")
	        elseif RemoteNameFound == "Building Tools" then
		        Checked_4.Visible = true
		        print("✅ Building Tools")
	        end
	        Close.Visible = true
        else
	        wait(1)
	        BarToFinish.Size = UDim2.new(0, 221, 0, 12)
	        Close.Visible = true
        end
    end
        elseif inmicup == true then
            notice("Remotes Found For Mic Up Commands")
        elseif ssworks == false and inmicup == false then
            notice("No Remotes Found")
        end

    elseif spaceSplit[1] == prefix.."claimablebooths" or spaceSplit[1] == prefix.."mbc" then
        if inmicup == true then
            for val = 0,6 do
                if val == 1 or val == 2 or val == 3 or val == 4 or val == 5 then
                    game:GetService("Workspace"):FindFirstChild("Booth"):FindFirstChild("Booth0"..val):FindFirstChild("Activate"):FindFirstChild("Activate").Enabled = true
		            game:GetService("Workspace"):FindFirstChild("Booth"):FindFirstChild("Booth0"..val):FindFirstChild("Activate"):FindFirstChild("Activate").HoldDuration = 0
                end
            end
        elseif inmicup == false then
            notice("Error Game Requires Mic Up Remotes For This To Work")
        end
    elseif spaceSplit[1] == prefix.."claimbooth" then
        if inmicup == true then
            local val = tonumber(spaceSplit[2])
		if val == nil then return end 
        if val == 1 or val == 2 or val == 3 or val == 4 or val == 5 then
            game:GetService("Workspace"):FindFirstChild("Booth"):FindFirstChild("Booth0"..val):FindFirstChild("Activate"):FindFirstChild("Activate").Enabled = true
            game:GetService("Workspace"):FindFirstChild("Booth"):FindFirstChild("Booth0"..val):FindFirstChild("Activate"):FindFirstChild("Activate").HoldDuration = 0
            game:GetService("Workspace"):FindFirstChild("Booth"):FindFirstChild("Booth0"..val):FindFirstChild("Activate"):FindFirstChild("Activate").MaxActivationDistance = 0
            local Char = plr.Character or workspace:FindFirstChild(plr.Name)
			local HRP = Char and Char:FindFirstChild("HumanoidRootPart")
			if not Char or not HRP then
				return warn("Failed to find HumanoidRootPart")
			end
			HRP.CFrame = game:GetService("Workspace"):FindFirstChild("Booth"):FindFirstChild("Booth0"..val):FindFirstChild("Activate").CFrame
            wait()
            game:GetService("Workspace"):FindFirstChild("Booth"):FindFirstChild("Booth0"..val):FindFirstChild("Activate"):FindFirstChild("Activate").MaxActivationDistance = 10
            wait()
            game:GetService("Workspace"):FindFirstChild("Booth"):FindFirstChild("Booth0"..val):FindFirstChild("Activate"):FindFirstChild("Activate"):InputHoldBegin()
            wait()
            game:GetService("ReplicatedStorage"):FindFirstChild("UpdateBoothText"):FireServer("Empty", "Gray", "DenkOne")
            game:GetService("Workspace"):FindFirstChild("Booth"):FindFirstChild("Booth0"..val):FindFirstChild("Activate"):FindFirstChild("Activate"):Triggered(plr)
            game:GetService("ReplicatedStorage"):FindFirstChild("UpdateBoothText"):FireServer("Empty", "Gray", "DenkOne")
            
        end
        elseif inmicup == false then
            notice("Error Game Requires Mic Up Remotes For This To Work")
        end
    elseif spaceSplit[1] == prefix.."clearbans" or spaceSplit[1] == prefix.."clrbans" then
        if ssworks == true then
            banned = {}
        elseif ssworks == false then
            notice("Error Game Requires Remotes For This To Work")
        end

    elseif spaceSplit[1] == prefix.."clickdelete" or spaceSplit[1] == prefix.."cdel" then
        if ssworks == true then
            local mouse = plr:GetMouse()
			local KTool = Instance.new("Tool")
			KTool.Name = "Delete Tool"
			KTool.RequiresHandle = false
			KTool.Parent = plr.Backpack
			KTool.Activated:Connect(function()
                local chara = plr.Character
                if not chara then return end
				local target = mouse.Target
				if target and target:IsDescendantOf(game.Workspace) then
					Delete(target)
				end
			end)
        elseif ssworks == false then
            notice("Error Game Requires Remotes For This To Work")
        end
    elseif spaceSplit[1] == prefix.."clickban" or spaceSplit[1] == prefix.."cb" then
        if ssworks == true then
            local mouse = plr:GetMouse()
			local KTool = Instance.new("Tool")
			KTool.Name = "Ban Tool"
			KTool.RequiresHandle = false
			KTool.Parent = plr.Backpack
			KTool.Activated:Connect(function()
				local target = mouse.Target
				if target and target.Parent then
					local chara = target.Parent
					if chara:FindFirstChild("Humanoid") then
                        local plllll = players:GetPlayerFromCharacter(chara)
						table.insert(banned, plllll.UserId)
			            Destroy(chara)
			            game.StarterGui:SetCore("ChatMakeSystemMessage", {
				            Text = ("A Player Was Banned By "..plr.Name.." Name: "..plllll.Name.."");
				            Font = Enum.Font.SourceSansBold;
				            Color = Color3.fromRGB(255, 255, 255);
			            })
					end
				end
			end)
        elseif ssworks == false then
            notice("Error Game Requires Remotes For This To Work")
        end
    elseif spaceSplit[1] == prefix.."clickbang" or spaceSplit[1] == prefix.."cbt" then
        local mouse = plr:GetMouse()
		local BTool = Instance.new("Tool")
		BTool.Name = "Bang Tool"
		BTool.RequiresHandle = false
		BTool.Parent = plr.Backpack
		BTool.Activated:Connect(function()
			if bangDied then
				bangDied:Disconnect()
				bang:Stop()
				bangAnim:Destroy()
				bangLoop:Disconnect()
			end
			local target = mouse.Target
			if target and target.Parent then
				local chara = target.Parent
				if chara:FindFirstChild("Humanoid") then
					local humanoid = plr.Character:FindFirstChildWhichIsA("Humanoid")
					bangAnim = Instance.new("Animation")
					if plr.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
						bangAnim.AnimationId = "rbxassetid://14849662872" -- 5918726674
					else
						bangAnim.AnimationId = "rbxassetid://148840371" -- 148840371
					end
					bang = humanoid:LoadAnimation(bangAnim)
					bang:Play(0.1, 1, 1)
					bang:AdjustSpeed(tonumber(spaceSplit[3]))-- or 3)
					bangDied = humanoid.Died:Connect(function()
						bang:Stop()
						bangAnim:Destroy()
						bangDied:Disconnect()
						bangLoop:Disconnect()
					end)
					local bangOffet = CFrame.new(0, 0, 1.1)
					bangLoop = RunService.Stepped:Connect(function()
						pcall(function()
							if chara.Humanoid.RigType == Enum.HumanoidRigType.R15 then
								local otherRoot = chara.UpperTorso
								plr.Character.HumanoidRootPart.CFrame = otherRoot.CFrame * bangOffet
							else
								local otherRoot = chara.Torso
								plr.Character.HumanoidRootPart.CFrame = otherRoot.CFrame * bangOffet
							end
						end)
					end)
				end
			end



		end)
    elseif spaceSplit[1] == prefix.."clickclaimbooth" or spaceSplit[1] == prefix.."ccb" then
        if inmicup == true then
        local mouse = plr:GetMouse()
		local CTool = Instance.new("Tool")
		CTool.Name = "Claim Booth Tool"
		CTool.RequiresHandle = false
		CTool.Parent = plr.Backpack
		CTool.Activated:Connect(function()
			local target = mouse.Target
			if target and target.Parent then
				local booths = target.Parent
				if booths:FindFirstChild("Activate") and booths:FindFirstChild("BaseA") then
					booths:FindFirstChild("Activate"):FindFirstChild("Activate").Enabled = true
                    booths:FindFirstChild("Activate"):FindFirstChild("Activate").HoldDuration = 0
                    booths:FindFirstChild("Activate"):FindFirstChild("Activate").MaxActivationDistance = 0
                    wait()
                    booths:FindFirstChild("Activate"):FindFirstChild("Activate").MaxActivationDistance = 10
                    wait()
                    booths:FindFirstChild("Activate"):FindFirstChild("Activate"):InputHoldBegin()
                    wait()
                    game:GetService("ReplicatedStorage"):FindFirstChild("UpdateBoothText"):FireServer("Empty", "Gray", "DenkOne")
                    booths:FindFirstChild("Activate"):FindFirstChild("Activate"):Triggered(plr)
                    game:GetService("ReplicatedStorage"):FindFirstChild("UpdateBoothText"):FireServer("Empty", "Gray", "DenkOne")
                end
			end
		end)
        elseif inmicup == false then
            notice("Error Game Requires Mic Up Remotes For This To Work")
        end
    elseif spaceSplit[1] == prefix.."clickclosebooth" or spaceSplit[1] == prefix.."cdb" then
        if inmicup == true then
            local mouse = plr:GetMouse()
		local CTool = Instance.new("Tool")
		CTool.Name = "Delete Booth Tool"
		CTool.RequiresHandle = false
		CTool.Parent = plr.Backpack
		CTool.Activated:Connect(function()
			local target = mouse.Target
			if target and target.Parent then
				local booths = target.Parent
				if booths:FindFirstChild("Activate") and booths:FindFirstChild("BaseA") then
					booths:FindFirstChild("Activate"):FindFirstChild("Activate").Enabled = true
                    booths:FindFirstChild("Activate"):FindFirstChild("Activate").HoldDuration = 0
                    booths:FindFirstChild("Activate"):FindFirstChild("Activate").MaxActivationDistance = 0
                    booths:FindFirstChild("Activate"):FindFirstChild("Activate").MaxActivationDistance = 10
                    wait()
                    booths:FindFirstChild("Activate"):FindFirstChild("Activate"):InputHoldBegin()
                    wait()
                    game:GetService("ReplicatedStorage"):FindFirstChild("DeleteBoothOwnership"):FireServer(nil)
                    booths:FindFirstChild("Activate"):FindFirstChild("Activate"):Triggered(plr)
                    game:GetService("ReplicatedStorage"):FindFirstChild("DeleteBoothOwnership"):FireServer(nil)
				end
			end
		end)
        elseif inmicup == false then
            notice("Error Game Requires Mic Up Remotes For This To Work")
        end
    elseif spaceSplit[1] == prefix.."clickfling" or spaceSplit[1] == prefix.."cft" then
        local mouse = plr:GetMouse()
		local FTool = Instance.new("Tool")
		FTool.Name = "Fling Tool"
		FTool.RequiresHandle = false
		FTool.Parent = plr.Backpack
		FTool.Activated:Connect(function()
			local target = mouse.Target
			if target and target.Parent then
				local chara = target.Parent
				if chara:FindFirstChild("Humanoid") then
					local flingTime = 0.288
					local fTime = os.clock()
					local rot = 89078907234507823457890452390784259078345
					local tools = {}
					local originalGrips = {}
					local hum = getChar():FindFirstChildOfClass("Humanoid")
					local root = hum.RootPart
					local tChr = chara
					local tHum = tChr:FindFirstChildOfClass("Humanoid")
					local tRoot = tChr:FindFirstChild("Torso") or tChr:FindFirstChild("UpperTorso")
					local origCF = root.CFrame
					local origState = hum:GetState()
					local origFpdh = workspace.FallenPartsDestroyHeight
					workspace.FallenPartsDestroyHeight = 0 / 0
					hum:ChangeState(Enum.HumanoidStateType.Physics)
					hum:UnequipTools()
					for _, v in ipairs(plr.Backpack:GetChildren()) do
						if v:IsA("Tool") and v:FindFirstChild("Handle") then
							table.insert(tools, v)
							table.insert(originalGrips, v.Grip)
							v.Handle.Massless = true
							v.Grip = CFrame.new(5773, 5774, 5773)
							v.Parent = getChar()
						end
					end
					local bv = Instance.new("BodyVelocity")
					bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
					bv.Velocity = Vector3.new(9e30, 9e30, 9e30)
					bv.Parent = root
					local bav = Instance.new("BodyAngularVelocity")
					bav.AngularVelocity = Vector3.new(9e30, 9e30, 9e30)
					bav.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
					bav.Parent = root
					while true do
						if os.clock() - fTime >= flingTime then
							break
						else
							if rot == 3454574567 then
								rot = 89078907234507823457890452390784259078345
							else
								rot = -3456457578
							end
							root.CFrame = tRoot.CFrame * CFrame.Angles(math.rad(rot), 0, 0) + tHum.MoveDirection * tHum.WalkSpeed * .4
						end
						task.wait()
					end
					hum:ChangeState(origState)
					bav:Destroy()
					bv:Destroy()
					root.Velocity = Vector3.new()
					root.RotVelocity = Vector3.new()
					root.CFrame = origCF
					workspace.FallenPartsDestroyHeight = origFpdh
					for i, v in ipairs(tools) do
						if originalGrips[i] then
							v.Grip = originalGrips[i]
						end
					end
					hum:UnequipTools()
					plr.CharacterAdded:Wait()
					getChar():WaitForChild("HumanoidRootPart").CFrame = old
				end
			end
		end)
    elseif spaceSplit[1] == prefix.."clickkick" or spaceSplit[1] == prefix.."ck" then
        if ssworks == true then
            local mouse = plr:GetMouse()
			local KTool = Instance.new("Tool")
			KTool.Name = "Kick Tool"
			KTool.RequiresHandle = false
			KTool.Parent = plr.Backpack
			KTool.Activated:Connect(function()
				local target = mouse.Target
				if target and target.Parent then
					local chara = target.Parent
					if chara:FindFirstChild("Humanoid") then
                        local target = players:GetPlayerFromCharacter(chara)
			            Destroy(target)
			            game.StarterGui:SetCore("ChatMakeSystemMessage", {
				            Text = ("A Player Was Kicked By "..plr.Name.." Name: "..target.Name.."");
				            Font = Enum.Font.SourceSansBold;
				            Color = Color3.fromRGB(255, 255, 255);
			            })
					end
				end
			end)
        elseif ssworks == false then
            notice("Error Game Requires Remotes For This To Work")
        end
    elseif spaceSplit[1] == prefix.."clicktp" or spaceSplit[1] == prefix.."tpt" then
        local TpTool = Instance.new("Tool")
		TpTool.Name = "Teleport Tool"
		TpTool.RequiresHandle = false
		TpTool.Parent = plr.Backpack
		TpTool.Activated:Connect(function()
			local Char = plr.Character or workspace:FindFirstChild(plr.Name)
			local HRP = Char and Char:FindFirstChild("HumanoidRootPart")
			if not Char or not HRP then
				return warn("Failed to find HumanoidRootPart")
			end
			HRP.CFrame = CFrame.new(plr:GetMouse().Hit.X, plr:GetMouse().Hit.Y + 3, plr:GetMouse().Hit.Z, select(4, HRP.CFrame:components()))
		end)
    elseif spaceSplit[1] == prefix.."clip" or spaceSplit[1] == prefix.."c" then
        nc = true
    elseif spaceSplit[1] == prefix.."closebooth" then
        if inmicup == true then
local val = tonumber(spaceSplit[2])
		if val == nil then return end 
        if val == 1 or val == 2 or val == 3 or val == 4 or val == 5 then
            game:GetService("Workspace"):FindFirstChild("Booth"):FindFirstChild("Booth0"..val):FindFirstChild("Activate"):FindFirstChild("Activate").Enabled = true
            game:GetService("Workspace"):FindFirstChild("Booth"):FindFirstChild("Booth0"..val):FindFirstChild("Activate"):FindFirstChild("Activate").HoldDuration = 0
            game:GetService("Workspace"):FindFirstChild("Booth"):FindFirstChild("Booth0"..val):FindFirstChild("Activate"):FindFirstChild("Activate").MaxActivationDistance = 0
            local Char = plr.Character or workspace:FindFirstChild(plr.Name)
			local HRP = Char and Char:FindFirstChild("HumanoidRootPart")
			if not Char or not HRP then
				return warn("Failed to find HumanoidRootPart")
			end
			HRP.CFrame = game:GetService("Workspace"):FindFirstChild("Booth"):FindFirstChild("Booth0"..val):FindFirstChild("Activate").CFrame
            game:GetService("Workspace"):FindFirstChild("Booth"):FindFirstChild("Booth0"..val):FindFirstChild("Activate"):FindFirstChild("Activate").MaxActivationDistance = 10
            wait()
            game:GetService("Workspace"):FindFirstChild("Booth"):FindFirstChild("Booth0"..val):FindFirstChild("Activate"):FindFirstChild("Activate"):InputHoldBegin()
            wait()
            game:GetService("ReplicatedStorage"):FindFirstChild("DeleteBoothOwnership"):FireServer(nil)
            game:GetService("Workspace"):FindFirstChild("Booth"):FindFirstChild("Booth0"..val):FindFirstChild("Activate"):FindFirstChild("Activate"):Triggered(plr)
            game:GetService("ReplicatedStorage"):FindFirstChild("DeleteBoothOwnership"):FireServer(nil)
        end
        elseif inmicup == false then
            notice("Error Game Requires Mic Up Remotes For This To Work")
        end
    elseif spaceSplit[1] == prefix.."deletegame" or spaceSplit[1] == prefix.."dg" then
        if ssworks == true then
            firesound(4810729995)
			for _, parts in next, game.Workspace:GetDescendants() do
				if parts:IsA("Part") then
					Destroy(parts)
				end
			end
        elseif ssworks == false then
            notice("Error Game Requires Remotes For This To Work")
        end

    elseif spaceSplit[1] == prefix.."equiptools" or spaceSplit[1] == prefix.."eqt" then
        for i,v in pairs(getBp():GetChildren()) do
            if v:IsA("Tool") then
                v.Parent = getChar()
            end
        end
    elseif spaceSplit[1] == prefix.."execute" or spaceSplit[1] == prefix.."exec" then
        local linkss = tostring(spaceSplit[2])
		if linkss == nil then return end 
		loadstring(game:HttpGet(linkss))()
    elseif spaceSplit[1] == prefix.."extendbase" or spaceSplit[1] == prefix.."eb" then
        if inmicup == true then
            local partt = Instance.new("Part")
		partt.Anchored = true
		partt.Position = Vector3.new(90, -0.55, 90)
		partt.Size = Vector3.new(100000, 1, 100000)
		partt.Color = Color3.fromRGB(0, 200, 0)
		partt.Material = Enum.Material.Grass
		partt.Parent = game:GetService("Workspace")
        elseif inmicup == false then
            notice("Error Game Requires Mic Up Remotes For This To Work")
        end
    elseif spaceSplit[1] == prefix.."fall" then
        plr.Character.Humanoid.PlatformStand = true

    elseif spaceSplit[1] == prefix.."faceless" or spaceSplit[1] == prefix.."fal" then
        if ssworks == true then
            local target = getPlr(tostring(spaceSplit[2]):lower())
            Destroy(target.Character.Head.face)
        elseif ssworks == false then
            notice("Error Game Requires Remotes For This To Work")
        end

    elseif spaceSplit[1] == prefix.."fakelag" or spaceSplit[1] == prefix.."fl" then
        Lagging = true
        getChar().Humanoid.WalkSpeed = 17
        getChar().Humanoid.JumpPower = 60
	    repeat wait()
		    getChar().HumanoidRootPart.Anchored = true
            wait()
            getChar().HumanoidRootPart.Anchored = false
	    until Lagging == false

    elseif spaceSplit[1] == prefix.."firetouchinterest" or spaceSplit[1] == prefix.."fti" then
        while true do
			local _, test = pcall(function()
				wait(0.01)
				touch(game:GetService("Workspace").Handle, game.Players.LocalPlayer.Character.HumanoidRootPart)
			end)
			if test then end
		end
    elseif spaceSplit[1] == prefix.."fixself" or spaceSplit[1] == prefix.."fs" then
        if inmicup == true then
            game:GetService("ReplicatedStorage"):FindFirstChild("ModifyUsername"):FireServer(plr.Name)
        elseif inmicup == false then
            notice("Error Game Requires Mic Up Remotes For This To Work")
        end
    elseif spaceSplit[1] == prefix.."fling" or spaceSplit[1] == prefix.."throw" then
        local target = getPlr(tostring(spaceSplit[2]):lower())
		if target == nil then return end
		local flingTime = 0.288
		local fTime = os.clock()
		local rot = 89078907234507823457890452390784259078345
		local tool = getBp():FindFirstChildOfClass("Tool") or getChar():FindFirstChildOfClass("Tool")
		local originalGrip = tool.Grip
		local hum = getChar():FindFirstChildOfClass("Humanoid")
		local root = hum.RootPart
		local tChr = target.Character
		local tHum = tChr:FindFirstChildOfClass("Humanoid")
		local tRoot = tChr:FindFirstChild("Torso") or tChr:FindFirstChild("UpperTorso")
		local origCF = root.CFrame
		local origState = hum:GetState()
		local origFpdh = workspace.FallenPartsDestroyHeight
		workspace.FallenPartsDestroyHeight = 0 / 0
		hum:ChangeState(Enum.HumanoidStateType.Physics)
		hum:UnequipTools()
		tool.Handle.Massless = true
		tool.Grip = CFrame.new(5773, 5774, 5773)
		tool.Parent = getChar()
		local bv = Instance.new("BodyVelocity")
		bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
		bv.Velocity = Vector3.new(9e30, 9e30, 9e30)
		bv.Parent = root
		local bav = Instance.new("BodyAngularVelocity")
		bav.AngularVelocity = Vector3.new(9e30, 9e30, 9e30)
		bav.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
		bav.Parent = root
		while true do
			if os.clock() - fTime >= flingTime then
				break
			else
				if rot == 3454574567 then
					rot = 89078907234507823457890452390784259078345
				else
					rot = -3456457578
				end
				root.CFrame = tRoot.CFrame * CFrame.Angles(math.rad(rot), 0, 0) + tHum.MoveDirection * tHum.WalkSpeed * .4
			end
			task.wait()
		end
		hum:ChangeState(origState)
		bav:Destroy()
		bv:Destroy()
		root.Velocity = Vector3.new()
		root.RotVelocity = Vector3.new()
		root.CFrame = origCF
		workspace.FallenPartsDestroyHeight = origFpdh
		tool.Grip = originalGrip
		hum:UnequipTools()
		plr.CharacterAdded:Wait()
		getChar():WaitForChild("HumanoidRootPart").CFrame = old
    
    elseif spaceSplit[1] == prefix.."fly" then
        if plr.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
			repeat
				wait()
			until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Torso") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid")
			local d = game.Players.LocalPlayer:GetMouse()
			repeat
				wait()
			until d
			local b = game.Players.LocalPlayer
			local c = b.Character.Torso

			local e = true
			local a = true
			local h = {
				f = 0,
				b = 0,
				l = 0,
				r = 0
			}
			local f = {
				f = 0,
				b = 0,
				l = 0,
				r = 0
			}
			local a = 50
			local g = 0
			function Fly()
				local d = Instance.new("BodyGyro", c)
				d.P = 9e4
				d.maxTorque = Vector3.new(9e9, 9e9, 9e9)
				d.cframe = c.CFrame
				local c = Instance.new("BodyVelocity", c)
				c.velocity = Vector3.new(0, 0.00001, 0)
				c.maxForce = Vector3.new(9e9, 9e9, 9e9)
				repeat
					wait()
					b.Character.Humanoid.PlatformStand = true
					if h.l + h.r ~= 0 or h.f + h.b ~= 0 then
						g = g + .5 + (g / a)
						if g > a then
							g = a
						end
					elseif not(h.l + h.r ~= 0 or h.f + h.b ~= 0) and g ~= 0 then
						g = g - 1
						if g < 0 then
							g = 0
						end
					end
					if (h.l + h.r) ~= 0 or (h.f + h.b) ~= 0 then
						c.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (h.f + h.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(h.l + h.r, (h.f + h.b) * .00002, 0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p)) * g
						f = {
							f = h.f,
							b = h.b,
							l = h.l,
							r = h.r
						}
					elseif (h.l + h.r) == 0 and (h.f + h.b) == 0 and g ~= 0 then
						c.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (f.f + f.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(f.l + f.r, (f.f + f.b) * .00002, 0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p)) * g
					else
						c.velocity = Vector3.new(0, 0.00001, 0)
					end
					d.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((h.f + h.b) * 0.00001 * g / a), 0, 0)
				until not e
				h = {
					f = 0,
					b = 0,
					l = 0,
					r = 0
				}
				f = {
					f = 0,
					b = 0,
					l = 0,
					r = 0
				}
				g = 0
				d:Destroy()
				c:Destroy()
				b.Character.Humanoid.PlatformStand = false
			end
			d.KeyDown:connect(function(a)
				if a:lower() == "e" then
					if e then
						e = false
					else
						e = true
						Fly()
					end
				elseif a:lower() == "w" then
					h.f = 1
				elseif a:lower() == "s" then
					h.b = -1
				elseif a:lower() == "a" then
					h.l = -1
				elseif a:lower() == "d" then
					h.r = 1
				end
			end)
			d.KeyUp:connect(function(a)
				if a:lower() == "w" then
					h.f = 0
				elseif a:lower() == "s" then
					h.b = 0
				elseif a:lower() == "a" then
					h.l = 0
				elseif a:lower() == "d" then
					h.r = 0
				end
			end)
			Fly()
		elseif plr.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
			repeat
				wait()
			until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("UpperTorso") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid")
			local d = game.Players.LocalPlayer:GetMouse()
			repeat
				wait()
			until d
			local b = game.Players.LocalPlayer
			local c = b.Character.UpperTorso
			local e = true
			local a = true
			local h = {
				f = 0,
				b = 0,
				l = 0,
				r = 0
			}
			local f = {
				f = 0,
				b = 0,
				l = 0,
				r = 0
			}
			local a = 50
			local g = 0
			function Fly()
				local d = Instance.new("BodyGyro", c)
				d.P = 9e4
				d.maxTorque = Vector3.new(9e9, 9e9, 9e9)
				d.cframe = c.CFrame
				local c = Instance.new("BodyVelocity", c)
				c.velocity = Vector3.new(0, 0.00001, 0)
				c.maxForce = Vector3.new(9e9, 9e9, 9e9)
				repeat
					wait()
					b.Character.Humanoid.PlatformStand = true
					if h.l + h.r ~= 0 or h.f + h.b ~= 0 then
						g = g + .5 + (g / a)
						if g > a then
							g = a
						end
					elseif not(h.l + h.r ~= 0 or h.f + h.b ~= 0) and g ~= 0 then
						g = g - 1
						if g < 0 then
							g = 0
						end
					end
					if (h.l + h.r) ~= 0 or (h.f + h.b) ~= 0 then
						c.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (h.f + h.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(h.l + h.r, (h.f + h.b) * .00002, 0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p)) * g
						f = {
							f = h.f,
							b = h.b,
							l = h.l,
							r = h.r
						}
					elseif (h.l + h.r) == 0 and (h.f + h.b) == 0 and g ~= 0 then
						c.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (f.f + f.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(f.l + f.r, (f.f + f.b) * .00002, 0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p)) * g
					else
						c.velocity = Vector3.new(0, 0.00001, 0)
					end
					d.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((h.f + h.b) * 0.00001 * g / a), 0, 0)
				until not e
				h = {
					f = 0,
					b = 0,
					l = 0,
					r = 0
				}
				f = {
					f = 0,
					b = 0,
					l = 0,
					r = 0
				}
				g = 0
				d:Destroy()
				c:Destroy()
				b.Character.Humanoid.PlatformStand = false
			end
			d.KeyDown:connect(function(a)
				if a:lower() == "e" then
					if e then
						e = false
					else
						e = true
						Fly()
					end
				elseif a:lower() == "w" then
					h.f = 1
				elseif a:lower() == "s" then
					h.b = -1
				elseif a:lower() == "a" then
					h.l = -1
				elseif a:lower() == "d" then
					h.r = 1
				end
			end)
			d.KeyUp:connect(function(a)
				if a:lower() == "w" then
					h.f = 0
				elseif a:lower() == "s" then
					h.b = 0
				elseif a:lower() == "a" then
					h.l = 0
				elseif a:lower() == "d" then
					h.r = 0
				end
			end)
			Fly()
		end
    
    elseif spaceSplit[1] == prefix.."freeze" or spaceSplit[1] == prefix.."anchor" then
        getChar().HumanoidRootPart.Anchored = true

    elseif spaceSplit[1] == prefix.."goto" or spaceSplit[1] == prefix.."to" then
        local target = getPlr(tostring(spaceSplit[2]):lower())
		tpbypass(target)

    elseif spaceSplit[1] == prefix.."hipheight" or spaceSplit[1] == prefix.."hh" then
        local val = tonumber(spaceSplit[2])
		if val == nil then return end 
		getChar().Humanoid.HipHeight = val
    elseif spaceSplit[1] == prefix.."invisible" or spaceSplit[1] == prefix.."invis" then
        if invisRunning then return end
	invisRunning = true
	-- Full credit to AmokahFox @V3rmillion
	local Player = plr
	repeat wait(.1) until Player.Character
	local Character = Player.Character
	Character.Archivable = true
	local IsInvis = false
	local IsRunning = true
	local InvisibleCharacter = Character:Clone()
	InvisibleCharacter.Parent = Lighting
	local Void = workspace.FallenPartsDestroyHeight
	InvisibleCharacter.Name = ""
	local CF

	local invisFix = RunService.Stepped:Connect(function()
		pcall(function()
			local IsInteger
			if tostring(Void):find'-' then
				IsInteger = true
			else
				IsInteger = false
			end
			local Pos = Player.Character.HumanoidRootPart.Position
			local Pos_String = tostring(Pos)
			local Pos_Seperate = Pos_String:split(', ')
			local X = tonumber(Pos_Seperate[1])
			local Y = tonumber(Pos_Seperate[2])
			local Z = tonumber(Pos_Seperate[3])
			if IsInteger == true then
				if Y <= Void then
					Respawn()
				end
			elseif IsInteger == false then
				if Y >= Void then
					Respawn()
				end
			end
		end)
	end)

	for i,v in pairs(InvisibleCharacter:GetDescendants())do
		if v:IsA("BasePart") then
			if v.Name == "HumanoidRootPart" then
				v.Transparency = 1
			else
				v.Transparency = .5
			end
		end
	end

	function Respawn()
		IsRunning = false
		if IsInvis == true then
			pcall(function()
				Player.Character = Character
				wait()
				Character.Parent = workspace
				--Character:FindFirstChildWhichIsA'Humanoid':Destroy()
				IsInvis = false
				InvisibleCharacter.Parent = nil
				invisRunning = false
			end)
		elseif IsInvis == false then
			pcall(function()
				Player.Character = Character
				wait()
				Character.Parent = workspace
				--Character:FindFirstChildWhichIsA'Humanoid':Destroy()
				TurnVisible()
			end)
		end
	end

	local invisDied
	invisDied = InvisibleCharacter:FindFirstChildOfClass'Humanoid'.Died:Connect(function()
		Respawn()
		invisDied:Disconnect()
	end)

	if IsInvis == true then return end
	IsInvis = true
	CF = workspace.CurrentCamera.CFrame
	local CF_1 = Player.Character.HumanoidRootPart.CFrame
	Character:MoveTo(Vector3.new(0,math.pi*1000000,0))
	workspace.CurrentCamera.CameraType = Enum.CameraType.Scriptable
	wait(.2)
	workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
	InvisibleCharacter = InvisibleCharacter
	Character.Parent = Lighting
	InvisibleCharacter.Parent = workspace
	InvisibleCharacter.HumanoidRootPart.CFrame = CF_1
	Player.Character = InvisibleCharacter
	
	workspace.CurrentCamera:remove()
	wait(.1)
	repeat wait() until plr.Character ~= nil
	workspace.CurrentCamera.CameraSubject = plr.Character:FindFirstChildWhichIsA('Humanoid')
	workspace.CurrentCamera.CameraType = "Custom"
	plr.CameraMinZoomDistance = 0.5
	plr.CameraMaxZoomDistance = 400
	plr.CameraMode = "Classic"
	plr.Character.Head.Anchored = false
	
	Player.Character.Animate.Disabled = true
	Player.Character.Animate.Disabled = false

	function TurnVisible()
		if IsInvis == false then return end
		invisFix:Disconnect()
		invisDied:Disconnect()
		CF = workspace.CurrentCamera.CFrame
		Character = Character
		local CF_1 = Player.Character.HumanoidRootPart.CFrame
		Character.HumanoidRootPart.CFrame = CF_1
		InvisibleCharacter:Destroy()
		Player.Character = Character
		Character.Parent = workspace
		IsInvis = false
		Player.Character.Animate.Disabled = true
		Player.Character.Animate.Disabled = false
		invisDied = Character:FindFirstChildOfClass'Humanoid'.Died:Connect(function()
			Respawn()
			invisDied:Disconnect()
		end)
		invisRunning = false
	end
    elseif spaceSplit[1] == prefix.."jumppower" or spaceSplit[1] == prefix.."jp" then
        local val = tonumber(spaceSplit[2])
		if val == nil then return end 
		getChar().Humanoid.JumpPower = val
    elseif spaceSplit[1] == prefix.."kick" or spaceSplit[1] == prefix.."remove" then
        if ssworks == true then
            local target = getPlr(tostring(spaceSplit[2]):lower())
			Destroy(target)
			game.StarterGui:SetCore("ChatMakeSystemMessage", {
				Text = ("A Player Was Kicked By "..plr.Name.." Name: "..target.Name.."");
				Font = Enum.Font.SourceSansBold;
				Color = Color3.fromRGB(255, 255, 255);
			})
        elseif ssworks == false then
            notice("Error Game Requires Remotes For This To Work")
        end
    elseif spaceSplit[1] == prefix.."kill" then
        if ssworks == true then
            local target = getPlr(tostring(spaceSplit[2]):lower())
			if target.Character:FindFirstChildOfClass("Humanoid").RigType == Enum.HumanoidRigType.R6 then
				Destroy(target.Character.Torso.Neck)
			else
				Destroy(target.Character.Head.Neck)
			end
        elseif ssworks == false then
            local target = getPlr(tostring(spaceSplit[2]):lower())
			if target == nil then return end
			local tool = getBp():FindFirstChildOfClass("Tool") or getChar():FindFirstChildOfClass("Tool")
            local originalGrip = tool.Grip
            tool.Handle.Massless = true
            tool.Grip = CFrame.new(0, 5774, 0)
			disableatoolnim()
			tool.Parent = plr.Character
            stopsoundinobj(tool)
			repeat wait()
                stopsoundinobj(tool)
				touch(target.Character.Humanoid.RootPart, tool.Handle)
                tool:Activate()
			until target.Character.Humanoid.Health <= 0 or plr.Character.Humanoid.Health <= 0
			stopsoundinobj(tool)
            enabletoolanim()
            stopsoundinobj(tool)
			getChar():FindFirstChildOfClass("Humanoid"):UnequipTools()
            tool.Grip = originalGrip
        end
    elseif spaceSplit[1] == prefix.."legless" or spaceSplit[1] == prefix.."ll" then
        if ssworks == true then
            local target = getPlr(tostring(spaceSplit[2]):lower())
            if target.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
				Destroy(target.Character.LeftUpperLeg)
                Destroy(target.Character.RightUpperLeg)
			else
                Destroy(target.Character:FindFirstChild("Left Leg"))
                Destroy(target.Character:FindFirstChild("Righ Leg"))
            end
        elseif ssworks == false then
            notice("Error Game Requires Remotes For This To Work")
        end
    
    elseif spaceSplit[1] == prefix.."naked" then
        if ssworks == true then
            local target = getPlr(tostring(spaceSplit[2]):lower())
            Destroy(target.Character.Shirt)
            Destroy(target.Character.Pants)
        elseif ssworks == false then
            notice("Error Game Requires Remotes For This To Work")
        end
    elseif spaceSplit[1] == prefix.."noclip" or spaceSplit[1] == prefix.."nc" then
        nc = true
    elseif spaceSplit[1] == prefix.."owner" then
        local target = getPlr(tostring(spaceSplit[2]):lower())
		owners[target.UserId] = {target = target}
		Chat("/w "..target.Name.." [AV2]: Hello, You Have Been Given Owner. Type "..prefix.."cmds To See All Commands.")
    elseif spaceSplit[1] == prefix.."punish" or spaceSplit[1] == prefix.."hide" then
        if ssworks == true then
            local target = getPlr(tostring(spaceSplit[2]):lower())
			Destroy(target.Character)
        elseif ssworks == false then
            notice("Error Game Requires Remotes For This To Work")
        end
    elseif spaceSplit[1] == prefix.."rainbowbooth" or spaceSplit[1] == prefix.."rb" then
        if inmicup == true then
            local val = tostring(spaceSplit[2])
		if val == nil then return end 
		rbb = true
		repeat wait()
			game:GetService("ReplicatedStorage"):FindFirstChild("UpdateBoothText"):FireServer(val, "Gray", "SourceSans")
			wait(1)
			game:GetService("ReplicatedStorage"):FindFirstChild("UpdateBoothText"):FireServer(val, "Red", "SourceSans")
			wait(1)
			game:GetService("ReplicatedStorage"):FindFirstChild("UpdateBoothText"):FireServer(val, "Teal", "SourceSans")
			wait(1)
			game:GetService("ReplicatedStorage"):FindFirstChild("UpdateBoothText"):FireServer(val, "Sun", "SourceSans")
			wait(1)
			game:GetService("ReplicatedStorage"):FindFirstChild("UpdateBoothText"):FireServer(val, "Cinder", "SourceSans")
			wait(1)
			game:GetService("ReplicatedStorage"):FindFirstChild("UpdateBoothText"):FireServer(val, "Lace", "SourceSans")
			wait(1) 
		until rbb == false
        elseif inmicup == false then
            notice("Error Game Requires Mic Up Remotes For This To Work")
        end
    elseif spaceSplit[1] == prefix.."refresh" or spaceSplit[1] == prefix.."re" then
        for _, sound in next, plr.Character:GetDescendants() do
			if sound:IsA("Part") then
				sound.Anchored = true
			end
		end
		local cr = getChar()
		local old = cr:FindFirstChild("HumanoidRootPart").CFrame
		reset()
		plr.CharacterAdded:Wait()
		getChar():WaitForChild("HumanoidRootPart").CFrame = old
    elseif spaceSplit[1] == prefix.."rejoin" or spaceSplit[1] == prefix.."rj" then
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, plr)
    elseif spaceSplit[1] == prefix.."serverlock" or spaceSplit[1] == prefix.."slock" then
        if ssworks == true then
            slockk = true
        elseif ssworks == false then
            notice("Error Game Requires Remotes For This To Work")
        end
    elseif spaceSplit[1] == prefix.."setwall" or spaceSplit[1] == prefix.."sw" then
        if inmicup == true then
            local val = tostring(spaceSplit[2])
		if val == nil then return end 
		for i = 1,55 do
			wait(0.5)
			game:GetService("ReplicatedStorage"):FindFirstChild("SubmitTextEvent"):FireServer(val)
		end
        elseif inmicup == false then
            notice("Error Game Requires Mic Up Remotes For This To Work")
        end
    elseif spaceSplit[1] == prefix.."shutdown" then
        if ssworks == true then
            for i,v in pairs(game:GetService("Players"):GetPlayers()) do
				if v.Name ~= lplayer.Name then
					Destroy(v)
				end
			end 
			for i,v in pairs(game:GetService("Players"):GetPlayers()) do
				if v.Name == lplayer.Name then
					Destroy(v)
				end
			end
        elseif ssworks == false then
            notice("Error Game Requires Remotes For This To Work")
        end
    elseif spaceSplit[1] == prefix.."sit" then
        plr.Character.Humanoid.Sit = true
    elseif spaceSplit[1] == prefix.."telek" then
        local function a(b, c)
			local d = getfenv(c)
			local e =
				setmetatable(
					{},
					{__index = function(self, f)
						if f == "script" then
							return b
						else
							return d[f]
						end
					end}
				)
			setfenv(c, e)
			return c
		end
		local g = {}
		local h = Instance.new("Model", game:GetService("Lighting"))
		local i = Instance.new("Tool")
		local j = Instance.new("Part")
		local k = Instance.new("Script")
		local l = Instance.new("LocalScript")
		local m = sethiddenproperty or set_hidden_property
		i.Name = "Custom Tool"
		i.Parent = h
		i.Grip = CFrame.new(0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0)
		i.GripForward = Vector3.new(-0, -3, -0)
		i.GripRight = Vector3.new(0, 0, 1)
		i.GripUp = Vector3.new(1, 0, 0)
		j.Name = "Handle"
		j.Parent = i
		j.CFrame = CFrame.new(-20.2635937, 15.4915619, 46, 0, 1, 0, 1, 0, 0, 0, 0, -1)
		j.Orientation = Vector3.new(0, 180, 90)
		j.Position = Vector3.new(-20.2635937, 15.4915619, 46)
		j.Rotation = Vector3.new(-180, 0, -90)
		j.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
		j.Transparency = 0.5
		j.Size = Vector3.new(1, 2.20000005, 1)
		j.BottomSurface = Enum.SurfaceType.Weld
		j.BrickColor = BrickColor.new("Cyan")
		j.Material = Enum.Material.Neon
		j.TopSurface = Enum.SurfaceType.Smooth
		j.brickColor = BrickColor.new("Cyan")
		k.Name = "LineConnect"
		k.Parent = i
		table.insert(
			g,
			a(
				k,
				function()
					wait()
					local n = script.Part2
					local o = script.Part1.Value
					local p = script.Part2.Value
					local q = script.Par.Value
					local color = script.Color
					local r = Instance.new("Part")
					r.TopSurface = 0
					r.BottomSurface = 0
					r.Reflectance = .5
					r.Name = "Laser"
					r.Locked = true
					r.CanCollide = false
					r.Anchored = true
					r.formFactor = 0
					r.Size = Vector3.new(1, 1, 1)
					local s = Instance.new("BlockMesh")
					s.Parent = r
					while true do
						if n.Value == nil then
							break
						end
						if o == nil or p == nil or q == nil then
							break
						end
						if o.Parent == nil or p.Parent == nil then
							break
						end
						if q.Parent == nil then
							break
						end
						local t = CFrame.new(o.Position, p.Position)
						local dist = (o.Position - p.Position).magnitude
						r.Parent = q
						r.BrickColor = color.Value.BrickColor
						r.Reflectance = color.Value.Reflectance
						r.Transparency = color.Value.Transparency
						r.CFrame = CFrame.new(o.Position + t.lookVector * dist / 2)
						r.CFrame = CFrame.new(r.Position, p.Position)
						s.Scale = Vector3.new(.25, .25, dist)
						wait()
					end
					r:remove()
					script:remove()
				end
			)
		)
		k.Disabled = true
		l.Name = "MainScript"
		l.Parent = i
		table.insert(
			g,
			a(
				l,
				function()
					wait()
					tool = script.Parent
					lineconnect = tool.LineConnect
					object = nil
					mousedown = false
					found = false
					BP = Instance.new("BodyPosition")
					BP.maxForce = Vector3.new(math.huge * math.huge, math.huge * math.huge, math.huge * math.huge)
					BP.P = BP.P * 1.1
					dist = nil
					point = Instance.new("Part")
					point.Locked = true
					point.Anchored = true
					point.formFactor = 0
					point.Shape = 0
					point.BrickColor = BrickColor.Blue()
					point.Size = Vector3.new(4, 4, 4)
					point.CanCollide = true
					local s = Instance.new("SpecialMesh")
					s.MeshType = "Sphere"
					s.Scale = Vector3.new(.7, .7, .7)
					s.Parent = point
					handle = tool.Handle
					front = tool.Handle
					color = tool.Handle
					objval = nil
					local u = false
					local v = BP:clone()
					v.maxForce = Vector3.new(30000, 30000, 30000)
					function LineConnect(o, p, q)
						local w = Instance.new("ObjectValue")
						w.Value = o
						w.Name = "Part1"
						local x = Instance.new("ObjectValue")
						x.Value = p
						x.Name = "Part2"
						local y = Instance.new("ObjectValue")
						y.Value = q
						y.Name = "Par"
						local z = Instance.new("ObjectValue")
						z.Value = color
						z.Name = "Color"
						local A = lineconnect:clone()
						A.Disabled = false
						w.Parent = A
						x.Parent = A
						y.Parent = A
						z.Parent = A
						A.Parent = workspace
						if p == object then
							objval = x
						end
					end
					function onButton1Down(B)
						if mousedown == true then
							return
						end
						mousedown = true
						coroutine.resume(
							coroutine.create(
								function()
									local C = point:clone()
									C.Parent = tool
									LineConnect(front, C, workspace)
									while mousedown == true do
										C.Parent = tool
										if object == nil then
											if B.Target == nil then
												local t = CFrame.new(front.Position, B.Hit.p)
												C.CFrame = CFrame.new(front.Position + t.lookVector * 1000)
											else
												C.CFrame = CFrame.new(B.Hit.p)
											end
										else
											LineConnect(front, object, workspace)
											break
										end
										wait()
									end
									C:remove()
								end
							)
						)
						while mousedown == true do
							if B.Target ~= nil then
								local D = B.Target
								if D.Anchored == false then
									object = D
									dist = (object.Position - front.Position).magnitude
									break
								end
							end
							wait()
						end
						while mousedown == true do
							if object.Parent == nil then
								break
							end
							local t = CFrame.new(front.Position, B.Hit.p)
							BP.Parent = object
							BP.position = front.Position + t.lookVector * dist
							wait()
						end
						BP:remove()
						object = nil
						objval.Value = nil
					end
					function onKeyDown(E, B)
						local E = E:lower()
						local F = false
						if E == "q" then
							if dist >= 5 then
								dist = dist - 10
							end
						end
						if E == "r" then
							if object == nil then
								return
							end
							for G, H in pairs(object:children()) do
								if H.className == "BodyGyro" then
									return nil
								end
							end
							BG = Instance.new("BodyGyro")
							BG.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
							BG.cframe = CFrame.new(object.CFrame.p)
							BG.Parent = object
							repeat
								wait()
							until object.CFrame == CFrame.new(object.CFrame.p)
							BG.Parent = nil
							if object == nil then
								return
							end
							for G, H in pairs(object:children()) do
								if H.className == "BodyGyro" then
									H.Parent = nil
								end
							end
							object.Velocity = Vector3.new(0, 0, 0)
							object.RotVelocity = Vector3.new(0, 0, 0)
							object.Orientation = Vector3.new(0, 0, 0)
						end
						if E == "e" then
							dist = dist + 10
						end
						if E == "t" then
							if dist ~= 10 then
								dist = 10
							end
						end
						if E == "y" then
							if dist ~= 100 then
								dist = 100
							end
						end
						if E == "=" then
							BP.P = BP.P * 1.5
						end
						if E == "-" then
							BP.P = BP.P * 0.5
						end
					end
					function onEquipped(B)
						keymouse = B
						local I = tool.Parent
						human = I.Humanoid
						human.Changed:connect(
							function()
								if human.Health == 0 then
									mousedown = false
									BP:remove()
									point:remove()
									tool:remove()
								end
							end
						)
						B.Button1Down:connect(
							function()
								onButton1Down(B)
							end
						)
						B.Button1Up:connect(
							function()
								mousedown = false
							end
						)
						B.KeyDown:connect(
							function(E)
								onKeyDown(E, B)
							end
						)
						B.Icon = "rbxasset://textures\\GunCursor.png"
					end
					tool.Equipped:connect(onEquipped)
				end
			)
		)
		for J, H in pairs(h:GetChildren()) do
			H.Parent = game:GetService("Players").LocalPlayer.Backpack
			pcall(
				function()
					H:MakeJoints()
				end
			)
		end
		h:Destroy()
		for J, H in pairs(g) do
			spawn(
				function()
					pcall(H)
				end
			)
		end
    elseif spaceSplit[1] == prefix.."toolfling" or spaceSplit[1] == prefix.."tf" then
        local olddh = workspace.FallenPartsDestroyHeight
		workspace.FallenPartsDestroyHeight = 0/0
		local tool = getBp():FindFirstChildOfClass("Tool") or getChar():FindFirstChildOfClass("Tool")
		disableatoolnim()
		tool.Handle.Massless = true
		repeat wait()
			tool.GripPos = Vector3.new(-999999999, 999999999999999999, -999999999)
			tool.GripPos = Vector3.new(-5000, 6000, -5000)
		until getChar().Humanoid.Health >= 0

    elseif spaceSplit[1] == prefix.."unadmin" then
        local target = getPlr(tostring(spaceSplit[2]):lower())
		admins[target.UserId] = nil
		Chat("/w "..target.Name.." [AV2]: Hello, Your Admin Was Removed.")
    elseif spaceSplit[1] == prefix.."unautorespawn" or spaceSplit[1] == prefix.."unautore" then
        autoro = false
    elseif spaceSplit[1] == prefix.."unbang" or spaceSplit[1] == prefix.."unrape" then
        if bangDied then
			bangDied:Disconnect()
			bang:Stop()
			bangAnim:Destroy()
			bangLoop:Disconnect()
		end
    elseif spaceSplit[1] == prefix.."unfreeze" or spaceSplit[1] == prefix.."unanchor" then
         getChar().HumanoidRootPart.Anchored = false

    elseif spaceSplit[1] == prefix.."unfakelag" or spaceSplit[1] == prefix.."unfl" then
        Lagging = false
        getChar().Humanoid.WalkSpeed = 17
        getChar().Humanoid.JumpPower = 45
        getChar.Character.HumanoidRootPart.Anchored = false

    elseif spaceSplit[1] == prefix.."unfall" then
        plr.Character.Humanoid.PlatformStand = false
    elseif spaceSplit[1] == prefix.."unowner" then
        local target = getPlr(tostring(spaceSplit[2]):lower())
		owners[target.UserId] = nil
		Chat("/w "..target.Name.." [AV2]: Hello, Your Owner Was Removed.")
    elseif spaceSplit[1] == prefix.."unrainbowbooth" or spaceSplit[1] == prefix.."unrb" then
        if inmicup == true then
            rbb = false
        elseif inmicup == false then
            notice("Error Game Requires Mic Up Remotes For This To Work")
        end
    elseif spaceSplit[1] == prefix.."unserverlock" or spaceSplit[1] == prefix.."unslock" then
        if ssworks == true then
            slockk = false
        elseif ssworks == false then
            notice("Error Game Requires Remotes For This To Work")
        end
    elseif spaceSplit[1] == prefix.."unvoiceban" or spaceSplit[1] == prefix.."unvcb" then
	game:GetService("VoiceChatService"):joinVoice()

    elseif spaceSplit[1] == prefix.."unview" or spaceSplit[1] == prefix.."unwatch" then
        workspace.CurrentCamera.CameraSubject = plr.Character.Humanoid
    elseif spaceSplit[1] == prefix.."view" or spaceSplit[1] == prefix.."watch" then
        local target = getPlr(tostring(spaceSplit[2]):lower())
		workspace.CurrentCamera.CameraSubject = target.Character.Humanoid
    elseif spaceSplit[1] == prefix.."visible" or spaceSplit[1] == prefix.."vis" then
        TurnVisible()

    elseif spaceSplit[1] == prefix.."walkspeed" or spaceSplit[1] == prefix.."ws" then
        local val = tonumber(spaceSplit[2])
		if val == nil then return end 
		getChar().Humanoid.WalkSpeed = val 
    else
    print("ignore")
	end
end
print("load3")
noticenotbutton("No Remotes Server Scripts Wont Work")
notice("Script Has Been Fully Loaded! Enjoy")
firesound(6366788549)
CommandBar.BackgroundTransparency = 1
FocusBar.BackgroundTransparency = 1
FocusBar.Focused:connect(function()
	CommandBar.Visible = true
    FocusBar.Text = ""
    for i = 1,0.4,-0.1 do
	    CommandBar.BackgroundTransparency = i
	    FocusBar.BackgroundTransparency = i
	    wait()
    end
end)
FocusBar.FocusLost:connect(function(enterPressed)
	local Rem = FocusBar.Text
    sendcmd(Rem)
	FocusBar.Text = ""
    for i = 0.4,1,0.1 do
	    CommandBar.BackgroundTransparency = i
	    FocusBar.BackgroundTransparency = i
	    wait()
    end
	CommandBar.Visible = false
	wait()
end)
game:GetService("Players").LocalPlayer:GetMouse().KeyDown:connect(function(input)
	if scriptunloaded == false then
		if (input == prefix) then
			FocusBar:CaptureFocus()
			CommandBar.Visible = true
			wait()
		end
	end
end)
local cc;cc = plr.Chatted:Connect(function(msg)
    sendcmd(msg)
end)
local function Command(Cmd)
	return Arg1 == prefix..Cmd
end

function AdminPlayerChatted(Message, target)
	Split = Message:split(" ")
	Arg1 = Split[1]
	Arg2 = Split[2]
	Arg3 = Split[3]
	Arg4 = Split[4]
	local old = Command
	local Command = function(cmd) return old(cmd, target) end 
	if Command("kill") then
		if ssworks == true then
			local target = getPlr(Arg2)
			if target == nil then return end
			if target.Character:FindFirstChildOfClass("Humanoid").RigType == Enum.HumanoidRigType.R6 then
				Destroy(target.Character.Torso.Neck)
			else
				Destroy(target.Character.Head.Neck)
			end
			game.StarterGui:SetCore("ChatMakeSystemMessage", {
				Text = ("A Player Was Killed Name: "..target.Name.."");
				Font = Enum.Font.SourceSansBold;
				Color = Color3.fromRGB(255, 255, 255);
			})
		else
			local target = getPlr(Arg2)
			if target == nil then return end
			local tool = getBp():FindFirstChildOfClass("Tool") or getChar():FindFirstChildOfClass("Tool")
			local tools = {}
			local originalGrips = {}
			for _, v in ipairs(plr.Backpack:GetChildren()) do
				if v:IsA("Tool") and v:FindFirstChild("Handle") then
					table.insert(tools, v)
					table.insert(originalGrips, v.Grip)
					v.Handle.Massless = true
					v.Grip = CFrame.new(0, 5774, 0)
					v.Parent = getChar()
				end
			end
			local hum = getChar():FindFirstChildOfClass("Humanoid")
			disableatoolnim()
			tool.Parent = plr.Character
			repeat wait()
				firetouchinterest(tool.Handle, target.Character.Humanoid.RootPart, 0)
				firetouchinterest(tool.Handle, target.Character.Humanoid.RootPart, 1)
			until target.Character.Humanoid.Health <= 0
			enabletoolanim()
			hum:UnequipTools()
			for i, v in ipairs(tools) do
				if originalGrips[i] then
					v.Grip = originalGrips[i]
				end
			end
		end
		game.StarterGui:SetCore("ChatMakeSystemMessage", {
			Text = ("A Player Was Killed Name: "..target.Name.."");
			Font = Enum.Font.SourceSansBold;
			Color = Color3.fromRGB(255, 255, 255);
		})
	end
	if Command("fling") then
		local target = getPlr(Arg2)
		if target == nil then return end
		local flingTime = 0.288
		local fTime = os.clock()
		local rot = 89078907234507823457890452390784259078345
		local tools = {}
		local originalGrips = {}
		local hum = getChar():FindFirstChildOfClass("Humanoid")
		local root = hum.RootPart
		local tChr = target.Character
		local tHum = tChr:FindFirstChildOfClass("Humanoid")
		local tRoot = tChr:FindFirstChild("Torso") or tChr:FindFirstChild("UpperTorso")
		local origCF = root.CFrame
		local origState = hum:GetState()
		local origFpdh = workspace.FallenPartsDestroyHeight
		workspace.FallenPartsDestroyHeight = 0 / 0
		hum:ChangeState(Enum.HumanoidStateType.Physics)
		hum:UnequipTools()
		for _, v in ipairs(plr.Backpack:GetChildren()) do
			if v:IsA("Tool") and v:FindFirstChild("Handle") then
				table.insert(tools, v)
				table.insert(originalGrips, v.Grip)
				v.Handle.Massless = true
				v.Grip = CFrame.new(5773, 5774, 5773)
				v.Parent = getChar()
			end
		end
		local bv = Instance.new("BodyVelocity")
		bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
		bv.Velocity = Vector3.new(9e30, 9e30, 9e30)
		bv.Parent = root
		local bav = Instance.new("BodyAngularVelocity")
		bav.AngularVelocity = Vector3.new(9e30, 9e30, 9e30)
		bav.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
		bav.Parent = root
		while true do
			if os.clock() - fTime >= flingTime then
				break
			else
				if rot == 3454574567 then
					rot = 89078907234507823457890452390784259078345
				else
					rot = -3456457578
				end
				root.CFrame = tRoot.CFrame * CFrame.Angles(math.rad(rot), 0, 0) + tHum.MoveDirection * tHum.WalkSpeed * .4
			end
			task.wait()
		end
		hum:ChangeState(origState)
		bav:Destroy()
		bv:Destroy()
		root.Velocity = Vector3.new()
		root.RotVelocity = Vector3.new()
		root.CFrame = origCF
		workspace.FallenPartsDestroyHeight = origFpdh
		for i, v in ipairs(tools) do
			if originalGrips[i] then
				v.Grip = originalGrips[i]
			end
		end
		hum:UnequipTools()
		plr.CharacterAdded:Wait()
		getChar():WaitForChild("HumanoidRootPart").CFrame = old
		game.StarterGui:SetCore("ChatMakeSystemMessage", {
			Text = ("A Player Was Flinged Name: "..target.Name.."");
			Font = Enum.Font.SourceSansBold;
			Color = Color3.fromRGB(255, 255, 255);
		})
	end

	if Command("kick") then
		if ssworks == true then
			local target = getPlr(Arg2)
			if target == nil then return end
			Destroy(target)
			game.StarterGui:SetCore("ChatMakeSystemMessage", {
				Text = ("A Player Was Kicked Name: "..target.Name.."");
				Font = Enum.Font.SourceSansBold;
				Color = Color3.fromRGB(255, 255, 255);
			})
		end
	end

	if Command("punish") then
		if ssworks == true then
			local target = getPlr(Arg2)
			if target == nil then return end
			Destroy(target.Character)
			game.StarterGui:SetCore("ChatMakeSystemMessage", {
				Text = ("A Player Was Punished Name: "..target.Name.."");
				Font = Enum.Font.SourceSansBold;
				Color = Color3.fromRGB(255, 255, 255);
			})
		end
	end

	if Command("cmd") or Command("cmds") then
		Chat("/w "..target.Name.." [AV2]: Hello, Your Commands Are: "..prefix.."kill [plr],  "..prefix.."fling [plr].")
		wait(0.1)
		if ssworks == true then
			Chat("/w "..target.Name.." [AV2]: Remote Commands: "..prefix.."kick [plr], "..prefix.."punish [plr].")
		end
	end
end
function OwnerPlayerChatted(Message, target)
	Split = Message:split(" ")
	Arg1 = Split[1]
	Arg2 = Split[2]
	Arg3 = Split[3]
	Arg4 = Split[4]
	local old = Command
	local Command = function(cmd) return old(cmd, target) end 
	if Command("kill") then
		if ssworks == true then
			local target = getPlr(Arg2)
			if target == nil then return end
			if target.Character:FindFirstChildOfClass("Humanoid").RigType == Enum.HumanoidRigType.R6 then
				Destroy(target.Character.Torso.Neck)
			else
				Destroy(target.Character.Head.Neck)
			end
			game.StarterGui:SetCore("ChatMakeSystemMessage", {
				Text = ("A Player Was Killed Name: "..target.Name.."");
				Font = Enum.Font.SourceSansBold;
				Color = Color3.fromRGB(255, 255, 255);
			})
		else
			local target = getPlr(Arg2)
			if target == nil then return end
			local tool = getBp():FindFirstChildOfClass("Tool") or getChar():FindFirstChildOfClass("Tool")
			local tools = {}
			local originalGrips = {}
			for _, v in ipairs(plr.Backpack:GetChildren()) do
				if v:IsA("Tool") and v:FindFirstChild("Handle") then
					table.insert(tools, v)
					table.insert(originalGrips, v.Grip)
					v.Handle.Massless = true
					v.Grip = CFrame.new(0, 5774, 0)
					v.Parent = getChar()
				end
			end
			local hum = getChar():FindFirstChildOfClass("Humanoid")
			disableatoolnim()
			tool.Parent = plr.Character
			repeat wait()
				firetouchinterest(tool.Handle, target.Character.Humanoid.RootPart, 0)
				firetouchinterest(tool.Handle, target.Character.Humanoid.RootPart, 1)
			until target.Character.Humanoid.Health <= 0
			enabletoolanim()
			hum:UnequipTools()
			for i, v in ipairs(tools) do
				if originalGrips[i] then
					v.Grip = originalGrips[i]
				end
			end
		end
		game.StarterGui:SetCore("ChatMakeSystemMessage", {
			Text = ("A Player Was Killed Name: "..target.Name.."");
			Font = Enum.Font.SourceSansBold;
			Color = Color3.fromRGB(255, 255, 255);
		})
	end
	if Command("fling") then
		local target = getPlr(Arg2)
		if target == nil then return end
		local flingTime = 0.288
		local fTime = os.clock()
		local rot = 89078907234507823457890452390784259078345
		local tools = {}
		local originalGrips = {}
		local hum = getChar():FindFirstChildOfClass("Humanoid")
		local root = hum.RootPart
		local tChr = target.Character
		local tHum = tChr:FindFirstChildOfClass("Humanoid")
		local tRoot = tChr:FindFirstChild("Torso") or tChr:FindFirstChild("UpperTorso")
		local origCF = root.CFrame
		local origState = hum:GetState()
		local origFpdh = workspace.FallenPartsDestroyHeight
		workspace.FallenPartsDestroyHeight = 0 / 0
		hum:ChangeState(Enum.HumanoidStateType.Physics)
		hum:UnequipTools()
		for _, v in ipairs(plr.Backpack:GetChildren()) do
			if v:IsA("Tool") and v:FindFirstChild("Handle") then
				table.insert(tools, v)
				table.insert(originalGrips, v.Grip)
				v.Handle.Massless = true
				v.Grip = CFrame.new(5773, 5774, 5773)
				v.Parent = getChar()
			end
		end
		local bv = Instance.new("BodyVelocity")
		bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
		bv.Velocity = Vector3.new(9e30, 9e30, 9e30)
		bv.Parent = root
		local bav = Instance.new("BodyAngularVelocity")
		bav.AngularVelocity = Vector3.new(9e30, 9e30, 9e30)
		bav.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
		bav.Parent = root
		while true do
			if os.clock() - fTime >= flingTime then
				break
			else
				if rot == 3454574567 then
					rot = 89078907234507823457890452390784259078345
				else
					rot = -3456457578
				end
				root.CFrame = tRoot.CFrame * CFrame.Angles(math.rad(rot), 0, 0) + tHum.MoveDirection * tHum.WalkSpeed * .4
			end
			task.wait()
		end
		hum:ChangeState(origState)
		bav:Destroy()
		bv:Destroy()
		root.Velocity = Vector3.new()
		root.RotVelocity = Vector3.new()
		root.CFrame = origCF
		workspace.FallenPartsDestroyHeight = origFpdh
		for i, v in ipairs(tools) do
			if originalGrips[i] then
				v.Grip = originalGrips[i]
			end
		end
		hum:UnequipTools()
		plr.CharacterAdded:Wait()
		getChar():WaitForChild("HumanoidRootPart").CFrame = old
		game.StarterGui:SetCore("ChatMakeSystemMessage", {
			Text = ("A Player Was Flinged Name: "..target.Name.."");
			Font = Enum.Font.SourceSansBold;
			Color = Color3.fromRGB(255, 255, 255);
		})
	end
	if Command("kick") then
		if ssworks == true then
			local target = getPlr(Arg2)
			if target == nil then return end
			Destroy(target)
			game.StarterGui:SetCore("ChatMakeSystemMessage", {
				Text = ("A Player Was Kicked Name: "..target.Name.."");
				Font = Enum.Font.SourceSansBold;
				Color = Color3.fromRGB(255, 255, 255);
			})
		end
	end

	if Command("ban") then
		if ssworks == true then
			local target = getPlr(Arg2)
			if target == nil then return end
			table.insert(banned, target.UserId)
			Destroy(target)
			game.StarterGui:SetCore("ChatMakeSystemMessage", {
				Text = ("A Player Was Banned Name: "..target.Name.."");
				Font = Enum.Font.SourceSansBold;
				Color = Color3.fromRGB(255, 255, 255);
			})
		end
	end

	if Command("punish") then
		if ssworks == true then
			local target = getPlr(Arg2)
			if target == nil then return end
			Destroy(target.Character)
			game.StarterGui:SetCore("ChatMakeSystemMessage", {
				Text = ("A Player Was Punished Name: "..target.Name.."");
				Font = Enum.Font.SourceSansBold;
				Color = Color3.fromRGB(255, 255, 255);
			})
		end
	end

	if Command("slock") then
		if ssworks == true then
			slockk = true
			game.StarterGui:SetCore("ChatMakeSystemMessage", {
				Text = ("A Player Slocked The Server");
				Font = Enum.Font.SourceSansBold;
				Color = Color3.fromRGB(255, 255, 255);
			})
		end
	end

	if Command("shutdown") then 
		if ssworks == true then
			for i,v in pairs(game:GetService("Players"):GetPlayers()) do
				if v.Name ~= lplayer.Name then
					Destroy(v)
				end
			end 
			for i,v in pairs(game:GetService("Players"):GetPlayers()) do
				if v.Name == lplayer.Name then
					Destroy(v)
				end
			end
		end
	end

	if Command("cmd") or Command("cmds") then
		Chat("/w "..target.Name.." [AV2]: Hello, Your Commands Are: "..prefix.."kill [plr],  "..prefix.."fling [plr], "..prefix.."protect [plr], "..prefix.."bringc.")
		wait(0.1)
		if ssworks == true then
			Chat("/w "..target.Name.." [AV2]: Remote Commands: "..prefix.."kick [plr], "..prefix.."ban [plr], "..prefix.."punish [plr], "..prefix.."slock, "..prefix.."shutdown.")
		end
	end
end

game.Players.LocalPlayer.Chatted:Connect(PlayerChatted)
function CheckPermissions(target) 
	if scriptunloaded == false then
		local connection = target.Chatted:Connect(function(Message)
			if admins[target.UserId] then
				AdminPlayerChatted(Message, target)
			end
			if owners[target.UserId] then
				OwnerPlayerChatted(Message, target)
			end
		end)
		table.insert(connections, connection)
	end
end

for i,v in pairs(game.Players:GetPlayers()) do 
	if v ~= game.Players.LocalPlayer then 
		CheckPermissions(v) 
	end 
end

local connection = game.Players.PlayerAdded:Connect(function(newPlayer)
	CheckPermissions(newPlayer)
end)
table.insert(connections, connection) 