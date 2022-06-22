if game.PlaceId == 7056922815 then -- lobby ------------------------------------------------------------
    repeat wait() until game:IsLoaded()
	
	for i, v in next, getconnections(game.Players.LocalPlayer.Idled) do
    v:Disable();
	end;
    
	print("THUG HUB ON TOP")
	
    for count = 750, 1, -1 do
    wait(1)
	print(count)
    end

    function pressbutton(a, b)
        local z = a.Visible
        if z == true then
        local v = b
        local xy = v.AbsolutePosition
        local split = string.split(tostring(xy), ", ")
        local x = tonumber(split[1]) + 30
        local y = tonumber(split[2]) + 50
                            
        print(x)
        print(y)
                    
        local vim = game:GetService('VirtualInputManager')
        vim:SendMouseButtonEvent(x,y,0,true,game,0)
        wait()
        vim:SendMouseButtonEvent(x,y,0,false,game,0)
        end
    end
    
    if getgenv().Slot == 1 then
        local slott = game:GetService("Players").LocalPlayer.PlayerGui.IsMobile.SLOT.Slots.Slot1.Load
        pressbutton(game:GetService("Players").LocalPlayer.PlayerGui.IsMobile.SLOT, slott)
    elseif getgenv().Slot == 2 then
        local slott = game:GetService("Players").LocalPlayer.PlayerGui.IsMobile.SLOT.Slots.Slot2.Load
        pressbutton(game:GetService("Players").LocalPlayer.PlayerGui.IsMobile.SLOT, slott)
    elseif getgenv().Slot == 3 then
        local slott = game:GetService("Players").LocalPlayer.PlayerGui.IsMobile.SLOT.Slots.Slot3.Load
        pressbutton(game:GetService("Players").LocalPlayer.PlayerGui.IsMobile.SLOT, slott)
    end
    
    repeat wait() until game:GetService("Players").LocalPlayer.PlayerGui.IsMobile.WP.PlayBT.Visible == true
    wait(2)
    print("step1")
    
    pressbutton(game:GetService("Players").LocalPlayer.PlayerGui.IsMobile.WP, game:GetService("Players").LocalPlayer.PlayerGui.IsMobile.WP.PlayBT)
    
    repeat wait() until game:GetService("Players").LocalPlayer.PlayerGui.IsMobile.Frame.No.Visible == true
    wait(2)
    print("step2")
    
    pressbutton(game:GetService("Players").LocalPlayer.PlayerGui.IsMobile.Frame, game:GetService("Players").LocalPlayer.PlayerGui.IsMobile.Frame.No)
    repeat wait() until game.Players.LocalPlayer.Character
    print("step3")
    
        game:GetService("RunService").Stepped:Connect(function()
        for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if v:IsA("BasePart") and v.CanCollide == true then
                    v.CanCollide = false
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                    game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(162.743, 18.8584, 1245.43)
                end
            end
        end)
    
    print("step4")
    while true do wait()
        
    repeat
    wait(5)
    if game:GetService("Players").LocalPlayer.PlayerGui.HUD.Meditation.Options.List.BattleSecondary.Visible == false then
    game:GetService("VirtualInputManager"):SendKeyEvent(true, "P", false, game); wait(1)
    local a={[1]={["inputType"]=Enum.UserInputType.MouseButton1,["keyCode"]=Enum.KeyCode.Unknown}}game:GetService("ReplicatedStorage").Remotes.Input:FireServer(unpack(a))
    end
    until game:GetService("Players").LocalPlayer.PlayerGui.HUD.Meditation.Options.List.BattleSecondary.Visible == true
    
    wait(2)
    
    pressbutton(game:GetService("Players").LocalPlayer.PlayerGui.HUD.Meditation, game:GetService("Players").LocalPlayer.PlayerGui.HUD.Meditation.Options.List.BattleSecondary)
    wait(2)
    
    if game:GetService("Players").LocalPlayer.PlayerGui.HUD.Error.Visible then
    local txt = game:GetService("Players").LocalPlayer.PlayerGui.HUD.Error.Text
    local split = string.split(tostring(txt), " ")
    local a = tonumber(split[5])
    local waittime = 60*a+5
    for count = waittime, 1, -1 do
    wait(1)
	print(count)
    end
    end
	
	if game:GetService("Players").LocalPlayer.PlayerGui.HUD.Meditation.Options.List.BattleSecondary.Visible == false then
	game:GetService("VirtualInputManager"):SendKeyEvent(true, "P", false, game); wait(1)
    local a={[1]={["inputType"]=Enum.UserInputType.MouseButton1,["keyCode"]=Enum.KeyCode.Unknown}}game:GetService("ReplicatedStorage").Remotes.Input:FireServer(unpack(a))
    wait(5)
    end
	
	pressbutton(game:GetService("Players").LocalPlayer.PlayerGui.HUD.Meditation, game:GetService("Players").LocalPlayer.PlayerGui.HUD.Meditation.Options.List.BattleSecondary)
    wait(0.5)
	
	end
    
elseif game.PlaceId == 7298553006 then -- arena ----------------------------------------------
repeat wait() until game:IsLoaded()
	
	for i, v in next, getconnections(game.Players.LocalPlayer.Idled) do
    v:Disable();
	end;
    
    repeat wait() until game.Players.LocalPlayer.Character
    wait(2)
    
    local plr = game:GetService("Players").LocalPlayer
local tweenService = game:GetService("TweenService")
getgenv().speed = 300
function toTarget(target)
    local speed = getgenv().speed
    local info = TweenInfo.new((target.Position - plr.Character.HumanoidRootPart.Position).Magnitude / speed, Enum.EasingStyle.Linear)
    local _, err = pcall(function()
        tweenService:Create(plr.Character.HumanoidRootPart, info, {CFrame = target}):Play()
    end)
    if err then error("Couldn't create/start tween: ", err) end
end
function newIndexHook()
    local mt = getrawmetatable(game)
    local oldIndex = mt.__newindex
    setreadonly(mt, false)
    mt.__newindex = newcclosure(function(self, i, v)
        if checkcaller() and self == plr.Character.HumanoidRootPart and i == 'CFrame' then
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
            return toTarget(v) 
        end
        return oldIndex(self, i, v)
    end)

    setreadonly(mt, true)
end
newIndexHook()

game:GetService("RunService").Stepped:Connect(function()
if getgenv().Autofarm or getgenv().SP or getgenv().MenosFarm then
    for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
        if v:IsA("BasePart") and v.CanCollide == true then
                 v.CanCollide = false
                game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
            end;
        end;
    end;
end);

getgenv().Autofarm = true
    
    while getgenv().Autofarm and wait() do
        
        if game:GetService("Players").LocalPlayer.Status.Weapon.Value == nil then
            local a={[1]={["inputType"]=Enum.UserInputType.Keyboard,["keyCode"]=Enum.KeyCode.E}}game:GetService("ReplicatedStorage").Remotes.Input:FireServer(unpack(a))
        end;
        
    pcall(function()
        for i,v in pairs(game:GetService("Workspace").Living:GetChildren()) do
            if game.Players.LocalPlayer.Character and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") then
                if v.Name == getgenv().Shikai and v.Humanoid.Health > 0 then
                    repeat wait() 
                        local args = {[1] = {["inputType"] = Enum.UserInputType.MouseButton1,["keyCode"] = Enum.KeyCode.Unknown}}
                        game:GetService("ReplicatedStorage").Remotes.Input:FireServer(unpack(args))
                        if not game:GetService("Workspace").Food:FindFirstChildWhichIsA("Part") or not game:GetService("Workspace").Food:FindFirstChildWhichIsA("MeshPart") and getgenv().AutoEat then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame - Vector3.new(0,getgenv().Distance,0)
                        elseif not getgenv().Eat then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame - Vector3.new(0,getgenv().Distance,0)
                        end
                        until v.Humanoid.Health <= 0 or not getgenv().Autofarm
                    end;
                end;
            end;
        end);
    end;
    
    
    
    
end
