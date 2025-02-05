
-- hay your not supposed to see this skid!



print("PRISON ADMIN SCRIPT LOADED")

local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://6366788549"
sound.Parent = game:GetService("SoundService")
sound:Play()
prefix = ";"
local gui = game:GetService("Players").LocalPlayer.PlayerGui.Home.hud
gui.Topbar.GuiScript.Enabled = false
gui.Topbar.Pulldownmenu.Frame.Description.Text = "Thanks for using PRISON ADMIN this is a beta so maybe some bugs? also starting prefix is ; if you changed it and forgot do /console and scroll down, want to see what commands are active? click [?], made by atom#6413"
gui.Topbar.titleBar.Title.Text = "PRISON ADMIN BETA"
gui.Topbar.Pulldownmenu.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
gui.Topbar.titleBar.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
gui.ClockFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
gui.MenuButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
gui.StaminaFrame.BackgroundColor3 = Color3.fromRGB(55, 55, 55)

     local HWIntro = Instance.new("ScreenGui")
local H = Instance.new("TextLabel")
local W = Instance.new("TextLabel")
local HOODWINK = Instance.new("TextLabel")

HWIntro.Name = "HWIntro"
HWIntro.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
HWIntro.ResetOnSpawn = false

HOODWINK.Parent = HWIntro
HOODWINK.BackgroundColor3 = Color3.new(1, 1, 1)
HOODWINK.BackgroundTransparency = 1
HOODWINK.Position = UDim2.new(0.433414042, 0, 0.1, 0)
HOODWINK.Size = UDim2.new(0.149313956, 0, 0.0854700878, 0)
HOODWINK.Font = Enum.Font.GothamBold
HOODWINK.Text = "Welcome To Prison Admin The Prefix Is ;"
HOODWINK.TextColor3 = Color3.new(1, 1, 1)
HOODWINK.TextScaled = false
HOODWINK.TextSize = 15
HOODWINK.TextWrapped = true

for i = 1,0,-0.1 do
	HOODWINK.TextTransparency = i
	W.BackgroundTransparency = i
	W.TextTransparency = i
	H.BackgroundTransparency = i
	H.TextTransparency = i
	wait()
end

wait(2)

for i = 0,1,0.1 do
	HOODWINK.TextTransparency = i
	W.BackgroundTransparency = i
	W.TextTransparency = i
	H.BackgroundTransparency = i
	H.TextTransparency = i
	wait()
end

HWIntro:Destroy()

function Chat(Message)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(Message, "All")
end



local players = game:GetService("Players")
local plr = players.LocalPlayer
	local admins = {}
	local connections = {} 
soundspam = false
annoy = false
autoro = false
antiattach = false
lk = false
lmk = false
lag = false
earrape = false

local gui2 = game:GetService("Players").LocalPlayer.PlayerGui.TestGui.Frame
gui2.LocalScript.Enabled = false
gui2.title.Text = "Active Commands"
gui2.age.Text = "Sound Spammer [off]"
gui2.client.Text = "Anti Fling [off]"
gui2.server.Text = "Noclip [off]"


Events = {
		loadchar = function()
			if plr.Team == game.Teams.Inmates then
				local ohString1 = "Bright orange"
				workspace.Remote.TeamEvent:FireServer(ohString1)
			elseif plr.Team == game.Teams.Guards then

				local ohString1 = "Bright blue"
				workspace.Remote.TeamEvent:FireServer(ohString1)
			elseif plr.Team == game.Teams.Criminals then
				workspace.Remote.TeamEvent:FireServer("Bright orange")
				wait(.3)
				local crimpad = workspace["Criminals Spawn"].SpawnLocation
				crimpad.CanCollide = false
				crimpad.Transparency = 1
				repeat task.wait()crimpad.CFrame = getpos() until plr.Team == game.Teams.Criminals
				MoveToJunk(crimpad)
			end
		end,
	}



local function getChar()
    return plr.Character
end

local function getBp()
    return plr.Backpack
end
function unsit()
		plr.Character:FindFirstChildOfClass("Humanoid").Sit = false
end
function GetPlayersPart(player)
		if player and player.Character then
			return player.Character:FindFirstChild("Head") or player.Character:FindFirstChildOfClass("Part") or player.Character:FindFirstChildOfClass("MeshPart")
		end
	end
function ReturnGun()
		for i,v in pairs(plr.Backpack:GetChildren()) do
			if v and v:IsA("Tool") and v:FindFirstChildOfClass("ModuleScript") then
				return v
			end
		end
		return nil
	end
function touch(Toucher,TouchThis)
		if not Toucher or not TouchThis then
			return
		end
		task.spawn(function()
			firetouchinterest(Toucher,TouchThis,0)
			firetouchinterest(Toucher,TouchThis,1)
			print("Touch")
		end)
	end

function MoveTo(Pos,t)
		unsit()
		pcall(function()
			if typeof(Pos):lower() == "position" then
				Pos = CFrame.new(Pos)
			end
			for i =1,3 do
				plr.Character:FindFirstChild("HumanoidRootPart").CFrame = Pos
			end
		end)
	end
	function getpos()
		return plr.Character:FindFirstChild("HumanoidRootPart").CFrame
	end
	
function FixHats(Hats)
		local function FindHat(a)
			for i,v in pairs(Hats) do
				if v and v == a then
					return v
				end
			end
			return nil
		end
		--Fix hats 2
		for i,v in pairs(Hats) do
			if v then
				pcall(function()
					local Hat = v.Hat
					local NewWeld = Instance.new("Weld",Hat.Handle)
					NewWeld.Part0 = Hat.Handle
					NewWeld.Part1 = plr.Character.Head
					NewWeld.C0 = v.OldPosition
					NewWeld.C1 = v.OldPosition2
					Hat.Handle.Anchored = false
				end)
			end
		end
end

function GetGun(Item)
local saved = plr.Character:FindFirstChild("HumanoidRootPart").CFrame
		
		if workspace.Prison_ITEMS.giver:FindFirstChild(Item) and workspace.Prison_ITEMS.giver:FindFirstChild(Item):FindFirstChild("ITEMPICKUP") then
			Item =workspace.Prison_ITEMS.giver:FindFirstChild(Item)
			local ohInstance1 = Item:FindFirstChildOfClass("Part")
			MoveTo(CFrame.new(ohInstance1.Position))
			repeat wait()
				local ohInstance1 = Item:FindFirstChildOfClass("Part")
				MoveTo(CFrame.new(ohInstance1.Position))
				task.spawn(function()
					workspace.Remote.ItemHandler:InvokeServer(ohInstance1)
				end)
				wait()
			until plr.Backpack:FindFirstChild(Item.Name) or plr.Character:FindFirstChild(Item.Name)
		end
		
	end

function Valid_Team(Team)
		if Team and typeof(Team):lower()=="string" then
			local Valid = {
				"Bright orange",
				"Bright blue",
			}
			if table.find(Valid,Team) then
				return true
			elseif Team == "Really red" then
				return 1
			end
			return nil
		end
	end
	function Last_Team(Lastteam)
		task.spawn(function()
			local a,b,c= nil,getpos(),workspace.CurrentCamera.CFrame
			a =plr.CharacterAdded:Connect(function(Char)
				task.spawn(function()
					workspace.CurrentCamera:GetPropertyChangedSignal("CFrame"):Wait()
					for i =1,5 do
						workspace.CurrentCamera.CFrame = c
					end
				end)
				Char:WaitForChild("HumanoidRootPart")
				MoveTo(b)
				a:Disconnect()
			end)
			local Team = Valid_Team(Lastteam)
			if Team and Team~=1 then
				local pos = getpos()
				workspace.Remote.TeamEvent:FireServer(Lastteam)
			elseif Team and Team == 1 then
				workspace.Remote.TeamEvent:FireServer("Bright orange")
				local crimpad = workspace["Criminals Spawn"].SpawnLocation
				crimpad.CanCollide = false
				crimpad.Transparency = 1
				repeat task.wait()crimpad.CFrame = getpos() until plr.Team == game.Teams.Criminals
				MoveToJunk(crimpad)
			end
		end)
	end
	

local function getPlr(str)
    for i,v in pairs(players:GetPlayers()) do
        if v.Name:lower():match(str) or v.DisplayName:lower():match(str) then
            return v
        end
    end
end




local mainfake
local mainfake = Instance.new("Part",game.Chat)

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
    if spaceSplit[1] == prefix.."kill" or spaceSplit[1] == prefix.."k" then
    local target = getPlr(tostring(spaceSplit[2]):lower())
    if plr.Backpack:FindFirstChild("M9") or plr.Character:FindFirstChild("M9") then
    wait(0.01)
    local Gun = ReturnGun()
		
		if Gun and plr.Team ~= target.Team then
			local Gen = {}
			for i =1,15 do
				Gen[#Gen+1]={
					["RayObject"] = Ray.new(Vector3.new(0,0,0), Vector3.new(0,0,0)),
					["Distance"] = .1,
					["Cframe"] = CFrame.new(),
					["Hit"] = target.Character:WaitForChild("Head")
				}
			end

			game:GetService("ReplicatedStorage").ShootEvent:FireServer(Gen, Gun)
		end
	else
	    local old = plr.Character:FindFirstChild("HumanoidRootPart").CFrame
    GetGun("M9")
    getChar():WaitForChild("HumanoidRootPart").CFrame = old
    wait(0.01)
    local Gun = ReturnGun()
		
		if Gun and plr.Team ~= target.Team then
			local Gen = {}
			for i =1,15 do
				Gen[#Gen+1]={
					["RayObject"] = Ray.new(Vector3.new(0,0,0), Vector3.new(0,0,0)),
					["Distance"] = .1,
					["Cframe"] = CFrame.new(),
					["Hit"] = target.Character:WaitForChild("Head")
				}
			end

			game:GetService("ReplicatedStorage").ShootEvent:FireServer(Gen, Gun)
		end
		end
	elseif spaceSplit[1] == prefix.."damage"  then
    local target = getPlr(tostring(spaceSplit[2]):lower())
     local val = tonumber(spaceSplit[3])
     if val >= 16 then return end 
    if plr.Backpack:FindFirstChild("M9") or plr.Character:FindFirstChild("M9") then
    wait(0.01)
    local Gun = ReturnGun()
		
		if Gun and plr.Team ~= target.Team then
			local Gen = {}
			for i =1,val do
				Gen[#Gen+1]={
					["RayObject"] = Ray.new(Vector3.new(0,0,0), Vector3.new(0,0,0)),
					["Distance"] = .1,
					["Cframe"] = CFrame.new(),
					["Hit"] = target.Character:WaitForChild("Head")
				}
			end

			game:GetService("ReplicatedStorage").ShootEvent:FireServer(Gen, Gun)
		end
	else
	    local old = plr.Character:FindFirstChild("HumanoidRootPart").CFrame
    GetGun("M9")
    getChar():WaitForChild("HumanoidRootPart").CFrame = old
    wait(0.01)
    local Gun = ReturnGun()
		
		if Gun and plr.Team ~= target.Team then
			local Gen = {}
			for i =1,val do
				Gen[#Gen+1]={
					["RayObject"] = Ray.new(Vector3.new(0,0,0), Vector3.new(0,0,0)),
					["Distance"] = .1,
					["Cframe"] = CFrame.new(),
					["Hit"] = target.Character:WaitForChild("Head")
				}
			end

			game:GetService("ReplicatedStorage").ShootEvent:FireServer(Gen, Gun)
		end
		end
		
		elseif spaceSplit[1] == prefix.."mkick" then
    local target = getPlr(tostring(spaceSplit[2]):lower())
    if plr.Backpack:FindFirstChild("M9") or plr.Character:FindFirstChild("M9") then
    wait(0.01)
    local Gun = ReturnGun()
		
			if Gun then
		for i = 1,55 do
			local Gen = {}
			for i =1,25 do
				Gen[#Gen+1]={
					["RayObject"] = Ray.new(Vector3.new(0,0,0), Vector3.new(0,0,0)),
					["Distance"] = .1,
					["Cframe"] = CFrame.new(),
					["Hit"] = target.Character:WaitForChild("Head")
				}
			end

			game:GetService("ReplicatedStorage").ShootEvent:FireServer(Gen, Gun)
			end
		end
	else
	    local old = plr.Character:FindFirstChild("HumanoidRootPart").CFrame
    GetGun("M9")
    getChar():WaitForChild("HumanoidRootPart").CFrame = old
    wait(0.01)
    local Gun = ReturnGun()
		
		if Gun then
		for i = 1,55 do
			local Gen = {}
			for i =1,25 do
				Gen[#Gen+1]={
					["RayObject"] = Ray.new(Vector3.new(0,0,0), Vector3.new(0,0,0)),
					["Distance"] = .1,
					["Cframe"] = CFrame.new(),
					["Hit"] = target.Character:WaitForChild("Head")
				}
			end

			game:GetService("ReplicatedStorage").ShootEvent:FireServer(Gen, Gun)
			end
		end
		end
		
		elseif spaceSplit[1] == prefix.."kick" then
    local target = getPlr(tostring(spaceSplit[2]):lower())
    if plr.Backpack:FindFirstChild("M9") or plr.Character:FindFirstChild("M9") then
    wait(0.01)
    local Gun = ReturnGun()
		
		if Gun then
				
		for i = 1,105 do
			local Gen = {}
			for i =1,135 do
				Gen[#Gen+1]={
					["RayObject"] = Ray.new(Vector3.new(0,0,0), Vector3.new(0,0,0)),
					["Distance"] = .1,
					["Cframe"] = CFrame.new(),
					["Hit"] = target.Character:WaitForChild("Head")
				}
			end

			game:GetService("ReplicatedStorage").ShootEvent:FireServer(Gen, Gun)
			end
		end
	else
	    local old = plr.Character:FindFirstChild("HumanoidRootPart").CFrame
    GetGun("M9")
    getChar():WaitForChild("HumanoidRootPart").CFrame = old
    wait(0.01)
    local Gun = ReturnGun()
		
			if Gun then
		for i = 1,105 do
			local Gen = {}
			for i =1,135 do
				Gen[#Gen+1]={
					["RayObject"] = Ray.new(Vector3.new(0,0,0), Vector3.new(0,0,0)),
					["Distance"] = .1,
					["Cframe"] = CFrame.new(),
					["Hit"] = target.Character:WaitForChild("Head")
				}
			end

			game:GetService("ReplicatedStorage").ShootEvent:FireServer(Gen, Gun)
			end
		end
		end
		task.wait(5)
		if target or target.Character or target.Character.Head then
		if plr.Backpack:FindFirstChild("M9") or plr.Character:FindFirstChild("M9") then
    wait(0.01)
    local Gun = ReturnGun()
		
		if Gun then
				
		for i = 1,40 do
			local Gen = {}
			for i =1,135 do
				Gen[#Gen+1]={
					["RayObject"] = Ray.new(Vector3.new(0,0,0), Vector3.new(0,0,0)),
					["Distance"] = .1,
					["Cframe"] = CFrame.new(),
					["Hit"] = target.Character:WaitForChild("Head")
				}
			end

			game:GetService("ReplicatedStorage").ShootEvent:FireServer(Gen, Gun)
			end
		end
	else
	    local old = plr.Character:FindFirstChild("HumanoidRootPart").CFrame
    GetGun("M9")
    getChar():WaitForChild("HumanoidRootPart").CFrame = old
    wait(0.01)
    local Gun = ReturnGun()
		
			if Gun then
		for i = 1,40 do
			local Gen = {}
			for i =1,135 do
				Gen[#Gen+1]={
					["RayObject"] = Ray.new(Vector3.new(0,0,0), Vector3.new(0,0,0)),
					["Distance"] = .1,
					["Cframe"] = CFrame.new(),
					["Hit"] = target.Character:WaitForChild("Head")
				}
			end

			game:GetService("ReplicatedStorage").ShootEvent:FireServer(Gen, Gun)
			end
		end
		end
		end
		elseif spaceSplit[1] == prefix.."lag" then
		lag = true
		 local tool = getBp():FindFirstChildOfClass("Tool") or getChar():FindFirstChildOfClass("Tool")
    repeat wait(3.5)
    if plr.Backpack:FindFirstChild("AK-47") or plr.Character:FindFirstChild("AK-47") then
    wait(0.01)
    local Gun = ReturnGun()

		
			local Gen = {}
			for i =1,8 do
				Gen[#Gen+1]={
					["RayObject"] = Ray.new(Vector3.new(0,0,0), Vector3.new(0,0,0)),
					["Distance"] = .1,
					["Bullets"] = 1,
					["Cframe"] = CFrame.new(),
					["Hit"] = plr.Character:WaitForChild("Head")
				}
			end

			game:GetService("ReplicatedStorage").ShootEvent:FireServer(Gen, Gun)
	
	else
	    local old = plr.Character:FindFirstChild("HumanoidRootPart").CFrame
    GetGun("AK-47")
    getChar():WaitForChild("HumanoidRootPart").CFrame = old	
		 wait(0.01)
    local Gun = ReturnGun()
				
			local Gen = {}
			for i =1,8 do
				Gen[#Gen+1]={
					["RayObject"] = Ray.new(Vector3.new(0,0,0), Vector3.new(0,0,0)),
					["Distance"] = .1,
					["Bullets"] = 1,
					["Cframe"] = CFrame.new(),
					["Hit"] = plr.Character:WaitForChild("Head")
				}
			end

			game:GetService("ReplicatedStorage").ShootEvent:FireServer(Gen, Gun)

		end
		
		
		until lag == false
		elseif spaceSplit[1] == prefix.."unlag" then
		lag = false
		
		elseif spaceSplit[1] == prefix.."shutdown" then
    lk = true
    local tool = getBp():FindFirstChildOfClass("Tool") or getChar():FindFirstChildOfClass("Tool")

    repeat wait()
    if plr.Backpack:FindFirstChild("AK-47") or plr.Character:FindFirstChild("AK-47") then
    wait(0.01)
    local Gun = ReturnGun()

		
			local Gen = {}
			for i =1,15 do
				Gen[#Gen+1]={
					["RayObject"] = Ray.new(Vector3.new(0,0,0), Vector3.new(0,0,0)),
					["Distance"] = .1,
					["Bullets"] = 15,
					["Cframe"] = CFrame.new(),
					["Hit"] = plr.Character:WaitForChild("Head")
				}
			end

			game:GetService("ReplicatedStorage").ShootEvent:FireServer(Gen, Gun)
	
	else
	    local old = plr.Character:FindFirstChild("HumanoidRootPart").CFrame
    GetGun("AK-47")
    getChar():WaitForChild("HumanoidRootPart").CFrame = old	
		 wait(0.01)
    local Gun = ReturnGun()
				
			local Gen = {}
			for i =1,15 do
				Gen[#Gen+1]={
					["RayObject"] = Ray.new(Vector3.new(0,0,0), Vector3.new(0,0,0)),
					["Distance"] = .1,
					["Bullets"] = 15,
					["Cframe"] = CFrame.new(),
					["Hit"] = plr.Character:WaitForChild("Head")
				}
			end

			game:GetService("ReplicatedStorage").ShootEvent:FireServer(Gen, Gun)

		end
		
		
		until lk == false

elseif spaceSplit[1] == prefix.."break" then
    lk = true
    local tool = getBp():FindFirstChildOfClass("Tool") or getChar():FindFirstChildOfClass("Tool")

    repeat wait()
    for _, sound in next, game.Workspace:GetDescendants() do
    if sound:IsA("Sound") then
        sound:Play()
    end
    end
    if plr.Backpack:FindFirstChild("AK-47") or plr.Character:FindFirstChild("AK-47") then
    wait(0.01)
    local Gun = ReturnGun()

		
			local Gen = {}
			for i =1,15 do
				Gen[#Gen+1]={
					["RayObject"] = Ray.new(Vector3.new(0,0,0), Vector3.new(0,0,0)),
					["Distance"] = .1,
					["Bullets"] = 15,
					["Cframe"] = CFrame.new(),
					["Hit"] = plr.Character:WaitForChild("Head")
				}
			end

			game:GetService("ReplicatedStorage").ShootEvent:FireServer(Gen, Gun)
	
	else
	    local old = plr.Character:FindFirstChild("HumanoidRootPart").CFrame
    GetGun("AK-47")
    getChar():WaitForChild("HumanoidRootPart").CFrame = old	
		 wait(0.01)
    local Gun = ReturnGun()
				
			local Gen = {}
			for i =1,15 do
				Gen[#Gen+1]={
					["RayObject"] = Ray.new(Vector3.new(0,0,0), Vector3.new(0,0,0)),
					["Distance"] = .1,
					["Bullets"] = 15,
					["Cframe"] = CFrame.new(),
					["Hit"] = plr.Character:WaitForChild("Head")
				}
			end

			game:GetService("ReplicatedStorage").ShootEvent:FireServer(Gen, Gun)

		end
		
		
		until lk == false
    
    elseif spaceSplit[1] == prefix.."mkill" or spaceSplit[1] == prefix.."mk" then
local target = getPlr(tostring(spaceSplit[2]):lower())
local old = plr.Character:FindFirstChild("HumanoidRootPart").CFrame
        game.Players.LocalPlayer.Character.Animate.Disabled = true
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = target.Character.HumanoidRootPart.CFrame
		wait(0.1599)
		for i =1,15 do
		 game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = target.Character.HumanoidRootPart.CFrame
			task.spawn(function()
				game.ReplicatedStorage["meleeEvent"]:FireServer(target)
				game.ReplicatedStorage["meleeEvent"]:FireServer(target)
				game.ReplicatedStorage["meleeEvent"]:FireServer(target)
			end)
		end
		wait(0.1599)
		game.Players.LocalPlayer.Character.Animate.Disabled = false
		game:GetService("Players").LocalPlayer.Status.isHostile.Value = false
		getChar():WaitForChild("HumanoidRootPart").CFrame = old
		
		 elseif spaceSplit[1] == prefix.."loopmkill" or spaceSplit[1] == prefix.."lmk" then
local target = getPlr(tostring(spaceSplit[2]):lower())
lmk = true
repeat wait()
if target.Character.Humanoid.Health >= 100 then
local old = plr.Character:FindFirstChild("HumanoidRootPart").CFrame
        game.Players.LocalPlayer.Character.Animate.Disabled = true
 game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = target.Character.HumanoidRootPart.CFrame
		wait(0.1599)
		for i =1,15 do
		 game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = target.Character.HumanoidRootPart.CFrame
			task.spawn(function()
				game.ReplicatedStorage["meleeEvent"]:FireServer(target)
				game.ReplicatedStorage["meleeEvent"]:FireServer(target)
				game.ReplicatedStorage["meleeEvent"]:FireServer(target)
			end)
		end
		wait(0.1599)
		game.Players.LocalPlayer.Character.Animate.Disabled = false
		game:GetService("Players").LocalPlayer.Status.isHostile.Value = false
		getChar():WaitForChild("HumanoidRootPart").CFrame = old
		end
		until lmk == false
		
		elseif spaceSplit[1] == prefix.."unloopmkill" or spaceSplit[1] == prefix.."unlmk" then
		lmk = false
		
    elseif spaceSplit[1] == prefix.."bring" then
        local player = getPlr(tostring(spaceSplit[2]):lower())
        if player == nil then return end
        local lastteam = plr.TeamColor.Name
        
			if plr.Team ~= game.Teams.Guards then
				local ohString1 = "Bright blue"
				workspace.Remote.TeamEvent:FireServer(ohString1)
			end
			task.spawn(function()
				wait(.1)
				if plr.Team ~= game.Teams.Guards then
					print("Guards team full or server laggy.")
					return
				end
			end)
			wait()
			local Done = false
			local _MAX = 0
			local Last = getpos()
			local Handcuffs = plr.Backpack:FindFirstChild("Handcuffs")
			local hrp = plr.Character:WaitForChild("HumanoidRootPart")
			if not pos then
				pos = getpos()
			end
			local Goto = pos
			repeat task.wait() Handcuffs = plr.Backpack:FindFirstChild("Handcuffs")  until Handcuffs and Handcuffs:FindFirstChild("Handle")
			if not Handcuffs or not Handcuffs:FindFirstChild("Handle") or not Handcuffs.Handle:FindFirstChildOfClass("SpecialMesh") then
				return print("Failed to bring due to a rare error!")
			end

			player.Character:FindFirstChildOfClass("Humanoid"):RemoveAccessories()
			if Type ~= "a" then
				Handcuffs.Handle:FindFirstChildOfClass("SpecialMesh"):Destroy()
			end
			wait(.1)
			if pos then
				MoveTo(pos)
				wait()
			end
			IsBringing = true
			wait(.1)
			local Hats = {}
			do
				--//Fix the stupid hat falling off because it looks good without it falling and because im not gay
				for i,v in pairs(plr.Character:GetChildren()) do
					if v and v:IsA("Accessory") then
						pcall(function()
							v.Handle.CanTouch = false
							Hats[#Hats+1] = {
								Hat = v,
								OldPosition = v.Handle:FindFirstChildOfClass("Weld").C0,
								OldPosition2 = v.Handle:FindFirstChildOfClass("Weld").C1
							}
							v.Handle.Anchored = true
						end)

					end
				end
			end
			do--//Glitch Humanoid
				task.spawn(function()
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
--[[
for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
end]]--
					--plr.Character:FindFirstChildOfClass("Humanoid"):Destroy()
					--Instance.new("Humanoid",plr.Character)
				end)
			end
			FixHats(Hats)
			repeat task.wait()
				pcall(function()
					plr.Character:FindFirstChildOfClass("Humanoid"):EquipTool(Handcuffs)
				end)
			until Handcuffs.Parent == plr.Character
			local crimpad = workspace["Criminals Spawn"].SpawnLocation
			crimpad.CanCollide = false
			crimpad.Transparency = 1
			repeat game:GetService("RunService").RenderStepped:Wait()
				if Handcuffs and Handcuffs:FindFirstChild("Handle") then
					task.spawn(function()
						_MAX+=1
						if player.Character and player.Character.PrimaryPart then
							MoveTo(Goto)
							player.Character:SetPrimaryPartCFrame(Handcuffs.Handle.CFrame)
						end
						wait(.1)
					end)
				end
				if Handcuffs and Handcuffs:FindFirstChild("Handle") then
					touch(GetPlayersPart(player),Handcuffs.Handle)
					pcall(function()
						if Extra == "crim" then
							crimpad.CFrame = player.Character:GetPrimaryPartCFrame()
							touch(GetPlayersPart(player),crimpad)
						end
					end)
				end
			until Handcuffs.Parent ~= plr.Character or _MAX>200
			if pos then
				wait(.2)
			--	MoveToJunk(crimpad)
			end
			if Extra =="fling" then
				local b = Instance.new("BodyThrust",plr.Character.HumanoidRootPart)
				b.Force = Vector3.new(99999,10000,999999)
				b.Location = plr.Character.HumanoidRootPart.Position
				wait(.2)
			end
			game:GetService("Players").LocalPlayer.Character:MoveTo(player.Character.Head.Position)
			MoveTo(Last)--//stupid fix for it killing
			Last_Team(lastteam)
			plr.CharacterAdded:Wait():WaitForChild("HumanoidRootPart").CFrame = Last
			Done = true
			task.spawn(function()
				wait(.4)
				if player.Character:FindFirstChild("HumanoidRootPart") and (player.Character:FindFirstChild("HumanoidRootPart").Position-Goto.Position).Magnitude >6 then
					if Extra and Extra == true and Extra ~="crim" or Extra == "fling" then
					else
						IsBringing = false
						return bring(player,Goto,Type,true)
					end
				end
			end)
			if pos then
				wait(.1)
			end
			IsBringing = false
			return
		
	

        
    elseif spaceSplit[1] == prefix.."crashgun" then
        local hum = getChar():FindFirstChildOfClass("Humanoid")

	    local tool = getBp():FindFirstChildOfClass("Tool") or getChar():FindFirstChildOfClass("Tool")
	    if not tool:FindFirstChild("GunStates") then
				return 
game.StarterGui:SetCore("SendNotification", {
Title = "Prison Admin"; 
Text = "Could Not Find A Gun Go And Get One And Try Again"; 
})
			end
		local cc = require(tool.GunStates)

				cc["Bullets"] = 100
				cc["AutoFire"] = true
			

        hum:UnequipTools()
		
    elseif spaceSplit[1] == prefix.."neutral" then
	    local old = plr.Character:FindFirstChild("HumanoidRootPart").CFrame
		local args = {
    [1] = "Medium stone grey"
}

workspace:WaitForChild("Remote"):WaitForChild("TeamEvent"):FireServer(unpack(args))
local gui3 = game:GetService("Players").LocalPlayer.PlayerGui.Home.intro
gui3.IntroScript.Enabled = false
gui3.Visible = false
getChar().Torso.Anchored = false
 workspace.CurrentCamera.CameraSubject = plr.Character.Humanoid
getChar():WaitForChild("HumanoidRootPart").CFrame = old

    elseif spaceSplit[1] == prefix.."cop" then
	    local old = plr.Character:FindFirstChild("HumanoidRootPart").CFrame
		    local args = {
    [1] = "Bright blue"
}

workspace:WaitForChild("Remote"):WaitForChild("TeamEvent"):FireServer(unpack(args))
getChar():WaitForChild("HumanoidRootPart").CFrame = old

    elseif spaceSplit[1] == prefix.."inmate" then
	    local old = plr.Character:FindFirstChild("HumanoidRootPart").CFrame
		    local args = {
    [1] = "Bright orange"
}

workspace:WaitForChild("Remote"):WaitForChild("TeamEvent"):FireServer(unpack(args))
getChar():WaitForChild("HumanoidRootPart").CFrame = old

 elseif spaceSplit[1] == prefix.."crim" then
	    local old = plr.Character:FindFirstChild("HumanoidRootPart").CFrame
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-920, 95, 2131)
wait()
getChar():WaitForChild("HumanoidRootPart").CFrame = old
					
					
 elseif spaceSplit[1] == prefix.."getcar" then
 local OldPos = game:GetService("Players").LocalPlayer.Character:GetPrimaryPartCFrame()
			game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(-910, 98.4, 2157))
			
			local car = nil
			task.spawn(function()
				car = game:GetService("Workspace").CarContainer.ChildAdded:Wait()
			end)
			repeat wait(0.0009)
				local ohInstance1 = game:GetService("Workspace").Prison_ITEMS.buttons:GetChildren()[8]["Car Spawner"]
				workspace.Remote.ItemHandler:InvokeServer(ohInstance1)
			until car
			repeat task.wait() until car:FindFirstChild("RWD") and car:FindFirstChild("Body") and car:FindFirstChild("Body"):FindFirstChild("VehicleSeat")
			car.PrimaryPart = car.RWD
			game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(OldPos)
			local Done = false
			car.Body.VehicleSeat:Sit(game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"))
			repeat 
				game:GetService("RunService").RenderStepped:Wait()
				car:SetPrimaryPartCFrame(OldPos)
				game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(car.Body.VehicleSeat.Position)
				car.Body.VehicleSeat:Sit(game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"))
				if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit == true then
					Done = true
				end
			until Done
		
elseif spaceSplit[1] == prefix.."getshotgun" then
 	local old = plr.Character:FindFirstChild("HumanoidRootPart").CFrame
GetGun("Remington 870")
 	getChar():WaitForChild("HumanoidRootPart").CFrame = old
 	
 	elseif spaceSplit[1] == prefix.."getm9" then
 	local old = plr.Character:FindFirstChild("HumanoidRootPart").CFrame
GetGun("M9")
 	getChar():WaitForChild("HumanoidRootPart").CFrame = old
 	
 	elseif spaceSplit[1] == prefix.."getak" then
 	local old = plr.Character:FindFirstChild("HumanoidRootPart").CFrame
GetGun("AK-47")
 	getChar():WaitForChild("HumanoidRootPart").CFrame = old
    
		
     elseif spaceSplit[1] == prefix.."soundspam" then
soundspam = true
local gui2 = game:GetService("Players").LocalPlayer.PlayerGui.TestGui.Frame
gui2.LocalScript.Enabled = false
gui2.age.Text = "Sound Spammer [on]"

repeat wait()
    
for _, sound in next, game.Workspace:GetDescendants() do
    if sound:IsA("Sound") then
        sound:Play()
    end
    end
until soundspam == false
elseif spaceSplit[1] == prefix.."unsoundspam" then
    local gui2 = game:GetService("Players").LocalPlayer.PlayerGui.TestGui.Frame
gui2.LocalScript.Enabled = false
for _, sound in next, game.Workspace:GetDescendants() do
    if sound:IsA("Sound") then
        sound:Stop()
    end
    end
gui2.age.Text = "Sound Spammer [off]"

soundspam = false

elseif spaceSplit[1] == prefix.."ripears" then
earrape = true
repeat wait()
for _, Sound in next, game.Workspace:FindFirstChild("Prison_guardspawn"):GetDescendants() do
    if Sound:IsA("Sound") then
        Sound:Play()
    end
    end
--game.Workspace:FindFirstChild("Prison_guardspawn").spawn.Sound.Playing = true
until earrape == false
elseif spaceSplit[1] == prefix.."unripears" then
for _, Sound in next, game.Workspace:FindFirstChild("Prison_guardspawn"):GetDescendants() do
    if Sound:IsA("Sound") then
        Sound:Stop()
    end
    end
earrape = false
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
elseif spaceSplit[1] == prefix.."annoy" then
     local target = getPlr(tostring(spaceSplit[2]):lower())
annoy = true

repeat wait()
    local args = {
    [1] = target.Character.Head.punchSound
}

game:GetService("ReplicatedStorage"):WaitForChild("SoundEvent"):FireServer(unpack(args))

until annoy == false
elseif spaceSplit[1] == prefix.."unannoy" then
annoy = false


elseif spaceSplit[1] == prefix.."removebadcop" or spaceSplit[1] == prefix.."rbc" then
    game:GetService("Players").LocalPlayer.Status.innocentKills.Value = 0
    game:GetService("Players").LocalPlayer.Status.isBadGuard.Value = false
    
    elseif spaceSplit[1] == prefix.."view" or spaceSplit[1] == "/e view" then
        local target = getPlr(tostring(spaceSplit[2]):lower())
        workspace.CurrentCamera.CameraSubject = target.Character.Humanoid
        
        elseif spaceSplit[1] == prefix.."unview" or spaceSplit[1] == "/e unview" then
        workspace.CurrentCamera.CameraSubject = plr.Character.Humanoid
    
    elseif spaceSplit[1] == prefix.."script" then
        Chat("im using PRISON ADMIN made by atom its free XD")

    elseif spaceSplit[1] == prefix.."antifling"  or spaceSplit[1] == prefix.."nofling"  then
        local gui2 = game:GetService("Players").LocalPlayer.PlayerGui.TestGui.Frame
gui2.LocalScript.Enabled = false
gui2.client.Text = "Anti Fling [on]"

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
    elseif spaceSplit[1] == prefix.."antimkill" or spaceSplit[1] == prefix.."antikill" then
        if plr.Character ~= nil then
		local char = plr.Character
		char.Parent = nil
		char.HumanoidRootPart:Destroy()
		char.Parent = workspace
	end


elseif spaceSplit[1] == prefix.."unantimkill" or spaceSplit[1] == prefix.."unantikill" then
	if plr.Character ~= nil and plr.Character:FindFirstChild("HumanoidRootPart") then
		local Char = plr.Character
		local OldParent = Char.Parent
		local HRP = Char and Char:FindFirstChild("HumanoidRootPart")
		local OldPos = HRP.CFrame
		Char.Parent = game
		local HRP1 = HRP:Clone()
		HRP1.Parent = Char
		HRP = HRP:Destroy()
		HRP1.CFrame = OldPos
		Char.Parent = OldParent
	end
	
elseif spaceSplit[1] == prefix.."antiattach" or spaceSplit[1] == prefix.."antibring" then
    antiattach = true
    repeat wait()
        local hum = getChar():FindFirstChildOfClass("Humanoid")
	if plr.Backpack:FindFirstChild("Handcuffs") or tool.Handcuffs then
	    hum:UnequipTools()
	    plr.Backpack:FindFirstChild("Handcuffs"):Destroy()
	    end
    until antiattach == false

elseif spaceSplit[1] == prefix.."unantiattach" or spaceSplit[1] == prefix.."unantibring" then
        antiattach = false
        
    elseif spaceSplit[1] == prefix.."changeprefix" or spaceSplit[1] == prefix.."setprefix" then
        local val = (spaceSplit[2])
        if val == nil then return end 
        prefix = val
print("LOCAL PLAYER HAS SET PRISON ADMIN PREFIX TO local val = (spaceSplit[2]) if val == nil then return end prefix = "..prefix.."")
        
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
    elseif spaceSplit[1] == prefix.."noclip" or spaceSplit[1] == prefix.."nc" or spaceSplit[1] == "/e noclip" or spaceSplit[1] == "/e nc" then
        local gui2 = game:GetService("Players").LocalPlayer.PlayerGui.TestGui.Frame
gui2.LocalScript.Enabled = false
gui2.server.Text = "Noclip [on]"
        nc = true
    elseif spaceSplit[1] == prefix.."clip" or spaceSplit[1] == prefix.."c" or spaceSplit[1] == "/e clip" or spaceSplit[1] == "/e c" then
        local gui2 = game:GetService("Players").LocalPlayer.PlayerGui.TestGui.Frame
gui2.LocalScript.Enabled = false
gui2.server.Text = "Noclip [off]"
        nc = false
    elseif spaceSplit[1] == prefix.."goto" or spaceSplit[1] == prefix.."to" or spaceSplit[1] == "/e goto" or spaceSplit[1] == "/e to" then
        local target = getPlr(tostring(spaceSplit[2]):lower())
        getChar().HumanoidRootPart.CFrame = target.Character.Humanoid.RootPart.CFrame

    elseif spaceSplit[1] == prefix.."respawn" or spaceSplit[1] == prefix.."re" or spaceSplit[1] == "/e respawn" or spaceSplit[1] == "/e re" then

    local old = plr.Character:FindFirstChild("HumanoidRootPart").CFrame
	Events.loadchar()
        plr.CharacterAdded:Wait()
        getChar():WaitForChild("HumanoidRootPart").CFrame = old
        
        elseif spaceSplit[1] == prefix.."f3x" then
        loadstring(game:GetObjects("rbxassetid://6695644299")[1].Source)()
        
        elseif spaceSplit[1] == prefix.."autorespawn" or spaceSplit[1] == prefix.."autore"  then
if autoro then
autoro = false
else
autoro = true
repeat wait()
if plr.Character.Humanoid.Health <= 1 then
    local old = plr.Character:FindFirstChild("HumanoidRootPart").CFrame
	Events.loadchar()
        plr.CharacterAdded:Wait()
        getChar():WaitForChild("HumanoidRootPart").CFrame = old
        end
        until autoro == false
        end
        
        
        elseif spaceSplit[1] == prefix.."gr" or spaceSplit[1] == prefix.."gamerespawn" or spaceSplit[1] == "/e gamerespawn" or spaceSplit[1] == "/e gr" then
	Events.loadchar()

      elseif spaceSplit[1] == prefix.."admin" then 
     local target = getPlr(tostring(spaceSplit[2]):lower())
admins[target.UserId] = {target = target}
Chat("/w "..target.Name.." [PA]: Hello, You Have Been Given Admin. Type "..prefix.."cmds To See All Commands.")
		
		 elseif spaceSplit[1] == prefix.."unadmin" then 
		local target = getPlr(tostring(spaceSplit[2]):lower())
admins[target.UserId] = nil
Chat("/w "..target.Name.." [PA]: Hello, Your Admin Was Removed.")

    elseif spaceSplit[1] == prefix.."fling" or spaceSplit[1] == "/e fling"  then
        local target = getPlr(tostring(spaceSplit[2]):lower())
        if target == nil then return end
        
        local flingTime = 0.5999
        local fTime = os.clock()
        local rot = 34
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
                    rot = 34
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
		--plr.CharacterAdded:Wait()
        getChar():WaitForChild("HumanoidRootPart").CFrame = old
        
         elseif spaceSplit[1] == prefix.."explode" or spaceSplit[1] == "/e explode"  then
        local target = getPlr(tostring(spaceSplit[2]):lower())
        if target == nil then return end
        local old = plr.Character:FindFirstChild("HumanoidRootPart").CFrame
        local flingTime = 0.3
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
                 for i =1,15 do
			task.spawn(function()
				game.ReplicatedStorage["meleeEvent"]:FireServer(target)
				game.ReplicatedStorage["meleeEvent"]:FireServer(target)
				game.ReplicatedStorage["meleeEvent"]:FireServer(target)
			end)
		end
                if rot == 3454574567 then
                     for i =1,15 do
			task.spawn(function()
				game.ReplicatedStorage["meleeEvent"]:FireServer(target)
				game.ReplicatedStorage["meleeEvent"]:FireServer(target)
				game.ReplicatedStorage["meleeEvent"]:FireServer(target)
			end)
		end
                    rot = 89078907234507823457890452390784259078345
                else
                     for i =1,15 do
			task.spawn(function()
				game.ReplicatedStorage["meleeEvent"]:FireServer(target)
				game.ReplicatedStorage["meleeEvent"]:FireServer(target)
				game.ReplicatedStorage["meleeEvent"]:FireServer(target)
			end)
		end
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
		game:GetService("Players").LocalPlayer.Status.isHostile.Value = false
        getChar():WaitForChild("HumanoidRootPart").CFrame = old
        
           
elseif spaceSplit[1] == prefix.."netsleep" or spaceSplit[1] == prefix.."glitch" or spaceSplit[1] == "/e netsleep" or spaceSplit[1] == "/e glitch" then
        if spaceSplit[2] and (spaceSplit[2] == "all" or spaceSplit[2] == "others") then
            for i,v in pairs(players:Getplayers()) do
                if v ~= plr then
                    table.insert(netsleepTargets,v)
                end
            end
            return
        end
        local target = getPlr(tostring(spaceSplit[2]):lower())
        if target == nil then return end
        table.insert(netsleepTargets,target)
    elseif spaceSplit[1] == prefix.."unnetsleep" or spaceSplit[1] == prefix.."unglitch" or spaceSplit[1] == "/e unnetsleep" or spaceSplit[1] == "/e unglitch"  then
        if spaceSplit[2] and (spaceSplit[2] == "all" or spaceSplit[2] == "others") then
            netsleepTargets = {}
            return
        end
        local target = getPlr(tostring(spaceSplit[2]):lower())
        if target == nil or table.find(netsleepTargets,target) == nil then return end
        table.remove(netsleepTargets,table.find(netsleepTargets,target))
    elseif spaceSplit[1] == prefix.."rejoin" or spaceSplit[1] == prefix.."rj" or spaceSplit[1] == "/e rejoin" or spaceSplit[1] == "/e rj" then
		local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://2390693566"
sound.Parent = game:GetService("SoundService")
sound:Play()

game.StarterGui:SetCore("SendNotification", {
Title = "Prison Admin"; 
Text = "Rejoining the server"; 
})
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, plr)
    elseif spaceSplit[1] == prefix.."cmds" or spaceSplit[1] == prefix.."commands" or spaceSplit[1] == "/e cmds" or spaceSplit[1] == "/e commands" then
local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://2390693566"
sound.Parent = game:GetService("SoundService")
sound:Play()
-- Gui to Lua
-- Version: 3.2

-- Instances:

local commands = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local commands_2 = Instance.new("Frame")
local set1 = Instance.new("TextLabel")
local set2 = Instance.new("TextLabel")
local set3 = Instance.new("TextLabel")
local set4 = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local title = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")

--Properties:

commands.Name = "commands"
commands.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
commands.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
commands.ResetOnSpawn = false

Frame.Parent = commands
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.Position = UDim2.new(0.130860746, 0, 0.1875, 0)
Frame.Size = UDim2.new(0, 847, 0, 491)

commands_2.Name = "commands"
commands_2.Parent = Frame
commands_2.BackgroundColor3 = Color3.fromRGB(0, 0, 205)
commands_2.BackgroundTransparency = 0.300
commands_2.BorderSizePixel = 0
commands_2.Position = UDim2.new(0.206118166, 0, 0.27300179, 0)
commands_2.Size = UDim2.new(0.788757682, 0, 0.593179345, 0)

set1.Name = "set1"
set1.Parent = commands_2
set1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
set1.BackgroundTransparency = 1.000
set1.BorderSizePixel = 0
set1.Position = UDim2.new(-4.56796805e-08, 0, 0, 0)
set1.Size = UDim2.new(0, 139, 0, 289)
set1.Font = Enum.Font.SourceSansBold
set1.Text = ([[
-- PLAYER COMMANDS --
walkspeed / ws [number]
jumppower / jp [number]
hipheight / hh [number]
noclip / nc
clip / c
respawn / re
gamerespawn / gr
rejoin / rj
antifling
fly
autorespawn / autore [T]

-- TEAM COMMANDS --
cop
inmate
neutral
crim
    ]])
set1.TextColor3 = Color3.fromRGB(255, 255, 255)
set1.TextSize = 14.000
set1.TextXAlignment = Enum.TextXAlignment.Left
set1.TextYAlignment = Enum.TextYAlignment.Top

set2.Name = "set2"
set2.Parent = commands_2
set2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
set2.BackgroundTransparency = 1.000
set2.BorderSizePixel = 0
set2.Position = UDim2.new(0.243176967, 0, 0, 0)
set2.Size = UDim2.new(0, 139, 0, 289)
set2.Font = Enum.Font.SourceSansBold
set2.Text = ([[
-- TARGET COMMANDS--
kill / k [player]
mkill / mk [player]
loopmkill / lmk [player]
unloopkill / unlk
damage [player]
explode [player]
view [player]
unview
to / goto [player]
fling [player]
annoy [player]
unannoy
mkick [player] 
kick [player]
admin [player]
unadmin [player]
    ]])
set2.TextColor3 = Color3.fromRGB(255, 255, 255)
set2.TextSize = 14.000
set2.TextXAlignment = Enum.TextXAlignment.Left
set2.TextYAlignment = Enum.TextYAlignment.Top

set3.Name = "set3"
set3.Parent = commands_2
set3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
set3.BackgroundTransparency = 1.000
set3.BorderSizePixel = 0
set3.Position = UDim2.new(0.486354023, 0, 0, 0)
set3.Size = UDim2.new(0, 139, 0, 289)
set3.Font = Enum.Font.SourceSansBold
set3.Text = ([[
-- SERVER COMMANDS --
soundspam
unsoundspam
removebadcop / rbc 
shutdown 
lag
unlag
getcar
break
ripears
unripears
    ]])
set3.TextColor3 = Color3.fromRGB(255, 255, 255)
set3.TextSize = 14.000
set3.TextXAlignment = Enum.TextXAlignment.Left
set3.TextYAlignment = Enum.TextYAlignment.Top

set4.Name = "set4"
set4.Parent = commands_2
set4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
set4.BackgroundTransparency = 1.000
set4.BorderSizePixel = 0
set4.Position = UDim2.new(0.72953105, 0, 0, 0)
set4.Size = UDim2.new(0, 139, 0, 289)
set4.Font = Enum.Font.SourceSansBold
set4.Text = ([[
-- GUN COMMANDS --
getshotgun
getm9
getak

-- CS COMMANDS --
f3x

-- SCRIPT COMMANDS --
changeprefix / setprefix [prefix]
commands / cmds
unload / stopadmin
    ]])
set4.TextColor3 = Color3.fromRGB(255, 255, 255)
set4.TextSize = 14.000
set4.TextXAlignment = Enum.TextXAlignment.Left
set4.TextYAlignment = Enum.TextYAlignment.Top

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
TextButton.BackgroundTransparency = 0.100
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.206510872, 0, 0.866180837, 0)
TextButton.Size = UDim2.new(0.78895694, 0, 0.0593179837, 0)
TextButton.Font = Enum.Font.SourceSans

TextButton.Text = "Click To Close"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 14.000

title.Name = "title"
title.Parent = Frame
title.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
title.BorderSizePixel = 0

title.Position = UDim2.new(0.207060143, 0, 0.179652065, 0)
title.Size = UDim2.new(0.788757682, 0, 0.079090625, 0)

TextLabel.Parent = title
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000

TextLabel.Position = UDim2.new(9.1359361e-08, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 667, 0, 38)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "PRISON ADMIN COMMANDS"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true



-- Scripts:

local function YMVCRI_fake_script() -- close.Script 
	local script = Instance.new('Script', TextButton)
	


	button = script.Parent
	window1 = button.Parent
	
function onClicked(GUI)
	 window1:remove()
	end
	script.Parent.MouseButton1Click:connect(onClicked)
end
coroutine.wrap(YMVCRI_fake_script)()
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






    
    elseif spaceSplit[1] == prefix.."unload" or spaceSplit[1] == prefix.."stop" then
        cc:Disconnect()
        nsLoop:Disconnect()
        ncLoop:Disconnect()
        annoy = false
        soundspam = false
        gui.Topbar.Pulldownmenu.Frame.Description.Text = "admin has been unloaded! thanks for using."


print([[
STOPPED
]])
    end
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
	if Command("mkill") then
	local target = getPlr(Arg2)
			local old = plr.Character:FindFirstChild("HumanoidRootPart").CFrame
        game.Players.LocalPlayer.Character.Animate.Disabled = true
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = target.Character.HumanoidRootPart.CFrame
		wait(0.1599)
		for i =1,15 do
		 game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = target.Character.HumanoidRootPart.CFrame
			task.spawn(function()
				game.ReplicatedStorage["meleeEvent"]:FireServer(target)
				game.ReplicatedStorage["meleeEvent"]:FireServer(target)
				game.ReplicatedStorage["meleeEvent"]:FireServer(target)
			end)
		end
		wait(0.1599)
		game.Players.LocalPlayer.Character.Animate.Disabled = false
		game:GetService("Players").LocalPlayer.Status.isHostile.Value = false
		getChar():WaitForChild("HumanoidRootPart").CFrame = old
	end
	if Command("kill") then
	local target = getPlr(Arg2)
		if plr.Backpack:FindFirstChild("M9") or plr.Character:FindFirstChild("M9") then
    wait(0.01)
    local Gun = ReturnGun()
		
		if Gun and plr.Team ~= target.Team then
			local Gen = {}
			for i =1,15 do
				Gen[#Gen+1]={
					["RayObject"] = Ray.new(Vector3.new(0,0,0), Vector3.new(0,0,0)),
					["Distance"] = .1,
					["Cframe"] = CFrame.new(),
					["Hit"] = target.Character:WaitForChild("Head")
				}
			end

			game:GetService("ReplicatedStorage").ShootEvent:FireServer(Gen, Gun)
		end
	else
	    local old = plr.Character:FindFirstChild("HumanoidRootPart").CFrame
    GetGun("M9")
    getChar():WaitForChild("HumanoidRootPart").CFrame = old
    wait(0.01)
    local Gun = ReturnGun()
		
		if Gun and plr.Team ~= target.Team then
			local Gen = {}
			for i =1,15 do
				Gen[#Gen+1]={
					["RayObject"] = Ray.new(Vector3.new(0,0,0), Vector3.new(0,0,0)),
					["Distance"] = .1,
					["Cframe"] = CFrame.new(),
					["Hit"] = target.Character:WaitForChild("Head")
				}
			end

			game:GetService("ReplicatedStorage").ShootEvent:FireServer(Gen, Gun)
		end
		end
	end
	if Command("mkick") then
		local target = getPlr(Arg2)
		if plr.Backpack:FindFirstChild("M9") or plr.Character:FindFirstChild("M9") then
    wait(0.01)
    local Gun = ReturnGun()
		
			if Gun then
		for i = 1,55 do
			local Gen = {}
			for i =1,25 do
				Gen[#Gen+1]={
					["RayObject"] = Ray.new(Vector3.new(0,0,0), Vector3.new(0,0,0)),
					["Distance"] = .1,
					["Cframe"] = CFrame.new(),
					["Hit"] = target.Character:WaitForChild("Head")
				}
			end

			game:GetService("ReplicatedStorage").ShootEvent:FireServer(Gen, Gun)
			end
		end
	else
	    local old = plr.Character:FindFirstChild("HumanoidRootPart").CFrame
    GetGun("M9")
    getChar():WaitForChild("HumanoidRootPart").CFrame = old
    wait(0.01)
    local Gun = ReturnGun()
		
		if Gun then
		for i = 1,55 do
			local Gen = {}
			for i =1,25 do
				Gen[#Gen+1]={
					["RayObject"] = Ray.new(Vector3.new(0,0,0), Vector3.new(0,0,0)),
					["Distance"] = .1,
					["Cframe"] = CFrame.new(),
					["Hit"] = target.Character:WaitForChild("Head")
				}
			end

			game:GetService("ReplicatedStorage").ShootEvent:FireServer(Gen, Gun)
			end
		end
		end
	end
	if Command("fling") then
		local target = getPlr(Arg2)
		 if target == nil then return end
        
        local flingTime = 0.599
        local fTime = os.clock()
        local rot = 34
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
                    rot = 34
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
		--plr.CharacterAdded:Wait()
        getChar():WaitForChild("HumanoidRootPart").CFrame = old
	end
	if Command("explode") then
	local target = getPlr(Arg2)
	 if target == nil then return end
        local old = plr.Character:FindFirstChild("HumanoidRootPart").CFrame
        local flingTime = 0.3
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
                 for i =1,15 do
			task.spawn(function()
				game.ReplicatedStorage["meleeEvent"]:FireServer(target)
				game.ReplicatedStorage["meleeEvent"]:FireServer(target)
				game.ReplicatedStorage["meleeEvent"]:FireServer(target)
			end)
		end
                if rot == 3454574567 then
                     for i =1,15 do
			task.spawn(function()
				game.ReplicatedStorage["meleeEvent"]:FireServer(target)
				game.ReplicatedStorage["meleeEvent"]:FireServer(target)
				game.ReplicatedStorage["meleeEvent"]:FireServer(target)
			end)
		end
                    rot = 89078907234507823457890452390784259078345
                else
                     for i =1,15 do
			task.spawn(function()
				game.ReplicatedStorage["meleeEvent"]:FireServer(target)
				game.ReplicatedStorage["meleeEvent"]:FireServer(target)
				game.ReplicatedStorage["meleeEvent"]:FireServer(target)
			end)
		end
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
		game:GetService("Players").LocalPlayer.Status.isHostile.Value = false
        getChar():WaitForChild("HumanoidRootPart").CFrame = old
	end
	if Command("lag") then
	lag = true
			--lag = true
		 local tool = getBp():FindFirstChildOfClass("Tool") or getChar():FindFirstChildOfClass("Tool")
    repeat wait(3.5)
    if plr.Backpack:FindFirstChild("AK-47") or plr.Character:FindFirstChild("AK-47") then
    wait(0.01)
    local Gun = ReturnGun()

		
			local Gen = {}
			for i =1,8 do
				Gen[#Gen+1]={
					["RayObject"] = Ray.new(Vector3.new(0,0,0), Vector3.new(0,0,0)),
					["Distance"] = .1,
					["Bullets"] = 1,
					["Cframe"] = CFrame.new(),
					["Hit"] = plr.Character:WaitForChild("Head")
				}
			end

			game:GetService("ReplicatedStorage").ShootEvent:FireServer(Gen, Gun)
	
	else
	    local old = plr.Character:FindFirstChild("HumanoidRootPart").CFrame
    GetGun("AK-47")
    getChar():WaitForChild("HumanoidRootPart").CFrame = old	
		 wait(0.01)
    local Gun = ReturnGun()
				
			local Gen = {}
			for i =1,8 do
				Gen[#Gen+1]={
					["RayObject"] = Ray.new(Vector3.new(0,0,0), Vector3.new(0,0,0)),
					["Distance"] = .1,
					["Bullets"] = 1,
					["Cframe"] = CFrame.new(),
					["Hit"] = plr.Character:WaitForChild("Head")
				}
			end

			game:GetService("ReplicatedStorage").ShootEvent:FireServer(Gen, Gun)

		end
		
		
		until lag == false
		end
	if Command("unlag") then
	lag = false
	end
	if Command("cmd") or Command("cmds") then
		Chat("/w "..target.Name.." [PA]: Hello, Your Commands Are: "..prefix.."kill [plr],  "..prefix.."mkill [plr], "..prefix.."fling [plr],  "..prefix.."explode [plr].")
		wait(0.1)
		Chat("/w "..target.Name.." [PA]: Cool Commands: "..prefix.."lag, "..prefix.."unlag, "..prefix.."mkick [plr].")
	end
end

game.Players.LocalPlayer.Chatted:Connect(PlayerChatted)
function CheckPermissions(target) 
	local connection = target.Chatted:Connect(function(Message)
		if admins[target.UserId] then
			AdminPlayerChatted(Message, target)
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

-- Gui to Lua
-- Version: 3.2

-- Instances:

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
text.PlaceholderText = "PRISON ADMIN Click ; To Focus To Command Bar"
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

