msg = Instance.new("Hint")
msg.Text = "status: loading"
msg.Parent = game.Workspace
getgenv().enabled = true

while enabled == true do
game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("[bikeHaxx] YES W6VZ THANK U SO MUCH (status: loading)", "All")
game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("ReportReset"):FireServer()
wait(4.326)
msg.Text = "status: farming"
game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("[bikeHaxx] OMG W6VZ IS SO COOL AND AWESOME (status: farming)", "All")
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

local Points = { Vector3.new(107, 13, 33), Vector3.new(107, 431, -119), Vector3.new(96, 895, -13322), Vector3.new(103, 4, -13333), Vector3.new(113, 151, -13563), Vector3.new(109, 13, -13638), Vector3.new(100, -2, -13635) }

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
    teleportToPoint(v, 535)
end
game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("[bikeHaxx] THX W6VZ I JUST GOT A TROPY (status: done. resetting)", "All")
wait(6)
game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("ReportReset"):FireServer()
wait(1)
game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("[bikeHaxx] THX W6VZ FOR THIS AWESOME SCRIPT!!! (status: bypassing anti-cheat)", "All")
msg.Text = "status: bypassing 'suspiciously fast speed'"
local Points = { Vector3.new(107, 13, 33), Vector3.new(107, 431, -119), Vector3.new(96, 895, -13322), Vector3.new(103, 4, -13333), Vector3.new(113, 151, -13563), Vector3.new(109, 13, -13638), Vector3.new(100, -2, -13635) }

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
    teleportToPoint(v, 1690)
end

wait(2)
end