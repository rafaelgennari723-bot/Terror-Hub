-- ❤️ TERROR NOTURNO HUB - ANTI-BUG VERSION + ESP WITH TABS 💀
-- God Mode + Speed + Jump + Noclip + Fly + Aimbot + ESP

print("💀 Starting TERROR NOTURNO HUB - anti-bug version + Aimbot + ESP")

local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")
local player = Players.LocalPlayer
local Cam = Workspace.CurrentCamera

print("💀 Services OK")

-- =============================================
-- GUI WITH TABS
-- =============================================

local sg = Instance.new("ScreenGui")
sg.Name = "TerrorHubAntiBug"
sg.ResetOnSpawn = false
sg.Parent = player:WaitForChild("PlayerGui")

print("💀 ScreenGui created")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 260, 0, 620)  -- aumentei um pouco pra caber o shield
frame.Position = UDim2.new(0.01, 0, 0.05, 0)
frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true
frame.Parent = sg

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 14)
corner.Parent = frame

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(200, 0, 0)
stroke.Thickness = 2.5
stroke.Parent = frame

-- Title
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 40)
title.BackgroundTransparency = 1
title.Text = "GOD MODE + SPEED + JUMP + NOCLIP + FLY + AIMBOT + ESP"
title.TextColor3 = Color3.fromRGB(220, 0, 0)
title.TextScaled = true
title.Font = Enum.Font.GothamBlack
title.Parent = frame

-- Tab buttons
local mainTabBtn = Instance.new("TextButton")
mainTabBtn.Size = UDim2.new(0.5, -2, 0, 30)
mainTabBtn.Position = UDim2.new(0, 2, 0, 40)
mainTabBtn.BackgroundColor3 = Color3.fromRGB(0, 120, 0)
mainTabBtn.Text = "MAIN"
mainTabBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
mainTabBtn.Font = Enum.Font.GothamBold
mainTabBtn.Parent = frame

local espTabBtn = Instance.new("TextButton")
espTabBtn.Size = UDim2.new(0.5, -2, 0, 30)
espTabBtn.Position = UDim2.new(0.5, 0, 0, 40)
espTabBtn.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
espTabBtn.Text = "ESP"
espTabBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
espTabBtn.Font = Enum.Font.GothamBold
espTabBtn.Parent = frame

-- Main Content
local mainContent = Instance.new("Frame")
mainContent.Size = UDim2.new(1, 0, 1, -80)
mainContent.Position = UDim2.new(0, 0, 0, 75)
mainContent.BackgroundTransparency = 1
mainContent.Parent = frame
mainContent.Visible = true

-- ESP Content
local espContent = Instance.new("Frame")
espContent.Size = UDim2.new(1, 0, 1, -80)
espContent.Position = UDim2.new(0, 0, 0, 75)
espContent.BackgroundTransparency = 1
espContent.Parent = frame
espContent.Visible = false

-- Switch tab function
local function switchTab(tab)
    if tab == "main" then
        mainContent.Visible = true
        espContent.Visible = false
        mainTabBtn.BackgroundColor3 = Color3.fromRGB(0, 120, 0)
        espTabBtn.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    else
        mainContent.Visible = false
        espContent.Visible = true
        mainTabBtn.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
        espTabBtn.BackgroundColor3 = Color3.fromRGB(0, 120, 0)
    end
end

mainTabBtn.MouseButton1Click:Connect(function() switchTab("main") end)
espTabBtn.MouseButton1Click:Connect(function() switchTab("esp") end)

-- =============================================
-- MAIN HUB BUTTONS
-- =============================================

-- Shield Button
local shieldBtn = Instance.new("TextButton")
shieldBtn.Size = UDim2.new(1, -20, 0, 38)
shieldBtn.Position = UDim2.new(0, 10, 0, 10)
shieldBtn.BackgroundColor3 = Color3.fromRGB(90, 0, 0)
shieldBtn.Text = "SHIELD OFF"
shieldBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
shieldBtn.TextScaled = true
shieldBtn.Font = Enum.Font.GothamBold
shieldBtn.Parent = mainContent

-- Speed controls
local plusBtn = Instance.new("TextButton")
plusBtn.Size = UDim2.new(0, 45, 0, 38)
plusBtn.Position = UDim2.new(0, 10, 0, 60)
plusBtn.BackgroundColor3 = Color3.fromRGB(0, 140, 0)
plusBtn.Text = "+"
plusBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
plusBtn.TextScaled = true
plusBtn.Font = Enum.Font.GothamBold
plusBtn.Parent = mainContent

local speedLabel = Instance.new("TextLabel")
speedLabel.Size = UDim2.new(0, 100, 0, 38)
speedLabel.Position = UDim2.new(0, 65, 0, 60)
speedLabel.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
speedLabel.Text = "Speed: 16"
speedLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
speedLabel.TextScaled = true
speedLabel.Font = Enum.Font.GothamBold
speedLabel.Parent = mainContent

local minusBtn = Instance.new("TextButton")
minusBtn.Size = UDim2.new(0, 45, 0, 38)
minusBtn.Position = UDim2.new(0, 175, 0, 60)
minusBtn.BackgroundColor3 = Color3.fromRGB(140, 0, 0)
minusBtn.Text = "-"
minusBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
minusBtn.TextScaled = true
minusBtn.Font = Enum.Font.GothamBold
minusBtn.Parent = mainContent

-- Jump
local jumpBtn = Instance.new("TextButton")
jumpBtn.Size = UDim2.new(1, -20, 0, 38)
jumpBtn.Position = UDim2.new(0, 10, 0, 110)
jumpBtn.BackgroundColor3 = Color3.fromRGB(90, 0, 0)
jumpBtn.Text = "JUMP"
jumpBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
jumpBtn.TextScaled = true
jumpBtn.Font = Enum.Font.GothamBold
jumpBtn.Parent = mainContent

-- Noclip
local noclipBtn = Instance.new("TextButton")
noclipBtn.Size = UDim2.new(1, -20, 0, 38)
noclipBtn.Position = UDim2.new(0, 10, 0, 160)
noclipBtn.BackgroundColor3 = Color3.fromRGB(90, 0, 0)
noclipBtn.Text = "NOCLIP OFF"
noclipBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
noclipBtn.TextScaled = true
noclipBtn.Font = Enum.Font.GothamBold
noclipBtn.Parent = mainContent

-- Fly
local flyBtn = Instance.new("TextButton")
flyBtn.Size = UDim2.new(1, -20, 0, 38)
flyBtn.Position = UDim2.new(0, 10, 0, 210)
flyBtn.BackgroundColor3 = Color3.fromRGB(90, 0, 0)
flyBtn.Text = "FLY OFF"
flyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
flyBtn.TextScaled = true
flyBtn.Font = Enum.Font.GothamBold
flyBtn.Parent = mainContent

-- Aimbot
local aimbotBtn = Instance.new("TextButton")
aimbotBtn.Size = UDim2.new(1, -20, 0, 38)
aimbotBtn.Position = UDim2.new(0, 10, 0, 260)
aimbotBtn.BackgroundColor3 = Color3.fromRGB(90, 0, 0)
aimbotBtn.Text = "AIMBOT OFF"
aimbotBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
aimbotBtn.TextScaled = true
aimbotBtn.Font = Enum.Font.GothamBold
aimbotBtn.Parent = mainContent

-- FOV controls
local fovPlus = Instance.new("TextButton")
fovPlus.Size = UDim2.new(0, 45, 0, 38)
fovPlus.Position = UDim2.new(0, 10, 0, 310)
fovPlus.BackgroundColor3 = Color3.fromRGB(0, 140, 0)
fovPlus.Text = "+"
fovPlus.TextColor3 = Color3.fromRGB(255, 255, 255)
fovPlus.TextScaled = true
fovPlus.Font = Enum.Font.GothamBold
fovPlus.Parent = mainContent

local fovLabel = Instance.new("TextLabel")
fovLabel.Size = UDim2.new(0, 100, 0, 38)
fovLabel.Position = UDim2.new(0, 65, 0, 310)
fovLabel.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
fovLabel.Text = "FOV: 40"
fovLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
fovLabel.TextScaled = true
fovLabel.Font = Enum.Font.GothamBold
fovLabel.Parent = mainContent

local fovMinus = Instance.new("TextButton")
fovMinus.Size = UDim2.new(0, 45, 0, 38)
fovMinus.Position = UDim2.new(0, 175, 0, 310)
fovMinus.BackgroundColor3 = Color3.fromRGB(140, 0, 0)
fovMinus.Text = "-"
fovMinus.TextColor3 = Color3.fromRGB(255, 255, 255)
fovMinus.TextScaled = true
fovMinus.Font = Enum.Font.GothamBold
fovMinus.Parent = mainContent

-- =============================================
-- VARIABLES
-- =============================================

local shieldOn = false
local infJumpOn = false
local noclipOn = false
local flyOn = false
local aimbotOn = false
local forceField
local currentSpeed = 16
local bodyVelocity, bodyGyro

local fov = 40
local maxTransparency = 0.1
local FOVring = Drawing.new("Circle")
FOVring.Visible = false
FOVring.Thickness = 2
FOVring.Color = Color3.fromRGB(128, 0, 128)
FOVring.Filled = false
FOVring.Radius = fov
FOVring.Position = Cam.ViewportSize / 2
FOVring.Transparency = 1

-- =============================================
-- FUNCTIONS
-- =============================================

local function toggleShield()
    shieldOn = not shieldOn
    shieldBtn.Text = shieldOn and "SHIELD ON" or "SHIELD OFF"
    shieldBtn.BackgroundColor3 = shieldOn and Color3.fromRGB(0, 120, 0) or Color3.fromRGB(90, 0, 0)
    
    local char = player.Character
    if char then
        if shieldOn then
            forceField = Instance.new("ForceField")
            forceField.Parent = char
        else
            if forceField then forceField:Destroy() end
        end
    end
end

local function toggleInfJump()
    infJumpOn = not infJumpOn
    jumpBtn.Text = infJumpOn and "JUMP ON" or "JUMP"
    jumpBtn.BackgroundColor3 = infJumpOn and Color3.fromRGB(0, 120, 0) or Color3.fromRGB(90, 0, 0)
end

local function toggleNoclip()
    noclipOn = not noclipOn
    noclipBtn.Text = noclipOn and "NOCLIP ON" or "NOCLIP OFF"
    noclipBtn.BackgroundColor3 = noclipOn and Color3.fromRGB(0, 120, 0) or Color3.fromRGB(90, 0, 0)
end

local function toggleFly()
    flyOn = not flyOn
    flyBtn.Text = flyOn and "FLY ON" or "FLY OFF"
    flyBtn.BackgroundColor3 = flyOn and Color3.fromRGB(0, 120, 0) or Color3.fromRGB(90, 0, 0)
    
    local char = player.Character
    local root = char and char:FindFirstChild("HumanoidRootPart")
    if not root then return end
    
    if flyOn then
        bodyVelocity = Instance.new("BodyVelocity")
        bodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
        bodyVelocity.Velocity = Vector3.new(0, 0, 0)
        bodyVelocity.Parent = root
        
        bodyGyro = Instance.new("BodyGyro")
        bodyGyro.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
        bodyGyro.CFrame = root.CFrame
        bodyGyro.Parent = root
    else
        if bodyVelocity then bodyVelocity:Destroy() bodyVelocity = nil end
        if bodyGyro then bodyGyro:Destroy() bodyGyro = nil end
    end
end

local function toggleAimbot()
    aimbotOn = not aimbotOn
    aimbotBtn.Text = aimbotOn and "AIMBOT ON" or "AIMBOT OFF"
    aimbotBtn.BackgroundColor3 = aimbotOn and Color3.fromRGB(0, 120, 0) or Color3.fromRGB(90, 0, 0)
    FOVring.Visible = aimbotOn
end

local function updateDrawings()
    FOVring.Position = Cam.ViewportSize / 2
    FOVring.Radius = fov
end

local function getClosestPlayerInFOV(targetPart)
    local closest = nil
    local last = math.huge
    local center = Cam.ViewportSize / 2
    
    for _, plr in ipairs(Players:GetPlayers()) do
        if plr ~= player and plr.Character then
            local part = plr.Character:FindFirstChild(targetPart)
            if part then
                local screenPos, onScreen = Cam:WorldToViewportPoint(part.Position)
                local dist = (Vector2.new(screenPos.X, screenPos.Y) - center).Magnitude
                if onScreen and dist < last and dist < fov then
                    last = dist
                    closest = plr
                end
            end
        end
    end
    return closest
end

local function lookAt(targetPos)
    local lookVector = (targetPos - Cam.CFrame.Position).Unit
    local newCFrame = CFrame.new(Cam.CFrame.Position, Cam.CFrame.Position + lookVector)
    Cam.CFrame = newCFrame
end

local function calculateTransparency(distance)
    local maxDist = fov
    local t = (1 - (distance / maxDist)) * maxTransparency
    return math.clamp(t, 0, maxTransparency)
end

-- =============================================
-- CONNECTIONS
-- =============================================

task.spawn(function()
    shieldBtn.MouseButton1Click:Connect(toggleShield)
    jumpBtn.MouseButton1Click:Connect(toggleInfJump)
    noclipBtn.MouseButton1Click:Connect(toggleNoclip)
    flyBtn.MouseButton1Click:Connect(toggleFly)
    aimbotBtn.MouseButton1Click:Connect(toggleAimbot)

    fovPlus.MouseButton1Click:Connect(function()
        fov = fov + 5
        fovLabel.Text = "FOV: " .. fov
    end)

    fovMinus.MouseButton1Click:Connect(function()
        fov = math.max(10, fov - 5)
        fovLabel.Text = "FOV: " .. fov
    end)

    plusBtn.MouseButton1Click:Connect(function()
        currentSpeed = currentSpeed + 10
        speedLabel.Text = "Speed: " .. currentSpeed
    end)

    minusBtn.MouseButton1Click:Connect(function()
        currentSpeed = math.max(16, currentSpeed - 10)
        speedLabel.Text = "Speed: " .. currentSpeed
    end)

    UserInputService.InputBegan:Connect(function(input, gameProcessed)
        if gameProcessed then return end
        if input.KeyCode == Enum.KeyCode.G then toggleShield()
        elseif input.KeyCode == Enum.KeyCode.J then toggleInfJump()
        elseif input.KeyCode == Enum.KeyCode.N then toggleNoclip()
        elseif input.KeyCode == Enum.KeyCode.F then toggleFly()
        elseif input.KeyCode == Enum.KeyCode.K then toggleAimbot()
        elseif input.KeyCode == Enum.KeyCode.H then
            sg.Enabled = not sg.Enabled
        end
    end)

    player.CharacterAdded:Connect(function(newChar)
        task.wait(0.5)
        local hum = newChar:WaitForChild("Humanoid")
        hum.WalkSpeed = currentSpeed
        
        if shieldOn then
            forceField = Instance.new("ForceField")
            forceField.Parent = newChar
        end
        
        if flyOn then
            toggleFly()
            toggleFly() -- re-apply
        end
    end)

    RunService.Heartbeat:Connect(function()
        local hum = player.Character and player.Character:FindFirstChild("Humanoid")
        if hum then hum.WalkSpeed = currentSpeed end
    end)

    UserInputService.JumpRequest:Connect(function()
        if not infJumpOn then return end
        local char = player.Character
        if not char then return end
        local hum = char:FindFirstChild("Humanoid")
        local root = char:FindFirstChild("HumanoidRootPart")
        if hum and root and hum.Health > 0 then
            hum.JumpPower = 80
            root.Velocity = Vector3.new(root.Velocity.X, 70, root.Velocity.Z)
        end
    end)

    RunService.Stepped:Connect(function()
        if not noclipOn then return end
        local char = player.Character
        if char then
            for _, part in ipairs(char:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.CanCollide = false
                end
            end
        end
    end)

    RunService.RenderStepped:Connect(function(dt)
        if not flyOn then return end
        local char = player.Character
        local root = char and char:FindFirstChild("HumanoidRootPart")
        if not root then return end
        
        local moveDir = Vector3.new()
        if UserInputService:IsKeyDown(Enum.KeyCode.W) then moveDir += Cam.CFrame.LookVector end
        if UserInputService:IsKeyDown(Enum.KeyCode.S) then moveDir -= Cam.CFrame.LookVector end
        if UserInputService:IsKeyDown(Enum.KeyCode.A) then moveDir -= Cam.CFrame.RightVector end
        if UserInputService:IsKeyDown(Enum.KeyCode.D) then moveDir += Cam.CFrame.RightVector end
        if UserInputService:IsKeyDown(Enum.KeyCode.Space) then moveDir += Vector3.new(0, 1, 0) end
        if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then moveDir -= Vector3.new(0, 1, 0) end
        
        if moveDir.Magnitude > 0 then
            moveDir = moveDir.Unit
            root.CFrame = root.CFrame + (moveDir * (currentSpeed * 1.5) * dt)
        end
        
        root.CFrame = CFrame.new(root.Position) * Cam.CFrame.Rotation
    end)

    RunService.RenderStepped:Connect(function()
        updateDrawings()
        if not aimbotOn then
            FOVring.Transparency = 0
            return
        end
        
        local closest = getClosestPlayerInFOV("Head")
        if closest and closest.Character and closest.Character:FindFirstChild("Head") then
            lookAt(closest.Character.Head.Position)
            local screenPos, onScreen = Cam:WorldToViewportPoint(closest.Character.Head.Position)
            local dist = (Vector2.new(screenPos.X, screenPos.Y) - (Cam.ViewportSize / 2)).Magnitude
            FOVring.Transparency = calculateTransparency(dist)
        else
            FOVring.Transparency = 0.1
        end
    end)

    print("💀 All systems connected")
end)

print("💀 TERROR NOTURNO HUB + Aimbot loaded!")
print("💀 Keys: G=Shield | J=Jump | N=Noclip | F=Fly | K=Aimbot | H=Menu")

-- =============================================
-- ESP - SECOND TAB
-- =============================================

local espEnabled = false
local espDrawings = {}

local options = {
    {name = "Names",     var = "showNames",    default = true},
    {name = "Distance",  var = "showDistance", default = true},
    {name = "Boxes",     var = "showBoxes",    default = true},
    {name = "Tracers",   var = "showTracers",  default = true},
}

local toggles = {}
local yOffset = 10

for i, opt in ipairs(options) do
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(1, -20, 0, 35)
    btn.Position = UDim2.new(0, 10, 0, yOffset)
    btn.BackgroundColor3 = opt.default and Color3.fromRGB(0, 120, 0) or Color3.fromRGB(90, 0, 0)
    btn.Text = opt.name .. ": " .. (opt.default and "ON" or "OFF")
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.TextScaled = true
    btn.Font = Enum.Font.GothamBold
    btn.Parent = espContent
    
    toggles[opt.var] = {button = btn, value = opt.default}
    
    btn.MouseButton1Click:Connect(function()
        toggles[opt.var].value = not toggles[opt.var].value
        btn.BackgroundColor3 = toggles[opt.var].value and Color3.fromRGB(0, 120, 0) or Color3.fromRGB(90, 0, 0)
        btn.Text = opt.name .. ": " .. (toggles[opt.var].value and "ON" or "OFF")
    end)
    
    yOffset = yOffset + 45
end

local espBtn = Instance.new("TextButton")
espBtn.Size = UDim2.new(1, -20, 0, 40)
espBtn.Position = UDim2.new(0, 10, 0, yOffset)
espBtn.BackgroundColor3 = Color3.fromRGB(90, 0, 0)
espBtn.Text = "ESP OFF"
espBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
espBtn.TextScaled = true
espBtn.Font = Enum.Font.GothamBold
espBtn.Parent = espContent

espBtn.MouseButton1Click:Connect(function()
    espEnabled = not espEnabled
    espBtn.Text = espEnabled and "ESP ON" or "ESP OFF"
    espBtn.BackgroundColor3 = espEnabled and Color3.fromRGB(0, 120, 0) or Color3.fromRGB(90, 0, 0)
end)

-- ESP logic
local function createESP(plr)
    if plr == player then return end
    
    local box = Drawing.new("Square")
    box.Thickness = 1.5
    box.Filled = false
    box.Color = Color3.fromRGB(255, 80, 80)
    box.Transparency = 0.9
    box.Visible = false
    
    local tracer = Drawing.new("Line")
    tracer.Thickness = 1.2
    tracer.Color = Color3.fromRGB(255, 80, 80)
    tracer.Transparency = 0.8
    tracer.Visible = false
    
    local nameText = Drawing.new("Text")
    nameText.Size = 15
    nameText.Center = true
    nameText.Outline = true
    nameText.Color = Color3.fromRGB(255, 255, 255)
    nameText.Font = 2
    nameText.Visible = false
    
    local distText = Drawing.new("Text")
    distText.Size = 13
    distText.Center = true
    distText.Outline = true
    distText.Color = Color3.fromRGB(200, 200, 255)
    distText.Font = 2
    distText.Visible = false
    
    espDrawings[plr] = {
        box = box,
        tracer = tracer,
        name = nameText,
        dist = distText
    }
end

local function removeESP(plr)
    if espDrawings[plr] then
        for _, v in pairs(espDrawings[plr]) do
            v:Remove()
        end
        espDrawings[plr] = nil
    end
end

for _, plr in ipairs(Players:GetPlayers()) do
    createESP(plr)
end

Players.PlayerAdded:Connect(createESP)
Players.PlayerRemoving:Connect(removeESP)

RunService.RenderStepped:Connect(function()
    if not espEnabled then
        for _, data in pairs(espDrawings) do
            data.box.Visible = false
            data.tracer.Visible = false
            data.name.Visible = false
            data.dist.Visible = false
        end
        return
    end
    
    for plr, data in pairs(espDrawings) do
        if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") and plr.Character:FindFirstChild("Head") then
            local hrp = plr.Character.HumanoidRootPart
            local head = plr.Character.Head
            local humanoid = plr.Character:FindFirstChild("Humanoid")
            
            if humanoid and humanoid.Health > 0 then
                local rootPos, onScreen = Cam:WorldToViewportPoint(hrp.Position)
                local headPos = Cam:WorldToViewportPoint(head.Position + Vector3.new(0, 0.5, 0))
                local legPos = Cam:WorldToViewportPoint(hrp.Position - Vector3.new(0, 3.5, 0))
                
                if onScreen then
                    local height = math.abs(headPos.Y - legPos.Y)
                    local width = height * 0.45
                    
                    if toggles.showBoxes.value then
                        data.box.Size = Vector2.new(width, height)
                        data.box.Position = Vector2.new(rootPos.X - width/2, rootPos.Y - height/2)
                        data.box.Visible = true
                    else
                        data.box.Visible = false
                    end
                    
                    if toggles.showTracers.value then
                        data.tracer.From = Vector2.new(Cam.ViewportSize.X / 2, Cam.ViewportSize.Y)
                        data.tracer.To = Vector2.new(rootPos.X, rootPos.Y)
                        data.tracer.Visible = true
                    else
                        data.tracer.Visible = false
                    end
                    
                    if toggles.showNames.value then
                        data.name.Text = plr.Name
                        data.name.Position = Vector2.new(rootPos.X, rootPos.Y - height/2 - 18)
                        data.name.Visible = true
                    else
                        data.name.Visible = false
                    end
                    
                    if toggles.showDistance.value then
                        local distance = (player.Character and player.Character:FindFirstChild("HumanoidRootPart")) and 
                            (player.Character.HumanoidRootPart.Position - hrp.Position).Magnitude or 0
                        data.dist.Text = math.floor(distance) .. " studs"
                        data.dist.Position = Vector2.new(rootPos.X, rootPos.Y + height/2 + 2)
                        data.dist.Visible = true
                    else
                        data.dist.Visible = false
                    end
                else
                    data.box.Visible = false
                    data.tracer.Visible = false
                    data.name.Visible = false
                    data.dist.Visible = false
                end
            else
                data.box.Visible = false
                data.tracer.Visible = false
                data.name.Visible = false
                data.dist.Visible = false
            end
        else
            data.box.Visible = false
            data.tracer.Visible = false
            data.name.Visible = false
            data.dist.Visible = false
        end
    end
end)

print("💀 ESP loaded in secondary tab!")
