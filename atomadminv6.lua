-- m6825awZiS
-- version 5 
-- atom Admin
-- detected some skids if you skid i will black list you 
-- also httplogger wont work any more

-- hay your not supposed to see this skid!
local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://6366788549"
sound.Parent = game:GetService("SoundService")
sound:Play()
task.wait(1)
function Notice(text)
local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://2390693566"
sound.Parent = game:GetService("SoundService")
sound:Play()
local notice = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local titleframe = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local messageframe = Instance.new("Frame")
local message = Instance.new("TextLabel")

notice.Name = "notice"
notice.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
notice.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
notice.ResetOnSpawn = false

Frame.Parent = notice
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 0.150
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.360845108, 0, 0.293950627, 0)
Frame.Size = UDim2.new(0, 450, 0, 254)

titleframe.Name = "titleframe"
titleframe.Parent = Frame
titleframe.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
titleframe.BackgroundTransparency = 0.150
titleframe.BorderSizePixel = 0
titleframe.Size = UDim2.new(0, 450, 0, 25)

TextButton.Parent = titleframe
TextButton.BackgroundColor3 = Color3.fromRGB(255, 84, 84)
TextButton.BackgroundTransparency = 0.150
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.944444478, 0, 0, 0)
TextButton.Size = UDim2.new(0, 25, 0, 25)
TextButton.Font = Enum.Font.SourceSans
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 14.000
TextButton.TextTransparency = 1.000

TextLabel.Parent = titleframe
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.0088888891, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 25)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "Notice Panel"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 20.000
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

messageframe.Name = "messageframe"
messageframe.Parent = Frame
messageframe.BackgroundColor3 = Color3.fromRGB(177, 177, 177)
messageframe.BackgroundTransparency = 0.150
messageframe.BorderSizePixel = 0
messageframe.Position = UDim2.new(0.0111111114, 0, 0.137795269, 0)
messageframe.Size = UDim2.new(0, 440, 0, 215)

message.Name = "message"
message.Parent = messageframe
message.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
message.BackgroundTransparency = 1.000
message.BorderSizePixel = 0
message.Position = UDim2.new(0.0113636367, 0, 0, 0)
message.Size = UDim2.new(0, 430, 0, 215)
message.Font = Enum.Font.SourceSansBold
message.Text = text
message.TextColor3 = Color3.fromRGB(0, 0, 0)
message.TextSize = 19.000
message.TextWrapped = true
message.TextXAlignment = Enum.TextXAlignment.Left
message.TextYAlignment = Enum.TextYAlignment.Top

local function WQVI_fake_script() -- TextButton.Script 
	local script = Instance.new('Script', TextButton)

	button = script.Parent
	
	function onClicked(GUI)
	 notice:remove()
	end
	script.Parent.MouseButton1Click:connect(onClicked)
end
coroutine.wrap(WQVI_fake_script)()
local function HVIERVO_fake_script() -- mainframe.Smooth GUI Dragging 
	local script = Instance.new('LocalScript', Frame)

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
coroutine.wrap(HVIERVO_fake_script)()
end

Notice("Welcome To Atom Admin, Starting Prefix Is ; , Current Script Version Is 6.0.0, Script News: Lots Of Commands Were Removed Due To Roblox's Anti-Cheat Such As kill, bring, force And etc.")

loadstring(game:HttpGet("https://pastebin.com/raw/hR9gsNAB"))()
wl = false
if game.Players.LocalPlayer.Name == "1x1e1_1e1x1" or game.Players.LocalPlayer.Name == "XX7GODALT" then
    wl = true
local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://237866707"
sound.Parent = game:GetService("SoundService")
sound:Play()
end
-- TheOnlyTrueDairy
if game.Players.LocalPlayer.Name == "sivar1725" or game.Players.LocalPlayer.Name == "Batatox_oficial" or game.Players.LocalPlayer.Name == "14anz_COOL" or game.Players.LocalPlayer.Name == "TheOnlyTrueDairy" or game.Players.LocalPlayer.Name == "Pooptart0198" or  game.Players.LocalPlayer.Name == "t_redk" or  game.Players.LocalPlayer.Name == "RobertoHZO" or game.Players.LocalPlayer.Name == "tuber093s_w" or game.Players.LocalPlayer.Name == "nkw3aa483n359h90ybdh" or game.Players.LocalPlayer.Name == "Brazilyawilson" or  game.Players.LocalPlayer.Name == "picklefrog108" or  game.Players.LocalPlayer.Name == "ElDiablo773" or  game.Players.LocalPlayer.Name == "Ja1iden" or  game.Players.LocalPlayer.Name == "Hardnedd" or game.Players.LocalPlayer.Name == "sadfgjuyunhu" or game.Players.LocalPlayer.Name == "Robloxkingt2007Alt39" then
    wl = true
local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://237866621"
sound.Parent = game:GetService("SoundService")
sound:Play()
elseif wl == false then
    local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://237866523"
sound.Parent = game:GetService("SoundService")
sound:Play()
end



function Chat(Message)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(Message, "All")
end

function Chatnotice(Message)
game.StarterGui:SetCore("ChatMakeSystemMessage", {
    Text = Message;
    Font = Enum.Font.SourceSansBold;
    Color = Color3.fromRGB(255, 255, 255);
})
end


local players = game:GetService("Players")
local plr = players.LocalPlayer
lplayer = game:GetService("Players").LocalPlayer
local admins = {}
local connections = {} 
local tws = game:GetService('TweenService')
local tweeninfo = TweenInfo.new(1,Enum.EasingStyle.Linear)
RunService = game:GetService("RunService")
invisRunning = false
prefix = ";"
skill = false
headsit = false
lsk = false

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

local function attachTool(tool,cf)
    for i,v in pairs(tool:GetDescendants()) do
        if not (v:IsA("BasePart") or v:IsA("Mesh") or v:IsA("SpecialMesh")) then
            v:Destroy()
        end
    end
    wait()
game.Players.LocalPlayer.Character.Humanoid.Name = 1
local l = game.Players.LocalPlayer.Character["1"]:Clone()
l.Parent = game.Players.LocalPlayer.Character
l.Name = "Humanoid"
wait()
game.Players.LocalPlayer.Character["1"]:Destroy()
game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character.Animate.Disabled = true
wait()
game.Players.LocalPlayer.Character.Animate.Disabled = false
game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
end
end

local c = workspace.CurrentCamera
local player = plr
local userInput = game:GetService("UserInputService")
local rs = game:GetService("RunService")
local starterPlayer = game:GetService("StarterPlayer")

local selected = false
local speed = 60
local lastUpdate = 0

function getNextMovement(deltaTime)
	local nextMove = Vector3.new()
	-- Left/Right
	if userInput:IsKeyDown("A") or userInput:IsKeyDown("Left") then
		nextMove = Vector3.new(-1,0,0)
	elseif userInput:IsKeyDown("D") or userInput:IsKeyDown("Right") then
		nextMove = Vector3.new(1,0,0)
	end
	-- Forward/Back
	if userInput:IsKeyDown("W") or userInput:IsKeyDown("Up") then
		nextMove = nextMove + Vector3.new(0,0,-1)
	elseif userInput:IsKeyDown("S") or userInput:IsKeyDown("Down") then
		nextMove = nextMove + Vector3.new(0,0,1)
	end
	-- Up/Down
	if userInput:IsKeyDown("Space") then
		nextMove = nextMove + Vector3.new(0,1,0)
	elseif userInput:IsKeyDown("LeftControl") then
		nextMove = nextMove + Vector3.new(0,-1,0)
	end
	return CFrame.new( nextMove * (speed * deltaTime) )
end

function onSelected()
	local char = player.Character
	if char then
		local humanoid = char:WaitForChild("Humanoid")
		local root = char:WaitForChild("HumanoidRootPart")
		currentPos = root.Position
		selected = true
		root.Anchored = true
		lastUpdate = tick()
		humanoid.PlatformStand = true
		while selected do
			wait()
			local delta = tick()-lastUpdate
			local look = (c.Focus.p-c.CoordinateFrame.p).unit
			local move = getNextMovement(delta)
			local pos = root.Position
			root.CFrame = CFrame.new(pos,pos+look) * move
			lastUpdate = tick()
		end
		root.Anchored = false
		root.Velocity = Vector3.new()
		humanoid.PlatformStand = false
	end
end

function onDeselected()
	selected = false
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

local cc;cc = plr.Chatted:Connect(function(msg)
    local spaceSplit = msg:split(" ")
    if spaceSplit[1] == prefix.."bring" or spaceSplit[1] == "/e bring" then
local target = getPlr(tostring(spaceSplit[2]):lower())
        local old = getChar().HumanoidRootPart.CFrame
        local tool = getBp():FindFirstChildOfClass("Tool") or getChar():FindFirstChildOfClass("Tool")
        tool.Grip = CFrame.new(-4,-2,-2)
        if target == nil or tool == nil then return end
        local attWeld = attachTool(tool,CFrame.new(0,0,0))
        attachTool(tool,CFrame.new(0,0,0.2) * CFrame.Angles(math.rad(-90),0,0)) 
        firetouchinterest(target.Character.Humanoid.RootPart,tool.Handle,0)
        firetouchinterest(target.Character.Humanoid.RootPart,tool.Handle,1)
 tool.AncestryChanged:Wait() 
if plr.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
    --plr.Character["Right Arm"]:Destroy()
    game.Players.LocalPlayer.Character["Right Arm"].RightGrip:Destroy() --r6
elseif plr.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
    --plr.Character["RightHand"]:Destroy()
    game.Players.LocalPlayer.Character.RightHand.RightGrip:Destroy() --r15
  end
        getChar().HumanoidRootPart.CFrame = old
        plr.CharacterAdded:Wait()
        getChar():WaitForChild("HumanoidRootPart").CFrame = old
        
        -- wl commands
        elseif spaceSplit[1] == prefix.."digmuf" or spaceSplit[1] == "/e digmuf" then
    if wl == true then
	game.Workspace.muffy.Tail.CanCollide = false
			game.Workspace.muffy["Smooth Block Model"].CanCollide = false
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.muffy.Torso.CFrame * CFrame.new(0,-1,0) -- teleport to muffy
			task.wait(0.3)
			spawn(function()
			local counter = 0 
			while counter ~= 500 do -- when this condition is false(when the counter = 3) the loop will stop
				game.Workspace.muffy.Torso.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-5,0) -- muffy teleport to you
				task.wait(.01)
				counter = counter + 1 -- adding one to the counter after every loop
			end
		end)

			task.wait(0.5)
		spawn(function()
			for _, v in pairs(game:GetService("Workspace"):FindFirstChild("                                                 "):GetDescendants()) do
				if v:IsA("TouchTransmitter") or v:IsA("TouchInterest") then
					firetouchinterest(game.Workspace.muffy.Torso, v:FindFirstAncestorWhichIsA("Part"),0) -- kills muffy
					firetouchinterest(game.Workspace.muffy.Torso, v:FindFirstAncestorWhichIsA("Part"),1)

				end
			end
		end)
        else
        Chatnotice("Failed To Execute Command Not Whitelisted")
	end
	 elseif spaceSplit[1] == prefix.."explode" or spaceSplit[1] == "/e explode" then
    if wl == true then
local target = getPlr(tostring(spaceSplit[2]):lower())
	game.Workspace.muffy.Tail.CanCollide = false
			game.Workspace.muffy["Smooth Block Model"].CanCollide = false
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.muffy.Torso.CFrame * CFrame.new(0,-1,0) -- teleport to muffy
			task.wait(0.3)
			spawn(function()
			local counter = 0 
			while counter ~= 500 do -- when this condition is false(when the counter = 3) the loop will stop
				game.Workspace.muffy.Torso.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,0) -- muffy teleport to you
				task.wait(.01)
				counter = counter + 1 -- adding one to the counter after every loop
			end
		end)
		getChar().HumanoidRootPart.CFrame = target.Character.Humanoid.RootPart.CFrame
			task.wait(0.5)
		spawn(function()
			for _, v in pairs(game:GetService("Workspace"):FindFirstChild("                                                 "):GetDescendants()) do
				if v:IsA("TouchTransmitter") or v:IsA("TouchInterest") then
					firetouchinterest(game.Workspace.muffy.Torso, v:FindFirstAncestorWhichIsA("Part"),0) -- kills muffy
					firetouchinterest(game.Workspace.muffy.Torso, v:FindFirstAncestorWhichIsA("Part"),1)

				end
			end
		end)
        plr.CharacterAdded:Wait()
        getChar():WaitForChild("HumanoidRootPart").CFrame = old
        else
        Chatnotice("Failed To Execute Command Not Whitelisted")
	end
        
    elseif spaceSplit[1] == prefix.."charactergoto" or spaceSplit[1] == prefix.."cgoto" then
    if wl == true then
local target = getPlr(tostring(spaceSplit[2]):lower())
game.Workspace.muffy.Torso.CFrame = target.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,0)
        game.Workspace.socky.Torso.CFrame = target.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,0)
        game.Workspace.girl.Torso.CFrame = target.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,0)
        game.Workspace.muffy.Torso.CFrame = target.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,0)
        game.Workspace.socky.Torso.CFrame = target.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,0)
        game.Workspace.girl.Torso.CFrame = target.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,0)
        game.Workspace.muffy.Torso.CFrame = target.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,0)
        game.Workspace.socky.Torso.CFrame = target.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,0)
        game.Workspace.girl.Torso.CFrame = target.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,0)
        else
        Chatnotice("Failed To Execute Command Not Whitelisted")
    end

	elseif spaceSplit[1] == prefix.."loopcharactergoto" or spaceSplit[1] == prefix.."loopcgoto" then
    if wl == true then
local target = getPlr(tostring(spaceSplit[2]):lower())
clg = true
repeat wait()
game.Workspace.muffy.Torso.CFrame = target.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,0)
        game.Workspace.socky.Torso.CFrame = target.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,0)
        game.Workspace.girl.Torso.CFrame = target.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,0)
        until clg == false
        else
        Chatnotice("Failed To Execute Command Not Whitelisted")
	end
	
	elseif spaceSplit[1] == prefix.."unloopcharactergoto" or spaceSplit[1] == prefix.."unloopcgoto" then
    if wl == true then
 clg = false
        else
        Chatnotice("Failed To Execute Command Not Whitelisted")
	end
	elseif spaceSplit[1] == prefix.."crazy" then
        if wl == true then

game:GetService("Lighting").Felpocalypse.Parent = workspace
game:GetService("Lighting").fire.Parent = workspace
game:GetService("Lighting").party.Parent = workspace

game:GetService("Lighting").cabin.Parent = workspace
game:GetService("Lighting").Lodge.Parent = workspace

        else
 Chatnotice("Failed To Execute Command Not Whitelisted")
end
elseif spaceSplit[1] == prefix.."flash" or spaceSplit[1] == prefix.."disco" then
        if wl == true then
        local val = tonumber(spaceSplit[2])
        if val == nil then return end
        ere = true
	repeat wait()
game.Players:Chat("day")
wait(val)
game.Players:Chat("midday")
wait(val)
game.Players:Chat("night")
wait(val)
    until ere == false
    else
Chatnotice("Failed To Execute Command Not Whitelisted")
        end
        
        elseif spaceSplit[1] == prefix.."admingui"  then
        if wl == true then
you = game.Players.LocalPlayer.PlayerGui.ScreenGui
you.Enabled = true
you.shutdown.Visible = true
you.killall.Visible = true  
you.ExplorerPanel.Visible = true  
    else
Chatnotice("Failed To Execute Command Not Whitelisted")
    end
	
	elseif spaceSplit[1] == prefix.."grabcats" or spaceSplit[1] == prefix.."grabc" then
        if wl == true then
        grc = true
	repeat wait()
game.Workspace.muffy.Torso.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-1)
        game.Workspace.socky.Torso.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-1)
    until grc == false
    else
Chatnotice("Failed To Execute Command Not Whitelisted")
        end
        elseif spaceSplit[1] == prefix.."ungrabcats" or spaceSplit[1] == prefix.."ungrabc" then
        if wl == true then
         grc = false
    else
    Chatnotice("Failed To Execute Command Not Whitelisted")
        end
elseif spaceSplit[1] == prefix.."admin" then
local target = getPlr(tostring(spaceSplit[2]):lower())
admins[target.UserId] = {target = target}
Chat("/w "..target.Name.." You were given Commands! Type "..prefix.."cmds or "..prefix.."cmd to view all commands")


elseif spaceSplit[1] == prefix.."unadmin" then
local target = getPlr(tostring(spaceSplit[2]):lower())
if admins[target.UserId] then
admins[target.UserId] = nil
end
Chat("/w "..target.Name.." You no longer have accsess to Commands!")

elseif spaceSplit[1] == prefix.."healthglitch" or spaceSplit[1] == prefix.."hg" then
        if wl == true then
         godmode2 = true
         repeat wait()
--if game.Players.LocalPlayer.Character.Humanoid.Health <= 100  then
firetouchinterest(game.Players.LocalPlayer.Character.Humanoid.RootPart, workspace["Button"] ,0) --.Humanoid.RootPart
firetouchinterest(game.Players.LocalPlayer.Character.Humanoid.RootPart, workspace["Button"] ,1)
--end
until godmode2 == false
    else
    Chatnotice("Failed To Execute Command Not Whitelisted")
        end
elseif spaceSplit[1] == prefix.."unhealthglitch" or spaceSplit[1] == prefix.."unhg" then
        if wl == true then
         godmode2 = false
    else
    Chatnotice("Failed To Execute Command Not Whitelisted")
        end

elseif spaceSplit[1] == prefix.."ff" or spaceSplit[1] == prefix.."forcefield" then
        if wl == true then
         godmode3 = true
         repeat wait(-math.huge)
--if game.Players.LocalPlayer.Character.Humanoid.Health <= 100  then
firetouchinterest(game.Players.LocalPlayer.Character.Humanoid.RootPart, workspace["SafePlate"] ,0) --.Humanoid.RootPart
firetouchinterest(game.Players.LocalPlayer.Character.Humanoid.RootPart, workspace["SafePlate"] ,1)
--end
until godmode3 == false
    else
    Chatnotice("Failed To Execute Command Not Whitelisted")
        end
elseif spaceSplit[1] == prefix.."unff" or spaceSplit[1] == prefix.."unforcefield" then
        if wl == true then
         godmode3 = false
    else
    Chatnotice("Failed To Execute Command Not Whitelisted")
    end
	
	
	elseif spaceSplit[1] == prefix.."unflash" or spaceSplit[1] == prefix.."undisco" then
	if wl == true then
	game.Players:Chat("day")
	game.Players:Chat("day")
	game.Players:Chat("day")
	game.Players:Chat("day")
        ere = false
        game.Players:Chat("day")
        game.Players:Chat("day")
        game.Players:Chat("day")
        else
        Chatnotice("Failed To Execute Command Not Whitelisted")

        end
        
             elseif spaceSplit[1] == prefix.."foreverday" or spaceSplit[1] == prefix.."fday" then
             if wl == true then
        day = true
	repeat wait()
game.Players:Chat("day")
    until day == false
    else
    Chatnotice("Failed To Execute Command Not Whitelisted")
    end
	
	
	elseif spaceSplit[1] == prefix.."unforeverday" or spaceSplit[1] == prefix.."unfday" then
	if wl == true then
        day = false
        else
        Chatnotice("Failed To Execute Command Not Whitelisted")
        end
        
     elseif spaceSplit[1] == prefix.."forevernight" or spaceSplit[1] == prefix.."fnight" then
     if wl == true then
        night = true
	repeat wait()
game.Players:Chat("night")
    until night == false
    else
    Chatnotice("Failed To Execute Command Not Whitelisted")
    end
	
	
	elseif spaceSplit[1] == prefix.."unforevernight" or spaceSplit[1] == prefix.."unfnight" then
	if wl == true then
        night = false
        else
        Chatnotice("Failed To Execute Command Not Whitelisted")
        end
        
        -- normal commands
        elseif spaceSplit[1] == prefix.."fakelag" or spaceSplit[1] == "/e fakelag" then
        Lagging = true
        getChar().Humanoid.WalkSpeed = 17
        getChar().Humanoid.JumpPower = 60
	repeat wait()
		getChar().HumanoidRootPart.Anchored = true
wait()
        getChar().HumanoidRootPart.Anchored = false
	until Lagging == false
	
	
	elseif spaceSplit[1] == prefix.."unfakelag" or spaceSplit[1] == "/e unfakelag" then
        Lagging = false
        getChar().Humanoid.WalkSpeed = 17
        getChar().Humanoid.JumpPower = 45
        getChar.Character.HumanoidRootPart.Anchored = false
        
     elseif spaceSplit[1] == prefix.."loopcbring" or spaceSplit[1] == prefix.."lcb" then
        Lcb = true
	repeat wait()
local target = getPlr(tostring(spaceSplit[2]):lower())
        if target == nil or tool == nil then return end
        target.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(5,0,0)
    until Lcb == false
	
	
	elseif spaceSplit[1] == prefix.."unloopcbring" or spaceSplit[1] == prefix.."unlcb" then
        Lcb = false

                elseif spaceSplit[1] == prefix.."headsit" or spaceSplit[1] == prefix.."hs" then
local target = getPlr(tostring(spaceSplit[2]):lower())
headsit = true
game.Players.LocalPlayer.Character.Humanoid.Sit = true
target.Character.Head.CanCollide = false
repeat wait()
game.Players.LocalPlayer.Character.Humanoid.RootPart.CFrame = target.Character.Head.CFrame
until headsit == false

        elseif spaceSplit[1] == prefix.."unheadsit" or spaceSplit[1] == prefix.."unhs" then

headsit = false

	elseif spaceSplit[1] == prefix.."punchfling" or spaceSplit[1] == prefix.."pfling" then
Notice("Dont Hold A Tool For This Command To Work.")

local olddh = workspace.FallenPartsDestroyHeight
        workspace.FallenPartsDestroyHeight = 0/0
local tool = getBp():FindFirstChildOfClass("Tool") or getChar():FindFirstChildOfClass("Tool")
game.Players.LocalPlayer.Character.Animate.Disabled = true

--tool.Handle.Mesh:Destroy()

tool.Handle.Massless = true
--tool.Anchored = false
repeat wait()
    tool.GripPos = Vector3.new(-999999999, 999999999999999999, -999999999)
tool.GripPos = Vector3.new(-5000, 6000, -5000)
    --tool.GripPos = Vector3.new(-999999, 999999, -999999)
until getChar().Humanoid.Health >= 0

--[[tool.Handle.Massless = true
tool.GripPos = Vector3.new(0, 0, -10000)]]--

game.Players.LocalPlayer.Character.Animate.Disabled = true
game.Players.LocalPlayer.Character.Animate.Disabled = true
--tool.Parent = game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character.Animate.Disabled = true
game.Players.LocalPlayer.Character.Animate.Disabled = false


        elseif spaceSplit[1] == prefix.."kill" or spaceSplit[1] == prefix.."swordkill" then
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
        elseif spaceSplit[1] == prefix.."killall" or spaceSplit[1] == prefix.."swordkillall" then
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
				if v.Name ~= lplayer.Name then	
local tool = getBp():FindFirstChildOfClass("Tool") or getChar():FindFirstChildOfClass("Tool")
local tools = {}
local originalGrips = {}
for _, v in ipairs(plr.Backpack:GetChildren()) do
            if v:IsA("Tool") and v:FindFirstChild("Handle") then
                table.insert(tools, v)
                table.insert(originalGrips, v.Grip)
                v.Handle.Massless = true
                v.Grip = CFrame.new(0, 1000, 0)
                v.Parent = getChar()
            end
        end
        local hum = getChar():FindFirstChildOfClass("Humanoid")
plr.Character.Animate.Disabled = true
        tool.Parent = plr.Character
        repeat wait()
        firetouchinterest(tool.Handle, v.Character.Humanoid.RootPart, 0)
        firetouchinterest(tool.Handle, v.Character.Humanoid.RootPart, 1)
        until v.Character.Humanoid.Health <= 0
        plr.Character.Animate.Disabled = false
        hum:UnequipTools()
                for i, v in ipairs(tools) do
            if originalGrips[i] then
                v.Grip = originalGrips[i]
            end
        end
					end
end
        
         elseif spaceSplit[1] == prefix.."loopkill" or spaceSplit[1] == prefix.."loopswordkill" then
        lsk = true
        local target = getPlr(tostring(spaceSplit[2]):lower())
		if target == nil then return end
        repeat wait()
        if target.Character.Humanoid.Health >= 100 then
        local tool = getBp():FindFirstChildOfClass("Tool") or getChar():FindFirstChildOfClass("Tool")
local tools = {}
local originalGrips = {}
for _, v in ipairs(plr.Backpack:GetChildren()) do
            if v:IsA("Tool") and v:FindFirstChild("Handle") then
                table.insert(tools, v)
                table.insert(originalGrips, v.Grip)
                v.Handle.Massless = true
                v.Grip = CFrame.new(0, 1000, 0)
                v.Parent = getChar()
            end
        end
        local hum = getChar():FindFirstChildOfClass("Humanoid")
        tool.Parent = plr.Character
       -- if target == nil or tool == nil then return end
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
wait(4.5)
        end
until lsk == false
elseif spaceSplit[1] == prefix.."unloopkill" or spaceSplit[1] == prefix.."unloopswordkill" then
plr.Character.Animate.Disabled = false
lsk = false
tool.Grip = CFrame.new(0,-1,0)
        elseif spaceSplit[1] == prefix.."jump" then
        local target = getPlr(tostring(spaceSplit[2]):lower())
        local old = getChar().HumanoidRootPart.CFrame
        getChar().HumanoidRootPart.CFrame = target.Character.Humanoid.RootPart.CFrame
        wait()
        getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(0,-8,0)
        getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(0,2,0)
        --getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(0,-2,0)
        wait()
        getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(0,-2,0)
        getChar().HumanoidRootPart.CFrame = target.Character.Humanoid.RootPart.CFrame
        getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(0,-8,0)
        wait()
        getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(0,-8,0)
        getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(0,2,0)
        --getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(0,-2,0)
        wait()
        getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(0,-2,0)
        getChar().HumanoidRootPart.CFrame = target.Character.Humanoid.RootPart.CFrame
        getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(0,-8,0)
        getChar():WaitForChild("HumanoidRootPart").CFrame = old
     

    elseif spaceSplit[1] == prefix.."btools" or spaceSplit[1] == prefix.."f3x" or spaceSplit[1] == "/e btools" or spaceSplit[1] == "/e f3x"  then
        loadstring(game:GetObjects("rbxassetid://6695644299")[1].Source)()

    elseif spaceSplit[1] == prefix.."view" or spaceSplit[1] == "/e view" then
        local target = getPlr(tostring(spaceSplit[2]):lower())
        workspace.CurrentCamera.CameraSubject = target.Character.Humanoid
        
    elseif spaceSplit[1] == prefix.."chatscript" or spaceSplit[1] == prefix.."script" then
        wait(0.5)
       Chat("[ATOM]: Atom Admin")
       Chat("[ATOM]: Script Version Is 6.0.0, It Is Free!")

    elseif spaceSplit[1] == prefix.."breakchat" or spaceSplit[1] == prefix.."chaterror" then
    wait(0.5)
        -- Script generated by SimpleSpy - credits to exx#9394
for i=1,6 do
local args = {
    [1] = " ",
    [2] = "All"
}

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
end

elseif spaceSplit[1] == prefix.."freeze" or spaceSplit[1] == "/e freeze" then
        getChar().HumanoidRootPart.Anchored = true
    
    elseif spaceSplit[1] == prefix.."unfreeze" or spaceSplit[1] == "/e unfreeze" then
        getChar().HumanoidRootPart.Anchored = false

    elseif spaceSplit[1] == prefix.."delete"  or spaceSplit[1] == prefix.."hide"  then
		local target = getPlr(tostring(spaceSplit[2]):lower())
		hide = true
		repeat wait()
target.Character.Parent = ServerStorage
until hide == false

elseif spaceSplit[1] == prefix.."undelete"  or spaceSplit[1] == prefix.."unhide"  then
		local target = getPlr(tostring(spaceSplit[2]):lower())
		hide = false
        
		elseif spaceSplit[1] == prefix.."telec"  or spaceSplit[1] == prefix.."telekinesis"  then
Notice("The Telekinesis Tool Is In Your Inventory Now.")

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
        elseif spaceSplit[1] == prefix.."antifling"  or spaceSplit[1] == prefix.."nofling"  then
        local Services = setmetatable({}, {__index = function(Self, Index)
local NewService = game.GetService(game, Index)
if NewService then
Self[Index] = NewService
end
return NewService
end})

-- [ LocalPlayer ] --
local LocalPlayer = Services.Players.LocalPlayer

-- // Functions \\ --
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
               if Detected == false then
                   game.StarterGui:SetCore("ChatMakeSystemMessage", {
                       Text = "Fling detected, Player: " .. tostring(Player);
                       Color = Color3.fromRGB(255, 200, 0);
                   })
               end
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

-- // Event Listeners \\ --
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

           game.StarterGui:SetCore("ChatMakeSystemMessage", {
               Text = "You were flung. Neutralizing velocity.";
               Color = Color3.fromRGB(255, 0, 0);
           })
       elseif PrimaryPart.AssemblyLinearVelocity.Magnitude < 50 or PrimaryPart.AssemblyAngularVelocity.Magnitude > 50 then
           LastPosition = PrimaryPart.CFrame
       end
   end)
end)
elseif spaceSplit[1] == prefix.."dupe" or spaceSplit[1] == prefix.."dupetools" then
        local val = tonumber(spaceSplit[2])
         local dupedtools = {}
         local old = getChar().HumanoidRootPart.CFrame
         local olddh = workspace.FallenPartsDestroyHeight
        workspace.FallenPartsDestroyHeight = 0/0
       
        for i = 1, val do
            plr.Character:WaitForChild("Humanoid").BreakJointsOnDeath = false
            plr.Character:WaitForChild("Humanoid").RequiresNeck = false
            replacehum()
            task.wait(0.5)
            plr.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(math.huge,math.huge,math.huge)
            task.wait(0.5)
            for i,v in pairs(plr.Backpack:GetChildren()) do
                if v:IsA("Tool") then
                    v.Parent = plr.Character
                end
            end
            task.wait()
            for i,v in pairs(plr.Character:GetChildren()) do
                if v:IsA("Tool") then
                    table.insert(dupedtools, v)
                    v.Parent = game:GetService("Workspace")
                end
            end
            plr.CharacterAdded:Wait()
            plr.Character:WaitForChild("HumanoidRootPart")
            plr.Character:WaitForChild("Humanoid")
        end
        for i,v in pairs(dupedtools) do
            if v.Parent == game:GetService("Workspace") then
                if syn then
                    firetouchinterest(v:FindFirstChild("Handle"), plr.Character:FindFirstChild("HumanoidRootPart"), 0)
                    firetouchinterest(v:FindFirstChild("Handle"), plr.Character:FindFirstChild("HumanoidRootPart"), 1)
                else
                    repeat
                        v:FindFirstChild("Handle").CFrame = plr.Character:FindFirstChild("HumanoidRootPart").CFrame
                        game:GetService("RunService").Heartbeat:Wait()
                    until v.Parent ~= game:GetService("Workspace")
                end
            end
        end
        plr.CharacterAdded:Wait()
        getChar():WaitForChild("HumanoidRootPart").CFrame = old

    elseif spaceSplit[1] == prefix.."changeprefix" or spaceSplit[1] == prefix.."setprefix" then
        local val = (spaceSplit[2])
        if val == nil then return end 
        prefix = val
        Notice("Your Prefix Has Been Set To "..prefix..".")
        
        elseif spaceSplit[1] == prefix.."dupe2" or spaceSplit[1] == prefix.."dupetools2" then
         local val = tonumber(spaceSplit[2])
         local dupedtools = {}
          for i = 1, val do
         for i,v in pairs(plr.Backpack:GetChildren()) do
                if v:IsA("Tool") then
                    v.Parent = plr.Character
                end
            end
            task.wait()
            for i,v in pairs(plr.Character:GetChildren()) do
                if v:IsA("Tool") then
                 table.insert(dupedtools, v)
                    v.Parent = game:GetService("Workspace")
                end
            end
            task.wait(0.1)
            game.Players:Chat("-re")
            plr.CharacterAdded:Wait()
            plr.Character:WaitForChild("HumanoidRootPart")
            plr.Character:WaitForChild("Humanoid")
            end
            for i,v in pairs(dupedtools) do
            if v.Parent == game:GetService("Workspace") then
                    firetouchinterest(v:FindFirstChild("Handle"), plr.Character:FindFirstChild("HumanoidRootPart"), 0)
                    firetouchinterest(v:FindFirstChild("Handle"), plr.Character:FindFirstChild("HumanoidRootPart"), 1)
            end
        end

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
	c.velocity = Vector3.new(0, 0.1, 0)
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
			c.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (h.f + h.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(h.l + h.r, (h.f + h.b) * .2, 0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p)) * g
			f = {
				f = h.f,
				b = h.b,
				l = h.l,
				r = h.r
			}
		elseif (h.l + h.r) == 0 and (h.f + h.b) == 0 and g ~= 0 then
			c.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (f.f + f.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(f.l + f.r, (f.f + f.b) * .2, 0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p)) * g
		else
			c.velocity = Vector3.new(0, 0.1, 0)
		end
		d.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((h.f + h.b) * 0.1 * g / a), 0, 0)
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
	c.velocity = Vector3.new(0, 0.1, 0)
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
			c.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (h.f + h.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(h.l + h.r, (h.f + h.b) * .2, 0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p)) * g
			f = {
				f = h.f,
				b = h.b,
				l = h.l,
				r = h.r
			}
		elseif (h.l + h.r) == 0 and (h.f + h.b) == 0 and g ~= 0 then
			c.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (f.f + f.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(f.l + f.r, (f.f + f.b) * .2, 0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p)) * g
		else
			c.velocity = Vector3.new(0, 0.1, 0)
		end
		d.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((h.f + h.b) * 0.1 * g / a), 0, 0)
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

elseif spaceSplit[1] == prefix.."invis" or spaceSplit[1] == prefix.."invisible" then
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
elseif spaceSplit[1] == prefix.."vis" or spaceSplit[1] == prefix.."visible" then
TurnVisible()
        
    elseif spaceSplit[1] == prefix.."walkspeed" or spaceSplit[1] == prefix.."ws" then
        local val = tonumber(spaceSplit[2])
        if val == nil then return end 
        getChar().Humanoid.WalkSpeed = val 
    elseif spaceSplit[1] == prefix.."jumppower" or spaceSplit[1] == prefix.."jp" or spaceSplit[1] == "/e jumppower" or spaceSplit[1] == "/e jp" then
        local val = tonumber(spaceSplit[2])
        if val == nil then return end 
        getChar().Humanoid.JumpPower = val
    elseif spaceSplit[1] == prefix.."hipheight" or spaceSplit[1] == prefix.."hh" or spaceSplit[1] == "/e hipheight" or spaceSplit[1] == "/e hh" then
        local val = tonumber(spaceSplit[2])
        if val == nil then return end 
        getChar().Humanoid.HipHeight = val
    elseif spaceSplit[1] == prefix.."noclipfly" or spaceSplit[1] == prefix.."ncf"  then
        onSelected()
    elseif spaceSplit[1] == prefix.."clipfly" or spaceSplit[1] == prefix.."cf" then
        onDeselected()
    elseif spaceSplit[1] == prefix.."noclip" or spaceSplit[1] == prefix.."nc" or spaceSplit[1] == "/e noclip" or spaceSplit[1] == "/e nc" then
        nc = true
    elseif spaceSplit[1] == prefix.."clip" or spaceSplit[1] == prefix.."c" or spaceSplit[1] == "/e clip" or spaceSplit[1] == "/e c" then
        nc = false
    elseif spaceSplit[1] == prefix.."goto" or spaceSplit[1] == prefix.."to" or spaceSplit[1] == "/e goto" or spaceSplit[1] == "/e to" then
        local target = getPlr(tostring(spaceSplit[2]):lower())
        tpbypass(target)
        --getChar().HumanoidRootPart.CFrame = target.Character.Humanoid.RootPart.CFrame

    elseif spaceSplit[1] == prefix.."respawn" or spaceSplit[1] == prefix.."re" or spaceSplit[1] == "/e respawn" or spaceSplit[1] == "/e re" then
 replacechar()
  local cr = getChar()
    task.wait(game:GetService("Players").RespawnTime - 0.01)
    for _, part in next, cr:GetDescendants() do
    if part:IsA("Part") then
        part.Anchored = true
    end
end
    local old = plr.Character:FindFirstChild("HumanoidRootPart").CFrame
      reset()
        plr.CharacterAdded:Wait()
        getChar():WaitForChild("HumanoidRootPart").CFrame = old
		if plr.Character.Humanoid.Health == 0 then
			 replacechar()
  local cr = getChar()
    task.wait(game:GetService("Players").RespawnTime - 0.01)
    for _, part in next, cr:GetDescendants() do
    if part:IsA("Part") then
        part.Anchored = true
    end
end
    local old = plr.Character:FindFirstChild("HumanoidRootPart").CFrame
      reset()
        plr.CharacterAdded:Wait()
        getChar():WaitForChild("HumanoidRootPart").CFrame = old
	end
        
        elseif spaceSplit[1] == prefix.."gr" or spaceSplit[1] == prefix.."gamerespawn" or spaceSplit[1] == "/e gamerespawn" or spaceSplit[1] == "/e gr" then
 replacechar()
  local cr = getChar()
    task.wait(game:GetService("Players").RespawnTime - 0.01)
    for _, part in next, cr:GetDescendants() do
    if part:IsA("Part") then
        part.Anchored = true
    end
end
      reset()
	  if plr.Character.Humanoid.Health == 0 then
		   replacechar()
  local cr = getChar()
    task.wait(game:GetService("Players").RespawnTime - 0.01)
    for _, part in next, cr:GetDescendants() do
    if part:IsA("Part") then
        part.Anchored = true
    end
end
      reset()
	end


	elseif spaceSplit[1] == prefix.."legresize" or spaceSplit[1] == "/e legresize" then
local Settings = {
    Values = {
        BodyTypeScale = true;
        BodyProportionScale = true;
        BodyWidthScale = true;
        BodyHeightScale = true;
        BodyDepthScale = true;
        HeadScale = true;
    };
    OriginalSize = true;
    OriginalPosition = false;
}

local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local Character = Player.Character
local Humanoid = Character:FindFirstChildWhichIsA("Humanoid")
local WaitFunc = function(x) x.DescendantAdded:wait() task.wait() end

if Humanoid.RigType == Enum.HumanoidRigType.R6 then return end

Character.LeftUpperLeg.LeftKneeRigAttachment:Destroy()
Character.LeftLowerLeg.LeftAnkleRigAttachment:Destroy()
Character.LeftFoot.LeftFootAttachment:Destroy()

for _,x in next, Settings.Values do
    if x then
        if Settings.OriginalSize then --Specific Path/Settings
            for _, _os in next, Character:GetDescendants() do
                if _os.Name == "OriginalSize" and _os:IsA("ValueBase") then
                    _os:Destroy()
                end
            end
        end
        if Settings.OriginalPosition then
            for _, _op in next, Character:GetDescendants() do
                if _op.Name == "OriginalPosition" and _op:IsA("ValueBase") then
                    _op:Destroy()
                end
            end
        end
        if Humanoid:FindFirstChild(tostring(_)) then
            Humanoid:FindFirstChild(tostring(_)):Destroy()
        end
        WaitFunc(Character)
    end
end
          
    
 
    elseif spaceSplit[1] == prefix.."equiptools" or spaceSplit[1] == "/e equiptools" then
        for i,v in pairs(getBp():GetChildren()) do
            if v:IsA("Tool") then
                v.Parent = getChar()
            end
        end
        
    elseif spaceSplit[1] == prefix.."fling" or spaceSplit[1] == "/e fling"  then
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
        
        
                        
        elseif spaceSplit[1] == prefix.."fti"   or spaceSplit[1] == prefix.."firetouchinterest" or spaceSplit[1] == "/e fti" or spaceSplit[1] == "/e firetouchinterest"  then
            while true do
            local _, test = pcall(function()
            wait(0.01)
            firetouchinterest(game:GetService("Workspace").Handle, game.Players.LocalPlayer.Character.HumanoidRootPart, 0) -- 1 is untouch
            wait()
            firetouchinterest(game:GetService("Workspace").Handle, game.Players.LocalPlayer.Character.HumanoidRootPart, 1) -- 1 is untouch
            end)

            if test then print('error') end
            end
        elseif spaceSplit[1] == prefix.."superfling" or spaceSplit[1] == "/e superfling" then
        local target = getPlr(tostring(spaceSplit[2]):lower())
        if target == nil then return end
        
        local flingTime = 3.1
        local fTime = os.clock()
        local rot = 0
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
                if rot == 80 then
                    rot = 0
                else
                    rot = 80
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
        elseif spaceSplit[1] == prefix.."ultrafling"  or spaceSplit[1] == prefix.."ufling" or spaceSplit[1] == "/e ultrafling" or spaceSplit[1] == "/e ufling"  then
        local target = getPlr(tostring(spaceSplit[2]):lower())
        if target == nil then return end
        
        local flingTime = 6.9
        local fTime = os.clock()
        local rot = 0
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
                if rot == 60 then
                    rot = 0
                else
                    rot = 60
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
	
	elseif spaceSplit[1] == prefix.."flingbypass" or spaceSplit[1] == prefix.."bfling"  then
        local target = getPlr(tostring(spaceSplit[2]):lower())
        if target == nil then return end
        
        local flingTime = 5.5
        local fTime = os.clock()
        local rot = 0
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
                if rot == 60 then
                    rot = 0
                else
                    rot = 10
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

    elseif spaceSplit[1] == prefix.."rejoin" or spaceSplit[1] == prefix.."rj" or spaceSplit[1] == "/e rejoin" or spaceSplit[1] == "/e rj" then
		Notice("Now Rejoining The Server This Should Not Take Long Depends On Your Executor.")

        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, plr)
    elseif spaceSplit[1] == prefix.."cmds" or spaceSplit[1] == prefix.."commands" or spaceSplit[1] == "/e cmds" or spaceSplit[1] == "/e commands" then
		local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://1273802616"
sound.Parent = game:GetService("SoundService")
sound:Play()
-- Gui to Lua
-- Version: 3.2

-- Instances:

local commands = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local titleframe = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local list = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local fakelag = Instance.new("TextLabel")
local unfakelag = Instance.new("TextLabel")
local loopcbring = Instance.new("TextLabel")
local unloopcbring = Instance.new("TextLabel")
local headsit = Instance.new("TextLabel")
local unheadsit = Instance.new("TextLabel")
local punchfling = Instance.new("TextLabel")
local swordkill = Instance.new("TextLabel")
local swordkillall = Instance.new("TextLabel")
local loopswordkill = Instance.new("TextLabel")
local unloopswordkill = Instance.new("TextLabel")
local jump = Instance.new("TextLabel")
local btools = Instance.new("TextLabel")
local view = Instance.new("TextLabel")
local script = Instance.new("TextLabel")
local chaterror = Instance.new("TextLabel")
local freeze = Instance.new("TextLabel")
local unfreeze = Instance.new("TextLabel")
local hide = Instance.new("TextLabel")
local unhide = Instance.new("TextLabel")
local fly = Instance.new("TextLabel")
local telekinesis = Instance.new("TextLabel")
local antifling = Instance.new("TextLabel")
local setprefix = Instance.new("TextLabel")
local walkspeed = Instance.new("TextLabel")
local jumppower = Instance.new("TextLabel")
local hipheight = Instance.new("TextLabel")
--wl
local foreverday = Instance.new("TextLabel")
local forevernight = Instance.new("TextLabel")
local unforeverday = Instance.new("TextLabel")
local unforevernight = Instance.new("TextLabel")
local disco = Instance.new("TextLabel")
local undisco = Instance.new("TextLabel")
local charactersgoto = Instance.new("TextLabel")
local explode = Instance.new("TextLabel")
local digmuf = Instance.new("TextLabel")
local crazy = Instance.new("TextLabel")
local admingui = Instance.new("TextLabel")
local healthglitch = Instance.new("TextLabel")
local ff = Instance.new("TextLabel")
local unff = Instance.new("TextLabel")
--end of wl
local noclip = Instance.new("TextLabel")
local clip = Instance.new("TextLabel")
local noclipfly = Instance.new("TextLabel")
local clipfly = Instance.new("TextLabel")
local goto = Instance.new("TextLabel")
local firetouchinterest = Instance.new("TextLabel")
local respawn = Instance.new("TextLabel")
local gamerespawn = Instance.new("TextLabel")
local admin = Instance.new("TextLabel")
local unadmin = Instance.new("TextLabel")
local equiptools = Instance.new("TextLabel")
local fling = Instance.new("TextLabel")
local superfling = Instance.new("TextLabel")
local ultrafling = Instance.new("TextLabel")
local flingbypass = Instance.new("TextLabel")
local rejoin = Instance.new("TextLabel")
local commands_2 = Instance.new("TextLabel")
local scriptpanel = Instance.new("Frame")
local titleframe_2 = Instance.new("Frame")
local TextLabel_2 = Instance.new("TextLabel")
local prefix1 = Instance.new("TextBox")
local TextButton_2 = Instance.new("TextButton")
local currentprefix = Instance.new("TextLabel")
local currentfps = Instance.new("TextLabel")
local Number = Instance.new("TextLabel")

--Properties:

commands.Name = "commands"
commands.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
commands.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
commands.ResetOnSpawn = false

Frame.Parent = commands
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 0.150
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.340845108, 0, 0.283950627, 0)
Frame.Size = UDim2.new(0, 450, 0, 254)

titleframe.Name = "titleframe"
titleframe.Parent = Frame
titleframe.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
titleframe.BackgroundTransparency = 0.150
titleframe.BorderSizePixel = 0
titleframe.Size = UDim2.new(0, 450, 0, 25)

TextButton.Parent = titleframe
TextButton.BackgroundColor3 = Color3.fromRGB(255, 84, 84)
TextButton.BackgroundTransparency = 0.150
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.944444478, 0, 0, 0)
TextButton.Size = UDim2.new(0, 25, 0, 25)
TextButton.Font = Enum.Font.SourceSans
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 14.000
TextButton.TextTransparency = 1.000

TextLabel.Parent = titleframe
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.0088888891, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 25)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "Commands Panel"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 20.000
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

list.Name = "list"
list.Parent = Frame
list.Active = true
list.BackgroundColor3 = Color3.fromRGB(177, 177, 177)
list.BackgroundTransparency = 0.150
list.BorderSizePixel = 0
list.Position = UDim2.new(0.0109999999, 0, 0.140000001, 0)
list.Size = UDim2.new(0, 440, 0, 215)
list.CanvasPosition = Vector2.new(0, 300)
list.CanvasSize = UDim2.new(0, 0, 4.7, 0)
list.ScrollBarThickness = 5

UIListLayout.Parent = list
UIListLayout.Padding = UDim.new(0, 5)

fakelag.Name = "fakelag"
fakelag.Parent = list
fakelag.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
fakelag.BackgroundTransparency = 1.000
fakelag.BorderSizePixel = 0
fakelag.Size = UDim2.new(0, 200, 0, 15)
fakelag.Font = Enum.Font.SourceSansBold
fakelag.Text = "fakelag"
fakelag.TextColor3 = Color3.fromRGB(0, 0, 0)
fakelag.TextSize = 19.000
fakelag.TextXAlignment = Enum.TextXAlignment.Left

unfakelag.Name = "unfakelag"
unfakelag.Parent = list
unfakelag.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
unfakelag.BackgroundTransparency = 1.000
unfakelag.BorderSizePixel = 0
unfakelag.Size = UDim2.new(0, 200, 0, 15)
unfakelag.Font = Enum.Font.SourceSansBold
unfakelag.Text = "unfakelag"
unfakelag.TextColor3 = Color3.fromRGB(0, 0, 0)
unfakelag.TextSize = 19.000
unfakelag.TextXAlignment = Enum.TextXAlignment.Left

-- wl
foreverday.Name = "foreverday"
foreverday.Parent = list
foreverday.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
foreverday.BackgroundTransparency = 1.000
foreverday.BorderSizePixel = 0
foreverday.Size = UDim2.new(0, 200, 0, 15)
foreverday.Font = Enum.Font.SourceSansBold
foreverday.Text = "foreverday [WL] [574746640]"
foreverday.TextColor3 = Color3.fromRGB(0, 0, 0)
foreverday.TextSize = 19.000
foreverday.TextXAlignment = Enum.TextXAlignment.Left

forevernight.Name = "forevernight"
forevernight.Parent = list
forevernight.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
forevernight.BackgroundTransparency = 1.000
forevernight.BorderSizePixel = 0
forevernight.Size = UDim2.new(0, 200, 0, 15)
forevernight.Font = Enum.Font.SourceSansBold
forevernight.Text = "forevernight [WL] [574746640]"
forevernight.TextColor3 = Color3.fromRGB(0, 0, 0)
forevernight.TextSize = 19.000
forevernight.TextXAlignment = Enum.TextXAlignment.Left

unforeverday.Name = "unforeverday"
unforeverday.Parent = list
unforeverday.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
unforeverday.BackgroundTransparency = 1.000
unforeverday.BorderSizePixel = 0
unforeverday.Size = UDim2.new(0, 200, 0, 15)
unforeverday.Font = Enum.Font.SourceSansBold
unforeverday.Text = "unforeverday [WL] [574746640]"
unforeverday.TextColor3 = Color3.fromRGB(0, 0, 0)
unforeverday.TextSize = 19.000
unforeverday.TextXAlignment = Enum.TextXAlignment.Left

unforevernight.Name = "unforevernight"
unforevernight.Parent = list
unforevernight.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
unforevernight.BackgroundTransparency = 1.000
unfakelag.BorderSizePixel = 0
unforevernight.Size = UDim2.new(0, 200, 0, 15)
unforevernight.Font = Enum.Font.SourceSansBold
unforevernight.Text = "unforevernight [WL] [574746640]"
unforevernight.TextColor3 = Color3.fromRGB(0, 0, 0)
unforevernight.TextSize = 19.000
unforevernight.TextXAlignment = Enum.TextXAlignment.Left

disco.Name = "disco"
disco.Parent = list
disco.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
disco.BackgroundTransparency = 1.000
disco.BorderSizePixel = 0
disco.Size = UDim2.new(0, 200, 0, 15)
disco.Font = Enum.Font.SourceSansBold
disco.Text = "disco [num] [WL] [574746640]"
disco.TextColor3 = Color3.fromRGB(0, 0, 0)
disco.TextSize = 19.000
disco.TextXAlignment = Enum.TextXAlignment.Left

charactersgoto.Name = "charactersgoto"
charactersgoto.Parent = list
charactersgoto.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
charactersgoto.BackgroundTransparency = 1.000
charactersgoto.BorderSizePixel = 0
charactersgoto.Size = UDim2.new(0, 200, 0, 15)
charactersgoto.Font = Enum.Font.SourceSansBold
charactersgoto.Text = "charactersgoto [plr] [WL] [574746640]"
charactersgoto.TextColor3 = Color3.fromRGB(0, 0, 0)
charactersgoto.TextSize = 19.000
charactersgoto.TextXAlignment = Enum.TextXAlignment.Left

explode.Name = "explode"
explode.Parent = list
explode.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
explode.BackgroundTransparency = 1.000
explode.BorderSizePixel = 0
explode.Size = UDim2.new(0, 200, 0, 15)
explode.Font = Enum.Font.SourceSansBold
explode.Text = "explode [plr] [WL] [574746640]"
explode.TextColor3 = Color3.fromRGB(0, 0, 0)
explode.TextSize = 19.000
explode.TextXAlignment = Enum.TextXAlignment.Left

digmuf.Name = "digmuf"
digmuf.Parent = list
digmuf.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
digmuf.BackgroundTransparency = 1.000
digmuf.BorderSizePixel = 0
digmuf.Size = UDim2.new(0, 200, 0, 15)
digmuf.Font = Enum.Font.SourceSansBold
digmuf.Text = "digmuf [WL] [574746640]"
digmuf.TextColor3 = Color3.fromRGB(0, 0, 0)
digmuf.TextSize = 19.000
digmuf.TextXAlignment = Enum.TextXAlignment.Left

crazy.Name = "crazy"
crazy.Parent = list
crazy.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
crazy.BackgroundTransparency = 1.000
crazy.BorderSizePixel = 0
crazy.Size = UDim2.new(0, 200, 0, 15)
crazy.Font = Enum.Font.SourceSansBold
crazy.Text = "crazy [WL] [574746640]"
crazy.TextColor3 = Color3.fromRGB(0, 0, 0)
crazy.TextSize = 19.000
crazy.TextXAlignment = Enum.TextXAlignment.Left

admingui.Name = "admingui"
admingui.Parent = list
admingui.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
admingui.BackgroundTransparency = 1.000
admingui.BorderSizePixel = 0
admingui.Size = UDim2.new(0, 200, 0, 15)
admingui.Font = Enum.Font.SourceSansBold
admingui.Text = "admingui [WL] [12231285722]"
admingui.TextColor3 = Color3.fromRGB(0, 0, 0)
admingui.TextSize = 19.000
admingui.TextXAlignment = Enum.TextXAlignment.Left

healthglitch.Name = "healthglitch"
healthglitch.Parent = list
healthglitch.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
healthglitch.BackgroundTransparency = 1.000
healthglitch.BorderSizePixel = 0
healthglitch.Size = UDim2.new(0, 200, 0, 15)
healthglitch.Font = Enum.Font.SourceSansBold
healthglitch.Text = "healthglitch [WL] [FENCING]"
healthglitch.TextColor3 = Color3.fromRGB(0, 0, 0)
healthglitch.TextSize = 19.000
healthglitch.TextXAlignment = Enum.TextXAlignment.Left

ff.Name = "ff"
ff.Parent = list
ff.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ff.BackgroundTransparency = 1.000
ff.BorderSizePixel = 0
ff.Size = UDim2.new(0, 200, 0, 15)
ff.Font = Enum.Font.SourceSansBold
ff.Text = "ff [WL] [SFONTH IV]"
ff.TextColor3 = Color3.fromRGB(0, 0, 0)
ff.TextSize = 19.000
ff.TextXAlignment = Enum.TextXAlignment.Left

unff.Name = "unff"
unff.Parent = list
unff.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
unff.BackgroundTransparency = 1.000
unff.BorderSizePixel = 0
unff.Size = UDim2.new(0, 200, 0, 15)
unff.Font = Enum.Font.SourceSansBold
unff.Text = "unff [WL] [SFONTH IV]"
unff.TextColor3 = Color3.fromRGB(0, 0, 0)
unff.TextSize = 19.000
unff.TextXAlignment = Enum.TextXAlignment.Left

-- end of wl

fly.Name = "fly"
fly.Parent = list
fly.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
fly.BackgroundTransparency = 1.000
fly.BorderSizePixel = 0
fly.Size = UDim2.new(0, 200, 0, 15)
fly.Font = Enum.Font.SourceSansBold
fly.Text = "fly"
fly.TextColor3 = Color3.fromRGB(0, 0, 0)
fly.TextSize = 19.000
fly.TextXAlignment = Enum.TextXAlignment.Left

loopcbring.Name = "loopcbring"
loopcbring.Parent = list
loopcbring.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
loopcbring.BackgroundTransparency = 1.000
loopcbring.BorderSizePixel = 0
loopcbring.Size = UDim2.new(0, 200, 0, 15)
loopcbring.Font = Enum.Font.SourceSansBold
loopcbring.Text = "loopcbring [plr]"
loopcbring.TextColor3 = Color3.fromRGB(0, 0, 0)
loopcbring.TextSize = 19.000
loopcbring.TextXAlignment = Enum.TextXAlignment.Left

unloopcbring.Name = "unloopcbring"
unloopcbring.Parent = list
unloopcbring.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
unloopcbring.BackgroundTransparency = 1.000
unloopcbring.BorderSizePixel = 0
unloopcbring.Size = UDim2.new(0, 200, 0, 15)
unloopcbring.Font = Enum.Font.SourceSansBold
unloopcbring.Text = "unloopcbring"
unloopcbring.TextColor3 = Color3.fromRGB(0, 0, 0)
unloopcbring.TextSize = 19.000
unloopcbring.TextXAlignment = Enum.TextXAlignment.Left

headsit.Name = "headsit"
headsit.Parent = list
headsit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
headsit.BackgroundTransparency = 1.000
headsit.BorderSizePixel = 0
headsit.Size = UDim2.new(0, 200, 0, 15)
headsit.Font = Enum.Font.SourceSansBold
headsit.Text = "headsit [plr]"
headsit.TextColor3 = Color3.fromRGB(0, 0, 0)
headsit.TextSize = 19.000
headsit.TextXAlignment = Enum.TextXAlignment.Left

unheadsit.Name = "unheadsit"
unheadsit.Parent = list
unheadsit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
unheadsit.BackgroundTransparency = 1.000
unheadsit.BorderSizePixel = 0
unheadsit.Size = UDim2.new(0, 200, 0, 15)
unheadsit.Font = Enum.Font.SourceSansBold
unheadsit.Text = "unheadsit"
unheadsit.TextColor3 = Color3.fromRGB(0, 0, 0)
unheadsit.TextSize = 19.000
unheadsit.TextXAlignment = Enum.TextXAlignment.Left

punchfling.Name = "punchfling"
punchfling.Parent = list
punchfling.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
punchfling.BackgroundTransparency = 1.000
punchfling.BorderSizePixel = 0
punchfling.Size = UDim2.new(0, 200, 0, 15)
punchfling.Font = Enum.Font.SourceSansBold
punchfling.Text = "punchfing"
punchfling.TextColor3 = Color3.fromRGB(0, 0, 0)
punchfling.TextSize = 19.000
punchfling.TextXAlignment = Enum.TextXAlignment.Left

swordkill.Name = "swordkill"
swordkill.Parent = list
swordkill.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
swordkill.BackgroundTransparency = 1.000
swordkill.BorderSizePixel = 0
swordkill.Size = UDim2.new(0, 200, 0, 15)
swordkill.Font = Enum.Font.SourceSansBold
swordkill.Text = "kill / swordkill [plr] [NOTE: NEED SWORD]"
swordkill.TextColor3 = Color3.fromRGB(0, 0, 0)
swordkill.TextSize = 19.000
swordkill.TextXAlignment = Enum.TextXAlignment.Left

swordkillall.Name = "swordkillall"
swordkillall.Parent = list
swordkillall.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
swordkillall.BackgroundTransparency = 1.000
swordkillall.BorderSizePixel = 0
swordkillall.Size = UDim2.new(0, 200, 0, 15)
swordkillall.Font = Enum.Font.SourceSansBold
swordkillall.Text = "killall / swordkillall [NOTE: NEED SWORD]"
swordkillall.TextColor3 = Color3.fromRGB(0, 0, 0)
swordkillall.TextSize = 19.000
swordkillall.TextXAlignment = Enum.TextXAlignment.Left

loopswordkill.Name = "loopswordkill"
loopswordkill.Parent = list
loopswordkill.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
loopswordkill.BackgroundTransparency = 1.000
loopswordkill.BorderSizePixel = 0
loopswordkill.Size = UDim2.new(0, 200, 0, 15)
loopswordkill.Font = Enum.Font.SourceSansBold
loopswordkill.Text = "loopkill / loopswordkill [plr] [NOTE: NEED SWORD]"
loopswordkill.TextColor3 = Color3.fromRGB(0, 0, 0)
loopswordkill.TextSize = 19.000
loopswordkill.TextXAlignment = Enum.TextXAlignment.Left

unloopswordkill.Name = "unloopswordkill"
unloopswordkill.Parent = list
unloopswordkill.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
unloopswordkill.BackgroundTransparency = 1.000
unloopswordkill.BorderSizePixel = 0
unloopswordkill.Size = UDim2.new(0, 200, 0, 15)
unloopswordkill.Font = Enum.Font.SourceSansBold
unloopswordkill.Text = "unloopkill / unloopswordkill"
unloopswordkill.TextColor3 = Color3.fromRGB(0, 0, 0)
unloopswordkill.TextSize = 19.000
unloopswordkill.TextXAlignment = Enum.TextXAlignment.Left

jump.Name = "jump"
jump.Parent = list
jump.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
jump.BackgroundTransparency = 1.000
jump.BorderSizePixel = 0
jump.Size = UDim2.new(0, 200, 0, 15)
jump.Font = Enum.Font.SourceSansBold
jump.Text = "jump [plr]"
jump.TextColor3 = Color3.fromRGB(0, 0, 0)
jump.TextSize = 19.000
jump.TextXAlignment = Enum.TextXAlignment.Left

btools.Name = "btools"
btools.Parent = list
btools.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
btools.BackgroundTransparency = 1.000
btools.BorderSizePixel = 0
btools.Size = UDim2.new(0, 200, 0, 15)
btools.Font = Enum.Font.SourceSansBold
btools.Text = "btools"
btools.TextColor3 = Color3.fromRGB(0, 0, 0)
btools.TextSize = 19.000
btools.TextXAlignment = Enum.TextXAlignment.Left

view.Name = "view"
view.Parent = list
view.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
view.BackgroundTransparency = 1.000
view.BorderSizePixel = 0
view.Size = UDim2.new(0, 200, 0, 15)
view.Font = Enum.Font.SourceSansBold
view.Text = "view [plr]"
view.TextColor3 = Color3.fromRGB(0, 0, 0)
view.TextSize = 19.000
view.TextXAlignment = Enum.TextXAlignment.Left

script.Name = "script"
script.Parent = list
script.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
script.BackgroundTransparency = 1.000
script.BorderSizePixel = 0
script.Size = UDim2.new(0, 200, 0, 15)
script.Font = Enum.Font.SourceSansBold
script.Text = "script"
script.TextColor3 = Color3.fromRGB(0, 0, 0)
script.TextSize = 19.000
script.TextXAlignment = Enum.TextXAlignment.Left

chaterror.Name = "chaterror"
chaterror.Parent = list
chaterror.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
chaterror.BackgroundTransparency = 1.000
chaterror.BorderSizePixel = 0
chaterror.Size = UDim2.new(0, 200, 0, 15)
chaterror.Font = Enum.Font.SourceSansBold
chaterror.Text = "chaterror"
chaterror.TextColor3 = Color3.fromRGB(0, 0, 0)
chaterror.TextSize = 19.000
chaterror.TextXAlignment = Enum.TextXAlignment.Left

freeze.Name = "freeze"
freeze.Parent = list
freeze.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
freeze.BackgroundTransparency = 1.000
freeze.BorderSizePixel = 0
freeze.Size = UDim2.new(0, 200, 0, 15)
freeze.Font = Enum.Font.SourceSansBold
freeze.Text = "freeze"
freeze.TextColor3 = Color3.fromRGB(0, 0, 0)
freeze.TextSize = 19.000
freeze.TextXAlignment = Enum.TextXAlignment.Left

unfreeze.Name = "unfreeze"
unfreeze.Parent = list
unfreeze.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
unfreeze.BackgroundTransparency = 1.000
unfreeze.BorderSizePixel = 0
unfreeze.Size = UDim2.new(0, 200, 0, 15)
unfreeze.Font = Enum.Font.SourceSansBold
unfreeze.Text = "unfreeze"
unfreeze.TextColor3 = Color3.fromRGB(0, 0, 0)
unfreeze.TextSize = 19.000
unfreeze.TextXAlignment = Enum.TextXAlignment.Left

hide.Name = "hide"
hide.Parent = list
hide.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
hide.BackgroundTransparency = 1.000
hide.BorderSizePixel = 0
hide.Size = UDim2.new(0, 200, 0, 15)
hide.Font = Enum.Font.SourceSansBold
hide.Text = "hide [plr]"
hide.TextColor3 = Color3.fromRGB(0, 0, 0)
hide.TextSize = 19.000
hide.TextXAlignment = Enum.TextXAlignment.Left

unhide.Name = "unhide"
unhide.Parent = list
unhide.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
unhide.BackgroundTransparency = 1.000
unhide.BorderSizePixel = 0
unhide.Size = UDim2.new(0, 200, 0, 15)
unhide.Font = Enum.Font.SourceSansBold
unhide.Text = "unhide"
unhide.TextColor3 = Color3.fromRGB(0, 0, 0)
unhide.TextSize = 19.000
unhide.TextXAlignment = Enum.TextXAlignment.Left

firetouchinterest.Name = "firetouchinterest"
firetouchinterest.Parent = list
firetouchinterest.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
firetouchinterest.BackgroundTransparency = 1.000
firetouchinterest.BorderSizePixel = 0
firetouchinterest.Size = UDim2.new(0, 200, 0, 15)
firetouchinterest.Font = Enum.Font.SourceSansBold
firetouchinterest.Text = "firetouchinterest"
firetouchinterest.TextColor3 = Color3.fromRGB(0, 0, 0)
firetouchinterest.TextSize = 19.000
firetouchinterest.TextXAlignment = Enum.TextXAlignment.Left

telekinesis.Name = "telekinesis"
telekinesis.Parent = list
telekinesis.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
telekinesis.BackgroundTransparency = 1.000
telekinesis.BorderSizePixel = 0
telekinesis.Size = UDim2.new(0, 200, 0, 15)
telekinesis.Font = Enum.Font.SourceSansBold
telekinesis.Text = "telekinesis"
telekinesis.TextColor3 = Color3.fromRGB(0, 0, 0)
telekinesis.TextSize = 19.000
telekinesis.TextXAlignment = Enum.TextXAlignment.Left

antifling.Name = "antifling"
antifling.Parent = list
antifling.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
antifling.BackgroundTransparency = 1.000
antifling.BorderSizePixel = 0
antifling.Size = UDim2.new(0, 200, 0, 15)
antifling.Font = Enum.Font.SourceSansBold
antifling.Text = "antifling"
antifling.TextColor3 = Color3.fromRGB(0, 0, 0)
antifling.TextSize = 19.000
antifling.TextXAlignment = Enum.TextXAlignment.Left

setprefix.Name = "setprefix"
setprefix.Parent = list
setprefix.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
setprefix.BackgroundTransparency = 1.000
setprefix.BorderSizePixel = 0
setprefix.Size = UDim2.new(0, 200, 0, 15)
setprefix.Font = Enum.Font.SourceSansBold
setprefix.Text = "setprefix [prefix]"
setprefix.TextColor3 = Color3.fromRGB(0, 0, 0)
setprefix.TextSize = 19.000
setprefix.TextXAlignment = Enum.TextXAlignment.Left

walkspeed.Name = "walkspeed"
walkspeed.Parent = list
walkspeed.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
walkspeed.BackgroundTransparency = 1.000
walkspeed.BorderSizePixel = 0
walkspeed.Size = UDim2.new(0, 200, 0, 15)
walkspeed.Font = Enum.Font.SourceSansBold
walkspeed.Text = "walkspeed [num]"
walkspeed.TextColor3 = Color3.fromRGB(0, 0, 0)
walkspeed.TextSize = 19.000
walkspeed.TextXAlignment = Enum.TextXAlignment.Left

jumppower.Name = "jumppower"
jumppower.Parent = list
jumppower.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
jumppower.BackgroundTransparency = 1.000
jumppower.BorderSizePixel = 0
jumppower.Size = UDim2.new(0, 200, 0, 15)
jumppower.Font = Enum.Font.SourceSansBold
jumppower.Text = "jumppower [num]"
jumppower.TextColor3 = Color3.fromRGB(0, 0, 0)
jumppower.TextSize = 19.000
jumppower.TextXAlignment = Enum.TextXAlignment.Left

hipheight.Name = "hipheight"
hipheight.Parent = list
hipheight.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
hipheight.BackgroundTransparency = 1.000
hipheight.BorderSizePixel = 0
hipheight.Size = UDim2.new(0, 200, 0, 15)
hipheight.Font = Enum.Font.SourceSansBold
hipheight.Text = "hipheight [num]"
hipheight.TextColor3 = Color3.fromRGB(0, 0, 0)
hipheight.TextSize = 19.000
hipheight.TextXAlignment = Enum.TextXAlignment.Left

noclip.Name = "noclip"
noclip.Parent = list
noclip.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
noclip.BackgroundTransparency = 1.000
noclip.BorderSizePixel = 0
noclip.Size = UDim2.new(0, 200, 0, 15)
noclip.Font = Enum.Font.SourceSansBold
noclip.Text = "noclip"
noclip.TextColor3 = Color3.fromRGB(0, 0, 0)
noclip.TextSize = 19.000
noclip.TextXAlignment = Enum.TextXAlignment.Left

clip.Name = "clip"
clip.Parent = list
clip.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
clip.BackgroundTransparency = 1.000
clip.BorderSizePixel = 0
clip.Size = UDim2.new(0, 200, 0, 15)
clip.Font = Enum.Font.SourceSansBold
clip.Text = "clip"
clip.TextColor3 = Color3.fromRGB(0, 0, 0)
clip.TextSize = 19.000
clip.TextXAlignment = Enum.TextXAlignment.Left

noclipfly.Name = "noclipfly"
noclipfly.Parent = list
noclipfly.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
noclipfly.BackgroundTransparency = 1.000
noclipfly.BorderSizePixel = 0
noclipfly.Size = UDim2.new(0, 200, 0, 15)
noclipfly.Font = Enum.Font.SourceSansBold
noclipfly.Text = "noclipfly"
noclipfly.TextColor3 = Color3.fromRGB(0, 0, 0)
noclipfly.TextSize = 19.000
noclipfly.TextXAlignment = Enum.TextXAlignment.Left

clipfly.Name = "clipfly"
clipfly.Parent = list
clipfly.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
clipfly.BackgroundTransparency = 1.000
clipfly.BorderSizePixel = 0
clipfly.Size = UDim2.new(0, 200, 0, 15)
clipfly.Font = Enum.Font.SourceSansBold
clipfly.Text = "clipfly"
clipfly.TextColor3 = Color3.fromRGB(0, 0, 0)
clipfly.TextSize = 19.000
clipfly.TextXAlignment = Enum.TextXAlignment.Left

goto.Name = "goto"
goto.Parent = list
goto.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
goto.BackgroundTransparency = 1.000
goto.BorderSizePixel = 0
goto.Size = UDim2.new(0, 200, 0, 15)
goto.Font = Enum.Font.SourceSansBold
goto.Text = "goto [plr]"
goto.TextColor3 = Color3.fromRGB(0, 0, 0)
goto.TextSize = 19.000
goto.TextXAlignment = Enum.TextXAlignment.Left

respawn.Name = "respawn"
respawn.Parent = list
respawn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
respawn.BackgroundTransparency = 1.000
respawn.BorderSizePixel = 0
respawn.Size = UDim2.new(0, 200, 0, 15)
respawn.Font = Enum.Font.SourceSansBold
respawn.Text = "respawn"
respawn.TextColor3 = Color3.fromRGB(0, 0, 0)
respawn.TextSize = 19.000
respawn.TextXAlignment = Enum.TextXAlignment.Left

gamerespawn.Name = "gamerespawn"
gamerespawn.Parent = list
gamerespawn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gamerespawn.BackgroundTransparency = 1.000
gamerespawn.BorderSizePixel = 0
gamerespawn.Size = UDim2.new(0, 200, 0, 15)
gamerespawn.Font = Enum.Font.SourceSansBold
gamerespawn.Text = "gamerespawn"
gamerespawn.TextColor3 = Color3.fromRGB(0, 0, 0)
gamerespawn.TextSize = 19.000
gamerespawn.TextXAlignment = Enum.TextXAlignment.Left

equiptools.Name = "equiptools"
equiptools.Parent = list
equiptools.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
equiptools.BackgroundTransparency = 1.000
equiptools.BorderSizePixel = 0
equiptools.Size = UDim2.new(0, 200, 0, 15)
equiptools.Font = Enum.Font.SourceSansBold
equiptools.Text = "equiptools"
equiptools.TextColor3 = Color3.fromRGB(0, 0, 0)
equiptools.TextSize = 19.000
equiptools.TextXAlignment = Enum.TextXAlignment.Left

fling.Name = "fling"
fling.Parent = list
fling.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
fling.BackgroundTransparency = 1.000
fling.BorderSizePixel = 0
fling.Size = UDim2.new(0, 200, 0, 15)
fling.Font = Enum.Font.SourceSansBold
fling.Text = "fling [plr]"
fling.TextColor3 = Color3.fromRGB(0, 0, 0)
fling.TextSize = 19.000
fling.TextXAlignment = Enum.TextXAlignment.Left

superfling.Name = "superfling"
superfling.Parent = list
superfling.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
superfling.BackgroundTransparency = 1.000
superfling.BorderSizePixel = 0
superfling.Size = UDim2.new(0, 200, 0, 15)
superfling.Font = Enum.Font.SourceSansBold
superfling.Text = "superfling [plr]"
superfling.TextColor3 = Color3.fromRGB(0, 0, 0)
superfling.TextSize = 19.000
superfling.TextXAlignment = Enum.TextXAlignment.Left

ultrafling.Name = "ultrafling"
ultrafling.Parent = list
ultrafling.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ultrafling.BackgroundTransparency = 1.000
ultrafling.BorderSizePixel = 0
ultrafling.Size = UDim2.new(0, 200, 0, 15)
ultrafling.Font = Enum.Font.SourceSansBold
ultrafling.Text = "ultrafling [plr]"
ultrafling.TextColor3 = Color3.fromRGB(0, 0, 0)
ultrafling.TextSize = 19.000
ultrafling.TextXAlignment = Enum.TextXAlignment.Left

flingbypass.Name = "flingbypass"
flingbypass.Parent = list
flingbypass.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
flingbypass.BackgroundTransparency = 1.000
flingbypass.BorderSizePixel = 0
flingbypass.Size = UDim2.new(0, 200, 0, 15)
flingbypass.Font = Enum.Font.SourceSansBold
flingbypass.Text = "flingbypass [plr]"
flingbypass.TextColor3 = Color3.fromRGB(0, 0, 0)
flingbypass.TextSize = 19.000
flingbypass.TextXAlignment = Enum.TextXAlignment.Left

rejoin.Name = "rejoin"
rejoin.Parent = list
rejoin.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
rejoin.BackgroundTransparency = 1.000
rejoin.BorderSizePixel = 0
rejoin.Size = UDim2.new(0, 200, 0, 15)
rejoin.Font = Enum.Font.SourceSansBold
rejoin.Text = "rejoin"
rejoin.TextColor3 = Color3.fromRGB(0, 0, 0)
rejoin.TextSize = 19.000
rejoin.TextXAlignment = Enum.TextXAlignment.Left

admin.Name = "admin"
admin.Parent = list
admin.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
admin.BackgroundTransparency = 1.000
admin.BorderSizePixel = 0
admin.Size = UDim2.new(0, 200, 0, 15)
admin.Font = Enum.Font.SourceSansBold
admin.Text = "admin [plr]"
admin.TextColor3 = Color3.fromRGB(0, 0, 0)
admin.TextSize = 19.000
admin.TextXAlignment = Enum.TextXAlignment.Left

unadmin.Name = "unadmin"
unadmin.Parent = list
unadmin.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
unadmin.BackgroundTransparency = 1.000
unadmin.BorderSizePixel = 0
unadmin.Size = UDim2.new(0, 200, 0, 15)
unadmin.Font = Enum.Font.SourceSansBold
unadmin.Text = "unadmin [plr]"
unadmin.TextColor3 = Color3.fromRGB(0, 0, 0)
unadmin.TextSize = 19.000
unadmin.TextXAlignment = Enum.TextXAlignment.Left

commands_2.Name = "commands"
commands_2.Parent = list
commands_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
commands_2.BackgroundTransparency = 1.000
commands_2.BorderSizePixel = 0
commands_2.Size = UDim2.new(0, 200, 0, 15)
commands_2.Font = Enum.Font.SourceSansBold
commands_2.Text = "commands"
commands_2.TextColor3 = Color3.fromRGB(0, 0, 0)
commands_2.TextSize = 19.000
commands_2.TextXAlignment = Enum.TextXAlignment.Left

scriptpanel.Name = "scriptpanel"
scriptpanel.Parent = Frame
scriptpanel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
scriptpanel.BackgroundTransparency = 0.150
scriptpanel.BorderSizePixel = 0
scriptpanel.Position = UDim2.new(1.01512003, 0, -0.00345088937, 0)
scriptpanel.Size = UDim2.new(0, 200, 0, 254)

titleframe_2.Name = "titleframe"
titleframe_2.Parent = scriptpanel
titleframe_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
titleframe_2.BackgroundTransparency = 0.150
titleframe_2.BorderSizePixel = 0
titleframe_2.Size = UDim2.new(0, 200, 0, 25)

TextLabel_2.Parent = titleframe_2
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.00888916012, 0, 0, 0)
TextLabel_2.Size = UDim2.new(0, 133, 0, 25)
TextLabel_2.Font = Enum.Font.SourceSansBold
TextLabel_2.Text = "Script Panel"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 20.000
TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left

prefix1.Name = "prefix1"
prefix1.Parent = scriptpanel
prefix1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
prefix1.BackgroundTransparency = 0.150
prefix1.BorderSizePixel = 0
prefix1.Position = UDim2.new(0.0399999991, 0, 0.14173229, 0)
prefix1.Size = UDim2.new(0, 100, 0, 20)
prefix1.Font = Enum.Font.SourceSansBold
prefix1.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
prefix1.PlaceholderText = "Enter Prefix"
prefix1.Text = ""
prefix1.TextColor3 = Color3.fromRGB(255, 255, 255)
prefix1.TextSize = 17.000
prefix1.TextWrapped = true

TextButton_2.Parent = scriptpanel
TextButton_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.BackgroundTransparency = 0.150
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(0.569999993, 0, 0.14173229, 0)
TextButton_2.Size = UDim2.new(0, 80, 0, 20)
TextButton_2.Font = Enum.Font.SourceSansBold
TextButton_2.Text = "Enter"
TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.TextSize = 17.000

currentprefix.Name = "currentprefix"
currentprefix.Parent = scriptpanel
currentprefix.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
currentprefix.BackgroundTransparency = 1.000
currentprefix.BorderSizePixel = 0
currentprefix.Position = UDim2.new(0.0388891585, 0, 0.22047244, 0)
currentprefix.Size = UDim2.new(0, 133, 0, 15)
currentprefix.Font = Enum.Font.SourceSansBold
currentprefix.Text = "Current Prefix: "..prefix..""
currentprefix.TextColor3 = Color3.fromRGB(0, 0, 0)
currentprefix.TextSize = 19.000
currentprefix.TextXAlignment = Enum.TextXAlignment.Left

currentfps.Name = "currentfps"
currentfps.Parent = scriptpanel
currentfps.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
currentfps.BackgroundTransparency = 1.000
currentfps.BorderSizePixel = 0
currentfps.Position = UDim2.new(0.0388891585, 0, 0.712598443, 0)
currentfps.Size = UDim2.new(0, 95, 0, 15)
currentfps.Font = Enum.Font.SourceSansBold
currentfps.Text = "Current FPS:"
currentfps.TextColor3 = Color3.fromRGB(0, 0, 0)
currentfps.TextSize = 19.000
currentfps.TextXAlignment = Enum.TextXAlignment.Left

Number.Name = "Number"
Number.Parent = scriptpanel
Number.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Number.BackgroundTransparency = 1.000
Number.BorderSizePixel = 0
Number.Position = UDim2.new(0.513889134, 0, 0.712598443, 0)
Number.Size = UDim2.new(0, 80, 0, 15)
Number.Font = Enum.Font.SourceSansBold
Number.Text = "0"
Number.TextColor3 = Color3.fromRGB(0, 0, 0)
Number.TextSize = 19.000
Number.TextXAlignment = Enum.TextXAlignment.Left

-- Scripts:

local function XCUC_fake_script() -- TextButton.Script 
	local script = Instance.new('Script', TextButton)

	button = script.Parent
	function onClicked(GUI)
	 commands:remove()
	end
	script.Parent.MouseButton1Click:connect(onClicked)
end
coroutine.wrap(XCUC_fake_script)()
local function XCUC2_fake_script() -- TextButton.Script 
	local script = Instance.new('Script', TextButton_2)

	button = script.Parent
	function onClicked(GUI)
	prefix = prefix1.Text
currentprefix.Text = "Current Prefix: "..prefix..""
	end
	script.Parent.MouseButton1Click:connect(onClicked)
end
coroutine.wrap(XCUC2_fake_script)()
local function HVIERVO_fake_script() -- mainframe.Smooth GUI Dragging 
	local script = Instance.new('LocalScript', Frame)

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
coroutine.wrap(HVIERVO_fake_script)()
local function SVWUIJX_fake_script() -- Number.LocalScript 
	local script = Instance.new('LocalScript', Number)

	local RunService = game:GetService("RunService")
	
	local FPSCounter = script.Parent
	
	RunService.RenderStepped:Connect(function()
		local FPS = workspace:GetRealPhysicsFPS()
		
		local Color1 = Color3.fromRGB(0,0,0)
		local Color2 = Color3.fromRGB(150,50,50)
	
		local NewColor = Color2:lerp(Color1, FPS/60)
		
		FPSCounter.TextColor3 = NewColor
		FPSCounter.Text = math.floor(FPS + 0.5)
	end)
end
coroutine.wrap(SVWUIJX_fake_script)()



    elseif spaceSplit[1] == prefix.."stopadmin" or spaceSplit[1] == prefix.."killscript" then
    Notice("The Script Has Been Stoped To Use The Script Again Please Re-Execute The Script.")

        cc:Disconnect()
        nsLoop:Disconnect()
        ncLoop:Disconnect()

    end
    
end)
local function Command(Cmd)
	return Arg1 == prefix..Cmd
end
function rank1PlayerChatted(Message, target)
	Split = Message:split(" ")
	Arg1 = Split[1]
	Arg2 = Split[2]
	Arg3 = Split[3]
	Arg4 = Split[4]
	local old = Command
	local Command = function(cmd) return old(cmd, target) end 
	if Command("kill") then
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
                v.Grip = CFrame.new(0, 1000, 0)
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
	end
	if Command("jump") then
	local target = getPlr(Arg2)
        local old = getChar().HumanoidRootPart.CFrame
        getChar().HumanoidRootPart.CFrame = target.Character.Humanoid.RootPart.CFrame
        for i=1,2 do
        wait()
        getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(0,-8,0)
        getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(0,2,0)
        --getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(0,-2,0)
        wait()
        getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(0,-2,0)
        getChar().HumanoidRootPart.CFrame = target.Character.Humanoid.RootPart.CFrame
        getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(0,-8,0)
        wait()
        end
        getChar():WaitForChild("HumanoidRootPart").CFrame = old
	end
	if Command("fling") then
	local target = getPlr(Arg2)
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
	end
	if Command("superfling") then
	local target = getPlr(Arg2)
	local flingTime = 3.1
        local fTime = os.clock()
        local rot = 0
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
                if rot == 80 then
                    rot = 0
                else
                    rot = 80
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
	if Command("ultrafling") then
	local target = getPlr(Arg2)
	local flingTime = 6.9
        local fTime = os.clock()
        local rot = 0
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
                if rot == 60 then
                    rot = 0
                else
                    rot = 60
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
	if Command("bfling") then
	local target = getPlr(Arg2)
	local flingTime = 5.5
        local fTime = os.clock()
        local rot = 0
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
                if rot == 60 then
                    rot = 0
                else
                    rot = 10
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
	if Command("breakchat") then
	wait(0.5)
for i=1,6 do
local args = {
    [1] = " ",
    [2] = "All"
}
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
end
	end
	if Command("cmd") or Command("cmds") then
		Chat("/w "..target.Name.." Your Prefix is "..prefix.."")
		Chat("/w "..target.Name.." Your Commands Are kill [plr], fling [plr], superfling [plr], ultrafling [plr], bfling [plr]. ")
		Chat("/w "..target.Name.." jump [plr], breakchat. ")
	end
end

game.Players.LocalPlayer.Chatted:Connect(PlayerChatted)


function CheckPermissions(target) 
	local connection = target.Chatted:Connect(function(Message)
		if admins[target.UserId] then
			rank1PlayerChatted(Message, target)
		end
		
	end)
	table.insert(connections, connection)
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

local cmdbar = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextBox = Instance.new("TextBox")

local function Tween(Object, Time, Style, Direction, Customization)
	if Style == nil then
		game:GetService("TweenService"):Create(Object, TweenInfo.new(Time), Customization):Play()
	else
		game:GetService("TweenService"):Create(Object, TweenInfo.new(Time, Style, Direction), Customization):Play()
	end
end

cmdbar.Name = "cmdbar"
cmdbar.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
cmdbar.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
cmdbar.ResetOnSpawn = false

Frame.Parent = cmdbar
Frame.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
Frame.BackgroundTransparency = 0.600
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0, 0, -1, 0)
Frame.Size = UDim2.new(0, 2000, 0, 50)

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
TextBox.BackgroundTransparency = 1.000
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.059602648, 0, 0, 0)
TextBox.Size = UDim2.new(0, 1330, 0, 50)
TextBox.Font = Enum.Font.SourceSansLight
TextBox.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
TextBox.PlaceholderText = "Enter Command Here"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextSize = 45.000
TextBox.TextStrokeTransparency = 0.800
TextBox.TextWrapped = true
TextBox.TextXAlignment = Enum.TextXAlignment.Left

local CmdBlurEffect = Instance.new("BlurEffect")
CmdBlurEffect.Name = "CmdBlurEffect"
CmdBlurEffect.Parent = game:GetService("Lighting")
CmdBlurEffect.Enabled = true
CmdBlurEffect.Size = 0 -- 10

TextBox.Focused:connect(function()
wait(0.2)
	TextBox.Text = prefix

end)
TextBox.FocusLost:connect(function(enterPressed)
	local Rem = TextBox.Text

	game.Players:Chat(Rem)
	TextBox.Text = ""
	
wait(0.5)
Tween(Frame, 1.599, Linear, In, {Position = UDim2.new(0, 0, -1, 0)})
game:GetService("TweenService"):Create(CmdBlurEffect, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Size = 0}):Play()
end)
game:GetService("Players").LocalPlayer:GetMouse().KeyDown:connect(function(input)
	if (input == ";") then
		TextBox:CaptureFocus()
Tween(Frame, .5, Linear, In, {Position = UDim2.new(0, 0, 0.023, 0)})
game:GetService("TweenService"):Create(CmdBlurEffect, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Size = 15}):Play()
			end
		
end)