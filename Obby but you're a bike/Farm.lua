msg = Instance.new("Hint")
msg.Text = "loading"
msg.Parent = game.Workspace
getgenv().enabled = true

while enabled == true do
msg.Text = "status: farming"
game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("ReportReset"):FireServer()
wait(5)
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local OldNameCall = nil

local sexy = ReplicatedStorage.RemoteEvents.ReportTimer

OldNameCall = hookmetamethod(game, "__namecall", function(Self, ...)
   local Args = {...}
   local NamecallMethod = getnamecallmethod()

   if not checkcaller() and Self == sexy and NamecallMethod == "FireServer"then
       return OldNameCall(Self, 420.69)
   end

   return OldNameCall(Self, ...)
end)
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local OldNameCall = nil

local sexy = ReplicatedStorage.RemoteEvents.ReportTimer

OldNameCall = hookmetamethod(game, "__namecall", function(Self, ...)
   local Args = {...}
   local NamecallMethod = getnamecallmethod()

   if not checkcaller() and Self == sexy and NamecallMethod == "FireServer"then
       return OldNameCall(Self, 420.69)
   end

   return OldNameCall(Self, ...)
end)

local Points = { Vector3.new(107, 3, 33), Vector3.new(107, 3, -152), Vector3.new(107, 36, -152), Vector3.new(107, 150, -152), Vector3.new(107, 214, -152), Vector3.new(107, 264, -152), Vector3.new(107, 302, -152), Vector3.new(107, 350, -152), Vector3.new(107, 388, -152), Vector3.new(107, 423, -152), Vector3.new(107, 453, -152), Vector3.new(107, 466, -152), Vector3.new(107, 486, -152), Vector3.new(107, 512, -152), Vector3.new(107, 517, -152), Vector3.new(106, 519, -283), Vector3.new(105, 521, -414), Vector3.new(134, 1895, -20718), Vector3.new(104, 33, -20646), Vector3.new(107, 48, -20833), Vector3.new(107, 102, -20841), Vector3.new(107, 31, -20911), Vector3.new(106, -3, -20951), Vector3.new(106, -2, -20962) }

local Player = game:GetService("Players").LocalPlayer
local Char = Player.Character or Player.CharacterAdded:Wait()
local Root = Char:WaitForChild("HumanoidRootPart")

local function teleportToPoint(vec3, speed)
    local bV = Instance.new("BodyVelocity")
    bV.Velocity, bV.MaxForce = Vector3.new(), Vector3.new(9e9, 9e9, 9e9); bV.Parent = Root

    local reached = false
    local connection = game:GetService("RunService").Stepped:Connect(function(_, step)
        local diff = vec3 - Root.Position
        Root.CFrame = CFrame.new(Root.Position + diff.Unit * math.min(speed * step, diff.Magnitude))
        
        if (Vector3.new(vec3.X, 0, vec3.Z) - Vector3.new(Root.Position.X, 0, Root.Position.Z)).Magnitude < 0.1 then
            Root.CFrame = CFrame.new(vec3)
            
            reached = true
        end
    end)

    repeat task.wait() until reached

    connection:Disconnect()
    bV:Destroy()
end

for _, v in next, Points do
    teleportToPoint(v, 510)
end
wait(6)
game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("ReportReset"):FireServer()
wait(1)
msg.Text = "status: bypassing 'suspiciously fast speed'"
local Points = { Vector3.new(107, 3, 33), Vector3.new(107, 3, -152), Vector3.new(107, 36, -152), Vector3.new(107, 150, -152), Vector3.new(107, 214, -152), Vector3.new(107, 264, -152), Vector3.new(107, 302, -152), Vector3.new(107, 350, -152), Vector3.new(107, 388, -152), Vector3.new(107, 423, -152), Vector3.new(107, 453, -152), Vector3.new(107, 466, -152), Vector3.new(107, 486, -152), Vector3.new(107, 512, -152), Vector3.new(107, 517, -152), Vector3.new(106, 519, -283), Vector3.new(105, 521, -414), Vector3.new(134, 1895, -20718), Vector3.new(104, 33, -20646), Vector3.new(107, 48, -20833), Vector3.new(107, 102, -20841), Vector3.new(107, 31, -20911), Vector3.new(106, -3, -20951), Vector3.new(106, -2, -20962) }

local Player = game:GetService("Players").LocalPlayer
local Char = Player.Character or Player.CharacterAdded:Wait()
local Root = Char:WaitForChild("HumanoidRootPart")

local function teleportToPoint(vec3, speed)
    local bV = Instance.new("BodyVelocity")
    bV.Velocity, bV.MaxForce = Vector3.new(), Vector3.new(9e9, 9e9, 9e9); bV.Parent = Root

    local reached = false
    local connection = game:GetService("RunService").Stepped:Connect(function(_, step)
        local diff = vec3 - Root.Position
        Root.CFrame = CFrame.new(Root.Position + diff.Unit * math.min(speed * step, diff.Magnitude))
        
        if (Vector3.new(vec3.X, 0, vec3.Z) - Vector3.new(Root.Position.X, 0, Root.Position.Z)).Magnitude < 0.1 then
            Root.CFrame = CFrame.new(vec3)
            
            reached = true
        end
    end)

    repeat task.wait() until reached

    connection:Disconnect()
    bV:Destroy()
end

for _, v in next, Points do
    teleportToPoint(v, 1450)
end
wait(2)
end