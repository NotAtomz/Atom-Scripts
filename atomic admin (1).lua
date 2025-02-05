function firesound(soundid)
local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://"..soundid..""
sound.Parent = game:GetService("SoundService")
sound:Play()
end
firesound(6366788549)
function notice(Message)
firesound(1544910054)
local Notice = Instance.new("ScreenGui")
local Panel = Instance.new("Frame")
local Bar = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local TextButton = Instance.new("TextButton")
local glow = Instance.new("ImageLabel")
local UICorner_2 = Instance.new("UICorner")
local glow_2 = Instance.new("ImageLabel")
local glow_3 = Instance.new("ImageLabel")
local Section_Holder = Instance.new("ImageLabel")
local Noticetext = Instance.new("TextLabel")

Notice.Name = "Notice"
Notice.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Notice.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Notice.ResetOnSpawn = false

Panel.Name = "Panel"
Panel.Parent = Notice
Panel.AnchorPoint = Vector2.new(0.5, 0.5)
Panel.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Panel.BorderSizePixel = 0
Panel.Position = UDim2.new(0.49978137, 0, 0.499285161, 0)
Panel.Size = UDim2.new(0, 284, 0, 175)

Bar.Name = "Bar"
Bar.Parent = Panel
Bar.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Bar.BorderSizePixel = 0
Bar.Size = UDim2.new(1, 0, -0.154285714, 80)
Bar.ZIndex = 2

Title.Name = "Title"
Title.Parent = Bar
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Position = UDim2.new(0, 10, 0, 12)
Title.Size = UDim2.new(1, -20, 0, 18)
Title.ZIndex = 2
Title.Font = Enum.Font.GothamBold
Title.Text = "Atomic Admin"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 16.000
Title.TextXAlignment = Enum.TextXAlignment.Left

UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = Bar

TextButton.Parent = Bar
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 1.000
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.85915494, 0, 0, 0)
TextButton.Size = UDim2.new(0, 30, 0, 35)
TextButton.Font = Enum.Font.SourceSansBold
TextButton.Text = "X"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 20.000
TextButton.TextWrapped = true

glow.Name = "glow"
glow.Parent = Panel
glow.Active = true
glow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
glow.BackgroundTransparency = 1.000
glow.BorderSizePixel = 0
glow.Position = UDim2.new(0, -15, 0, -15)
glow.Size = UDim2.new(1, 30, 1, 30)
glow.ZIndex = 0
glow.Image = "rbxassetid://4996891970"
glow.ImageColor3 = Color3.fromRGB(15, 15, 15)
glow.ScaleType = Enum.ScaleType.Slice
glow.SliceCenter = Rect.new(20, 20, 280, 280)

UICorner_2.CornerRadius = UDim.new(0, 5)
UICorner_2.Parent = Panel

glow_2.Name = "glow"
glow_2.Parent = Panel
glow_2.Active = true
glow_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
glow_2.BackgroundTransparency = 1.000
glow_2.BorderSizePixel = 0
glow_2.Position = UDim2.new(0, -15, 0, -15)
glow_2.Size = UDim2.new(1, 30, 1, 30)
glow_2.ZIndex = 0
glow_2.Image = "rbxassetid://4996891970"
glow_2.ImageColor3 = Color3.fromRGB(15, 15, 15)
glow_2.ScaleType = Enum.ScaleType.Slice
glow_2.SliceCenter = Rect.new(20, 20, 280, 280)

glow_3.Name = "glow"
glow_3.Parent = Panel
glow_3.Active = true
glow_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
glow_3.BackgroundTransparency = 1.000
glow_3.BorderSizePixel = 0
glow_3.Position = UDim2.new(0, -15, 0, -15)
glow_3.Size = UDim2.new(1, 30, 1, 30)
glow_3.ZIndex = 0
glow_3.Image = "rbxassetid://4996891970"
glow_3.ImageColor3 = Color3.fromRGB(15, 15, 15)
glow_3.ScaleType = Enum.ScaleType.Slice
glow_3.SliceCenter = Rect.new(20, 20, 280, 280)

Section_Holder.Name = "Section_Holder"
Section_Holder.Parent = Panel
Section_Holder.BackgroundColor3 = Color3.fromRGB(239, 239, 239)
Section_Holder.BackgroundTransparency = 1.000
Section_Holder.Position = UDim2.new(0, 10, 0, 35)
Section_Holder.Size = UDim2.new(1, -20, 1.06285715, -56)
Section_Holder.ZIndex = 3
Section_Holder.Image = "rbxassetid://4608020054"
Section_Holder.ImageColor3 = Color3.fromRGB(30, 30, 30)
Section_Holder.ScaleType = Enum.ScaleType.Slice
Section_Holder.SliceCenter = Rect.new(128, 128, 128, 128)
Section_Holder.SliceScale = 0.030

Noticetext.Name = "Noticetext"
Noticetext.Parent = Section_Holder
Noticetext.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Noticetext.BackgroundTransparency = 1.000
Noticetext.BorderColor3 = Color3.fromRGB(0, 0, 0)
Noticetext.BorderSizePixel = 0
Noticetext.Position = UDim2.new(0.0227272734, 0, 0.0571420528, 0)
Noticetext.Size = UDim2.new(0, 251, 0, 122)
Noticetext.Font = Enum.Font.SourceSans
Noticetext.Text = Message
Noticetext.TextColor3 = Color3.fromRGB(255, 255, 255)
Noticetext.TextSize = 16.000
Noticetext.TextWrapped = true
Noticetext.TextXAlignment = Enum.TextXAlignment.Left
Noticetext.TextYAlignment = Enum.TextYAlignment.Top

local function ZJNOM_fake_script() -- TextButton.Script 
	local script = Instance.new('Script', TextButton)
function onClicked(GUI)
	 Notice:remove()
	end
	script.Parent.MouseButton1Click:connect(onClicked)
end
coroutine.wrap(ZJNOM_fake_script)()
local function OJNGD_fake_script() -- Panel.Smooth GUI Dragging 
	local script = Instance.new('LocalScript', Panel)

	local UserInputService = game:GetService("UserInputService")
	local runService = (game:GetService("RunService"));
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	function Lerp(a, b, m)
		return a + (b - a) * m
	end;
	
	local lastMousePos
	local lastGoalPos
	local DRAG_SPEED = (8); -- // The speed of the UI darg.
	function Update(dt)
		if not (startPos) then return end;
		if not (dragging) and (lastGoalPos) then
			gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED))
			return 
		end;
	
		local delta = (lastMousePos - UserInputService:GetMouseLocation())
		local xGoal = (startPos.X.Offset - delta.X);
		local yGoal = (startPos.Y.Offset - delta.Y);
		lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
		gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, xGoal, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, yGoal, dt * DRAG_SPEED))
	end;
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			lastMousePos = UserInputService:GetMouseLocation()
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	runService.Heartbeat:Connect(Update)
end
coroutine.wrap(OJNGD_fake_script)()
end
loadstring(game:HttpGet("https://pastebin.com/raw/hR9gsNAB"))()
notice("Welcome To Atomic Admin (Reborn Of Atom Admin), This Admin Includes Lots Of Current Working Commands! Please Enjoy The Admin.") 
function Chat(Message)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(Message, "All")
end
local players = game:GetService("Players")
local plr = players.LocalPlayer
local tws = game:GetService('TweenService')
local tweeninfo = TweenInfo.new(1,Enum.EasingStyle.Linear)
RunService = game:GetService("RunService")
lplayer = game:GetService("Players").LocalPlayer
prefix = ";"
ssworks = false
function tpbypass(v)
if plr.Character and plr.Character:FindFirstChild('HumanoidRootPart') then
local cf = v.Character.Humanoid.RootPart.CFrame
local a = tws:Create(plr.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
a:Play()
end
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
    for i,v in pairs(players:GetPlayers()) do
        if v.Name:lower():match(str) or v.DisplayName:lower():match(str) then
            return v
        end
    end
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

local netless_Y = Vector3.new(0, 26, 0)
local v3_101 = Vector3.new(1, 0, 1)
local inf = math.huge
local v3_0 = Vector3.new(0,0,0)
local function getNetlessVelocity(realPartVelocity) --edit this if you have a better netless method
    if (realPartVelocity.Y > 1) or (realPartVelocity.Y < -1) then
        return realPartVelocity * (25.1 / realPartVelocity.Y)
    end
    realPartVelocity = realPartVelocity * v3_101
    local mag = realPartVelocity.Magnitude
    if mag > 1 then
        realPartVelocity = realPartVelocity * 100 / mag
    end
    return realPartVelocity + netless_Y
end
local function replacehum()
    local h = plr.Character:FindFirstChild("Humanoid"):Clone()
    plr.Character:FindFirstChild("Humanoid"):Destroy()
    h.Parent = plr.Character
end
if game:GetService("ReplicatedStorage"):FindFirstChild("DeleteCar") or game:GetService("ReplicatedStorage"):FindFirstChild("GuiHandler") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("HandlessSegway") or game:GetService("ReplicatedStorage"):FindFirstChild("Building Tools") then
ssworks = true
end

local function align(Part0, Part1, p, r)
	Part0.CustomPhysicalProperties = PhysicalProperties.new(0.0001, 0.0001, 0.0001, 0.0001, 0.0001)
    Part0.CFrame = Part1.CFrame
	local att0 = Instance.new("Attachment", Part0)
	att0.Orientation = r or v3_0
	att0.Position = v3_0
	att0.Name = "att0_" .. Part0.Name
	local att1 = Instance.new("Attachment", Part1)
	att1.Orientation = v3_0 
	att1.Position = p or v3_0
	att1.Name = "att1_" .. Part1.Name

	local apd = Instance.new("AlignPosition", att0)
	apd.ApplyAtCenterOfMass = false
	apd.MaxForce = inf
	apd.MaxVelocity = inf
	apd.ReactionForceEnabled = false
	apd.Responsiveness = 200
	apd.Attachment1 = att1
	apd.Attachment0 = att0
	apd.Name = "AlignPositionRfalse"
	apd.RigidityEnabled = false

	local ao = Instance.new("AlignOrientation", att0)
	ao.MaxAngularVelocity = inf
	ao.MaxTorque = inf
	ao.PrimaryAxisOnly = false
	ao.ReactionTorqueEnabled = false
	ao.Responsiveness = 200
	ao.Attachment1 = att1
	ao.Attachment0 = att0
	ao.RigidityEnabled = false
    
	if type(getNetlessVelocity) == "function" then
	    local realVelocity = Vector3.new(0,30,0)
        local steppedcon = game:GetService("RunService").Stepped:Connect(function()
            Part0.Velocity = realVelocity
        end)
        local heartbeatcon = game:GetService("RunService").Heartbeat:Connect(function()
            realVelocity = Part0.Velocity
            Part0.Velocity = getNetlessVelocity(realVelocity)
        end)
        Part0.Destroying:Connect(function()
            Part0 = nil
            steppedcon:Disconnect()
            heartbeatcon:Disconnect()
        end)
	end
	
    att0.Orientation = r or v3_0
	att0.Position = v3_0
	att1.Orientation = v3_0 
	att1.Position = p or v3_0
	Part0.CFrame = Part1.CFrame
end
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
local netsleepTargets = {}
local nsLoop
nsLoop = game:GetService("RunService").Stepped:Connect(function()
    if #netsleepTargets == 0 then return end
    for i,v in pairs(netsleepTargets) do
        if v.Character then
            for i,v in pairs(v.Character:GetChildren()) do
                if v:IsA("BasePart") == false and v:IsA("Accessory") == false then continue end
                if v:IsA("BasePart") then
                    sethiddenproperty(v,"NetworkIsSleeping",true)
                elseif v:IsA("Accessory") and v:FindFirstChild("Handle") then
                    sethiddenproperty(v.Handle,"NetworkIsSleeping",true)
                end
            end
        end
    end
end)
function Destroy(instance)
	spawn(function()
	if game:GetService("ReplicatedStorage"):FindFirstChild("DeleteCar") then
		game:GetService("ReplicatedStorage").DeleteCar:FireServer(instance)
		
	elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("HandlessSegway") then
	for i,slaves in pairs(game:GetDescendants()) do
				if slaves.Name == "DestroySegway" then
					slaves:FireServer(instance, {Value = instance})
				end
			end
			elseif game:GetService("ReplicatedStorage"):FindFirstChild("GuiHandler") then
			game:GetService("ReplicatedStorage").GuiHandler:FireServer(false, instance)
	
	elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Building Tools") then
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
local cc;cc = plr.Chatted:Connect(function(msg)
    local spaceSplit = msg:split(" ")
    if spaceSplit[1] == prefix.."antifling" then
loadstring(game:HttpGet("https://raw.githubusercontent.com/NotAtomz/Atom-Scripts/main/anti%20fling"))()
elseif spaceSplit[1] == prefix.."banpanel" then
if ssworks == true then
firesound(1544910054)
local Banpanel = Instance.new("ScreenGui")
local Panel = Instance.new("Frame")
local Bar = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local closebanpanel = Instance.new("TextButton")
local banpaneltitle = Instance.new("TextLabel")
local glow = Instance.new("ImageLabel")
local UICorner_2 = Instance.new("UICorner")
local glow_2 = Instance.new("ImageLabel")
local glow_3 = Instance.new("ImageLabel")
local banbutton = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local enternameforban = Instance.new("TextBox")
local UICorner_4 = Instance.new("UICorner")

Banpanel.Name = "Ban panel"
Banpanel.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Banpanel.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Banpanel.ResetOnSpawn = false

Panel.Name = "Panel"
Panel.Parent = Banpanel
Panel.AnchorPoint = Vector2.new(0.5, 0.5)
Panel.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Panel.BorderSizePixel = 0
Panel.Position = UDim2.new(0.49978137, 0, 0.499285161, 0)
Panel.Size = UDim2.new(0, 284, 0, 367)

Bar.Name = "Bar"
Bar.Parent = Panel
Bar.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Bar.BorderSizePixel = 0
Bar.Size = UDim2.new(1, 0, 0, 80)
Bar.ZIndex = 2

Title.Name = "Title"
Title.Parent = Bar
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Position = UDim2.new(0, 10, 0, 12)
Title.Size = UDim2.new(1, -20, 0, 18)
Title.ZIndex = 2
Title.Font = Enum.Font.GothamBold
Title.Text = "Atomic Admin"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 16.000
Title.TextXAlignment = Enum.TextXAlignment.Left

UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = Bar

closebanpanel.Name = "closebanpanel"
closebanpanel.Parent = Bar
closebanpanel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
closebanpanel.BackgroundTransparency = 1.000
closebanpanel.BorderColor3 = Color3.fromRGB(0, 0, 0)
closebanpanel.BorderSizePixel = 0
closebanpanel.Position = UDim2.new(0.85915494, 0, 0, 0)
closebanpanel.Size = UDim2.new(0, 30, 0, 35)
closebanpanel.Font = Enum.Font.SourceSansBold
closebanpanel.Text = "X"
closebanpanel.TextColor3 = Color3.fromRGB(255, 255, 255)
closebanpanel.TextSize = 20.000
closebanpanel.TextWrapped = true

banpaneltitle.Name = "banpaneltitle"
banpaneltitle.Parent = Bar
banpaneltitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
banpaneltitle.BackgroundTransparency = 1.000
banpaneltitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
banpaneltitle.BorderSizePixel = 0
banpaneltitle.Position = UDim2.new(0, 0, 0.4375, 0)
banpaneltitle.Size = UDim2.new(0, 284, 0, 45)
banpaneltitle.Font = Enum.Font.SourceSansBold
banpaneltitle.Text = "BAN PANEL"
banpaneltitle.TextColor3 = Color3.fromRGB(255, 255, 255)
banpaneltitle.TextSize = 25.000
banpaneltitle.TextWrapped = true

glow.Name = "glow"
glow.Parent = Panel
glow.Active = true
glow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
glow.BackgroundTransparency = 1.000
glow.BorderSizePixel = 0
glow.Position = UDim2.new(0, -15, 0, -15)
glow.Size = UDim2.new(1, 30, 1, 30)
glow.ZIndex = 0
glow.Image = "rbxassetid://4996891970"
glow.ImageColor3 = Color3.fromRGB(15, 15, 15)
glow.ScaleType = Enum.ScaleType.Slice
glow.SliceCenter = Rect.new(20, 20, 280, 280)

UICorner_2.CornerRadius = UDim.new(0, 5)
UICorner_2.Parent = Panel

glow_2.Name = "glow"
glow_2.Parent = Panel
glow_2.Active = true
glow_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
glow_2.BackgroundTransparency = 1.000
glow_2.BorderSizePixel = 0
glow_2.Position = UDim2.new(0, -15, 0, -15)
glow_2.Size = UDim2.new(1, 30, 1, 30)
glow_2.ZIndex = 0
glow_2.Image = "rbxassetid://4996891970"
glow_2.ImageColor3 = Color3.fromRGB(15, 15, 15)
glow_2.ScaleType = Enum.ScaleType.Slice
glow_2.SliceCenter = Rect.new(20, 20, 280, 280)

glow_3.Name = "glow"
glow_3.Parent = Panel
glow_3.Active = true
glow_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
glow_3.BackgroundTransparency = 1.000
glow_3.BorderSizePixel = 0
glow_3.Position = UDim2.new(0, -15, 0, -15)
glow_3.Size = UDim2.new(1, 30, 1, 30)
glow_3.ZIndex = 0
glow_3.Image = "rbxassetid://4996891970"
glow_3.ImageColor3 = Color3.fromRGB(15, 15, 15)
glow_3.ScaleType = Enum.ScaleType.Slice
glow_3.SliceCenter = Rect.new(20, 20, 280, 280)

banbutton.Name = "banbutton"
banbutton.Parent = Panel
banbutton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
banbutton.BorderColor3 = Color3.fromRGB(0, 0, 0)
banbutton.BorderSizePixel = 0
banbutton.Position = UDim2.new(0.0352112688, 0, 0.901907265, 0)
banbutton.Size = UDim2.new(0, 264, 0, 25)
banbutton.Font = Enum.Font.SourceSansBold
banbutton.Text = "BAN"
banbutton.TextColor3 = Color3.fromRGB(255, 255, 255)
banbutton.TextSize = 24.000
banbutton.TextWrapped = true

UICorner_3.CornerRadius = UDim.new(0, 5)
UICorner_3.Parent = banbutton

TextLabel.Parent = Panel
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.0352112688, 0, 0.217983648, 0)
TextLabel.Size = UDim2.new(0, 264, 0, 32)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "ENTER USERNAME YOU WANT TO BAN"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 14.000
TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom

enternameforban.Name = "enternameforban"
enternameforban.Parent = Panel
enternameforban.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
enternameforban.BorderColor3 = Color3.fromRGB(0, 0, 0)
enternameforban.BorderSizePixel = 0
enternameforban.Position = UDim2.new(0.0352112688, 0, 0.321525872, 0)
enternameforban.Size = UDim2.new(0, 264, 0, 33)
enternameforban.Font = Enum.Font.SourceSans
enternameforban.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
enternameforban.PlaceholderText = "ENTER NAME"
enternameforban.Text = ""
enternameforban.TextColor3 = Color3.fromRGB(255, 255, 255)
enternameforban.TextSize = 14.000

UICorner_4.CornerRadius = UDim.new(0, 5)
UICorner_4.Parent = enternameforban

local function SODBYUS_fake_script() -- closebanpanel.Script 
	local script = Instance.new('Script', closebanpanel)
	function onClicked(GUI)
	 Banpanel:remove()
	end
	script.Parent.MouseButton1Click:connect(onClicked)
end
coroutine.wrap(SODBYUS_fake_script)()
local function ZYXU_fake_script() -- Panel.Smooth GUI Dragging 
	local script = Instance.new('LocalScript', Panel)

	local UserInputService = game:GetService("UserInputService")
	local runService = (game:GetService("RunService"));
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	function Lerp(a, b, m)
		return a + (b - a) * m
	end;
	
	local lastMousePos
	local lastGoalPos
	local DRAG_SPEED = (8); -- // The speed of the UI darg.
	function Update(dt)
		if not (startPos) then return end;
		if not (dragging) and (lastGoalPos) then
			gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED))
			return 
		end;
	
		local delta = (lastMousePos - UserInputService:GetMouseLocation())
		local xGoal = (startPos.X.Offset - delta.X);
		local yGoal = (startPos.Y.Offset - delta.Y);
		lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
		gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, xGoal, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, yGoal, dt * DRAG_SPEED))
	end;
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			lastMousePos = UserInputService:GetMouseLocation()
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	runService.Heartbeat:Connect(Update)
end
coroutine.wrap(ZYXU_fake_script)()
local function WNNEQ_fake_script() -- banbutton.Script 
	local script = Instance.new('Script', banbutton)
function onClicked(GUI)
	 local target = getPlr(enternameforban.Text)
		table.insert(banned, target.UserId)
			Destroy(target)
			game.StarterGui:SetCore("ChatMakeSystemMessage", {
    Text = ("A Player Was Banned By "..plr.Name.." Name: "..target.Name.."");
    Font = Enum.Font.SourceSansBold;
    Color = Color3.fromRGB(255, 255, 255);
})
	end
	script.Parent.MouseButton1Click:connect(onClicked)
end
coroutine.wrap(WNNEQ_fake_script)()
else
notice("Unable To Find Required Remote, Maybe Try A Different Game With The Required Remote.")
end
elseif spaceSplit[1] == prefix.."breakchat" then
wait(0.5)
for i=1,6 do
Chat(" ")
end

elseif spaceSplit[1] == prefix.."clip" then
nc = false
elseif spaceSplit[1] == prefix.."deletegame" then
if ssworks == true then
firesound(4810729995)
for _, parts in next, game.Workspace:GetDescendants() do
    if parts:IsA("Part") then
        Destroy(parts)
    end
    end
    else
    notice("Unable To Find Required Remote, Maybe Try A Different Game With The Required Remote.")
    end
elseif spaceSplit[1] == prefix.."explode" then
local target = getPlr(tostring(spaceSplit[2]):lower())
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
plr.Character.Animate.Disabled = true
        tool.Parent = plr.Character
        repeat wait()
        firetouchinterest(tool.Handle, target.Character.Humanoid.RootPart, 0)
        firetouchinterest(tool.Handle, target.Character.Humanoid.RootPart, 1)
        until target.Character.Humanoid.Health <= 0
        plr.Character.Animate.Disabled = false
        hum:UnequipTools()
                for i, v in ipairs(tools) do
            if originalGrips[i] then
                v.Grip = originalGrips[i]
            end
        end
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
elseif spaceSplit[1] == prefix.."firetouchinterest" then
 while true do
            local _, test = pcall(function()
            wait(0.01)
            firetouchinterest(game:GetService("Workspace").Handle, game.Players.LocalPlayer.Character.HumanoidRootPart, 0) -- 1 is untouch
            wait()
            firetouchinterest(game:GetService("Workspace").Handle, game.Players.LocalPlayer.Character.HumanoidRootPart, 1) -- 1 is untouch
            end)
            if test then end
            end
elseif spaceSplit[1] == prefix.."fling" then
local target = getPlr(tostring(spaceSplit[2]):lower())
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
elseif spaceSplit[1] == prefix.."hipheight" then
local val = tonumber(spaceSplit[2])
        if val == nil then return end 
        getChar().Humanoid.HipHeight = val
elseif spaceSplit[1] == prefix.."jumppower" then
local val = tonumber(spaceSplit[2])
        if val == nil then return end 
        getChar().Humanoid.JumpPower = val
elseif spaceSplit[1] == prefix.."kick" then
if ssworks == true then
		local target = getPlr(tostring(spaceSplit[2]):lower())
		Destroy(target)
	game.StarterGui:SetCore("ChatMakeSystemMessage", {
    Text = ("A Player Was Kicked By "..plr.Name.." Name: "..target.Name.."");
    Font = Enum.Font.SourceSansBold;
    Color = Color3.fromRGB(255, 255, 255);
})
else
notice("Unable To Find Required Remote, Maybe Try A Different Game With The Required Remote.")
end
elseif spaceSplit[1] == prefix.."kill" then
if ssworks == true then
local target = getPlr(tostring(spaceSplit[2]):lower())

			if target.Character:FindFirstChildOfClass("Humanoid").RigType == Enum.HumanoidRigType.R6 then
			Destroy(target.Character.Torso.Neck)
			else
			Destroy(target.Character.Head.Neck)
			end
			else
local target = getPlr(tostring(spaceSplit[2]):lower())
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
elseif spaceSplit[1] == prefix.."noclip" then
nc = true
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
else
notice("Unable To Find Required Remote, Maybe Try A Different Game With The Required Remote.")
end
elseif spaceSplit[1] == prefix.."rejoin" then
game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, plr)
elseif spaceSplit[1] == prefix.."sit" then
plr.Character.Humanoid.Sit = true
elseif spaceSplit[1] == prefix.."to" then
local target = getPlr(tostring(spaceSplit[2]):lower())
        tpbypass(target)
elseif spaceSplit[1] == prefix.."fly" then
loadstring(game:HttpGet("https://raw.githubusercontent.com/NotAtomz/Atom-Scripts/main/fly"))()
elseif spaceSplit[1] == prefix.."toolfling" then
local olddh = workspace.FallenPartsDestroyHeight
workspace.FallenPartsDestroyHeight = 0/0
local tool = getBp():FindFirstChildOfClass("Tool") or getChar():FindFirstChildOfClass("Tool")
disableatoolnim()
tool.Handle.Massless = true
repeat wait()
    tool.GripPos = Vector3.new(-999999999, 999999999999999999, -999999999)
tool.GripPos = Vector3.new(-5000, 6000, -5000)
until getChar().Humanoid.Health >= 0

elseif spaceSplit[1] == prefix.."unview" then
workspace.CurrentCamera.CameraSubject = plr.Character.Humanoid
elseif spaceSplit[1] == prefix.."btools" then
loadstring(game:GetObjects("rbxassetid://6695644299")[1].Source)()
elseif spaceSplit[1] == prefix.."view" then
local target = getPlr(tostring(spaceSplit[2]):lower())
workspace.CurrentCamera.CameraSubject = target.Character.Humanoid
elseif spaceSplit[1] == prefix.."walkspeed" then
 local val = tonumber(spaceSplit[2])
        if val == nil then return end 
        getChar().Humanoid.WalkSpeed = val 
elseif spaceSplit[1] == prefix.."refresh" then
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
elseif spaceSplit[1] == prefix.."checkremotes" then	
if ssworks == true then
notice("Required Remote Has Been Detected, Enjoy The Required Remote Commands.")
    else
    notice("Unable To Find Required Remote, Maybe Try A Different Game With The Required Remote.")
    end
elseif spaceSplit[1] == prefix.."commands" then
loadstring(game:HttpGet("https://pastebin.com/raw/RHze4xBk"))()

elseif spaceSplit[1] == prefix.."stop" then
cc:Disconnect()
        nsLoop:Disconnect()
        ncLoop:Disconnect()
        end
        end)

local prisonadmincmdbar = Instance.new("ScreenGui")
local cmdbar = Instance.new("Frame")
local text = Instance.new("TextBox")
local Focus = Instance.new("Frame")
local Dilimeter = Instance.new("TextLabel")
local SBar = Instance.new("TextLabel")

--Properties:

prisonadmincmdbar.Name = "prison admin cmdbar"
prisonadmincmdbar.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

cmdbar.Name = "cmdbar"
cmdbar.Parent = prisonadmincmdbar
cmdbar.BackgroundColor3 = Color3.fromRGB(73, 71, 191)
cmdbar.BackgroundTransparency = 1.000
cmdbar.BorderSizePixel = 0
cmdbar.Position = UDim2.new(0.435000002, -345, 0.899999976, 0)
cmdbar.Size = UDim2.new(0, 950, 0, 26)
cmdbar.ZIndex = 2

text.Name = "text"
text.Parent = cmdbar
text.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
text.BorderSizePixel = 0
text.Size = UDim2.new(0, 950, 0, 26)
text.BackgroundTransparency = 1
text.TextTransparency = 1
text.Font = Enum.Font.SourceSans
text.PlaceholderText = "Type your command you would like to send | Atomic Admin"
text.Text = ""
text.TextColor3 = Color3.fromRGB(198, 198, 198)
text.TextSize = 18.000
text.TextXAlignment = Enum.TextXAlignment.Left

Focus.Name = "Focus"
Focus.Parent = text
Focus.AnchorPoint = Vector2.new(0, 0.349999994)
Focus.BackgroundColor3 = Color3.fromRGB(82, 148, 255)
Focus.BorderSizePixel = 0
Focus.Position = UDim2.new(0.47300002, 0, 1.02900004, 0)
Focus.Size = UDim2.new(0, 0, 0, 5)

Dilimeter.Name = "Dilimeter"
Dilimeter.Parent = text
Dilimeter.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Dilimeter.BorderSizePixel = 0
Dilimeter.Position = UDim2.new(-0.0380000062, 0, 0, 0)
Dilimeter.Size = UDim2.new(0, 36, 0, 26)
Dilimeter.ZIndex = 0
Dilimeter.Font = Enum.Font.SourceSansBold
Dilimeter.Text = ">"
Dilimeter.BackgroundTransparency = 1
Dilimeter.TextTransparency = 1
Dilimeter.TextColor3 = Color3.fromRGB(255, 255, 255)
Dilimeter.TextSize = 20.000

SBar.Name = "SBar"
SBar.Parent = text
SBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SBar.BackgroundTransparency = 1.000
SBar.Size = UDim2.new(1, 0, 1, 0)
SBar.Font = Enum.Font.SourceSansBold
SBar.Text = ""
SBar.TextColor3 = Color3.fromRGB(168, 168, 168)
SBar.TextSize = 18.000
SBar.TextXAlignment = Enum.TextXAlignment.Left

text.Focused:connect(function()
	text.Text = ""

end)
text.FocusLost:connect(function(enterPressed)
	local Rem = text.Text

	game.Players:Chat(Rem)
	text.Text = ""
	for i = 0,1,0.1 do
	text.BackgroundTransparency = i
    text.TextTransparency = i
	Dilimeter.TextTransparency = i
	Dilimeter.BackgroundTransparency = i
	wait()
end
end)
game:GetService("Players").LocalPlayer:GetMouse().KeyDown:connect(function(input)
	if (input == prefix) then
		text:CaptureFocus()
		for i = 1,0,-0.1 do
	text.BackgroundTransparency = i
	text.TextTransparency = i
	Dilimeter.TextTransparency = i
	Dilimeter.BackgroundTransparency = i
	wait()
end


	end
end)