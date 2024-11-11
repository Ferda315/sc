-- Gerekli servisleri tanımlayın
local Workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local SoundService = game:GetService("SoundService")
local camera = Workspace.CurrentCamera
local player = Players.LocalPlayer

-- Key doğrulama bölümü
local requiredKey = "FRD5RLCFDSV"

if getgenv().Key ~= requiredKey then
    warn("Geçersiz key! Lütfen geçerli bir key sağlayın.")
    return -- Key yanlışsa, script çalışmayı durdurur
end

print("Key doğrulandı, script çalışıyor.")

-- Ekranda belirgin bir mesaj gösterme
local function showMessage()
    local screenGui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
    local textLabel = Instance.new("TextLabel", screenGui)
    textLabel.Size = UDim2.new(0, 400, 0, 100)
    textLabel.Position = UDim2.new(0.5, -200, 0.5, -50)
    textLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    textLabel.Text = "Join the new server https://discord.gg/m7GJQnk3xh"
    textLabel.TextSize = 24
    textLabel.TextScaled = true
    textLabel.Font = Enum.Font.SourceSansBold
    textLabel.TextStrokeTransparency = 0

    wait(5) -- 5 saniye bekletme
    screenGui:Destroy()
end

-- Mesajı göster
showMessage()

-- GUI oluşturma
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = player:WaitForChild("PlayerGui")

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 400, 0, 300)
mainFrame.Position = UDim2.new(0.5, -200, 0.5, -150)
mainFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
mainFrame.Parent = screenGui
mainFrame.Draggable = true
mainFrame.Active = true
mainFrame.Name = "Mighty Omega"

local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, 0, 0, 50)
titleLabel.BackgroundTransparency = 1
titleLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
titleLabel.Text = "Mighty Omega"
titleLabel.TextSize = 24
titleLabel.Parent = mainFrame

-- Notifier Seçenekleri
local pumpkinButton = Instance.new("TextButton")
pumpkinButton.Size = UDim2.new(1, -20, 0, 50)
pumpkinButton.Position = UDim2.new(0, 10, 0, 60)
pumpkinButton.Text = "Pumpkin Notifier"
pumpkinButton.Parent = mainFrame

local behelitButton = Instance.new("TextButton")
behelitButton.Size = UDim2.new(1, -20, 0, 50)
behelitButton.Position = UDim2.new(0, 10, 0, 120)
behelitButton.Text = "Behelit Notifier"
behelitButton.Parent = mainFrame

-- Ses oluştur ve ayarla
local pumpkinSound = Instance.new("Sound")
pumpkinSound.SoundId = "rbxassetid://2865227271"
pumpkinSound.Volume = 1
pumpkinSound.Parent = SoundService

local behelitSound = Instance.new("Sound")
behelitSound.SoundId = "rbxassetid://7225129460"
behelitSound.Volume = 1
behelitSound.Parent = SoundService

local espLabels = {}
local pumpkinNotifierActive = false
local behelitNotifierActive = false

-- ESP etiketi oluşturma fonksiyonu
local function createESPLabel(object, labelText, color)
    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(0, 100, 0, 50)
    label.BackgroundTransparency = 1
    label.TextColor3 = color
    label.TextSize = 14
    label.Text = labelText
    label.Parent = screenGui
    table.insert(espLabels, label)

    -- Her frame'de ESP etiketini güncelleme fonksiyonu
    local connection
    local function updateESP()
        if object and object.Parent then
            local position = object:IsA("BasePart") and object.Position or (object:IsA("Model") and object:GetBoundingBox().Position)
            if position then
                local screenPos, onScreen = camera:WorldToViewportPoint(position)
                if onScreen then
                    label.Position = UDim2.new(0, screenPos.X - label.Size.X.Offset / 2, 0, screenPos.Y - label.Size.Y.Offset / 2)
                    label.Visible = true
                else
                    label.Visible = false
                end
            else
                label.Visible = false
            end
        else
            label:Destroy()
            if connection then
                connection:Disconnect()
            end
        end
    end

    connection = RunService.RenderStepped:Connect(updateESP)
end

-- Pumpkin Notifier kontrol fonksiyonu
local function checkForPumpkin()
    if pumpkinNotifierActive then
        for _, obj in ipairs(Workspace.Event:GetChildren()) do
            if obj:IsA("Model") and obj.Name == "" then
                createESPLabel(obj, "Pumpkin", Color3.fromRGB(255, 128, 0))
                pumpkinSound:Play()
            end
        end
    end
end

-- Behelit Notifier kontrol fonksiyonu
local function checkForBehelit()
    if behelitNotifierActive then
        for _, obj in ipairs(Workspace:GetDescendants()) do
            if obj:IsA("Model") and obj.Name == "BehelitMODEL" then
                createESPLabel(obj, "Behelit", Color3.fromRGB(153, 50, 204))
                behelitSound:Play()
            end
        end
    end
end

-- İlk kontrol
checkForPumpkin()
checkForBehelit()

-- Pumpkin Button fonksiyonu
pumpkinButton.MouseButton1Click:Connect(function()
    pumpkinNotifierActive = not pumpkinNotifierActive
    checkForPumpkin()
end)

-- Behelit Button fonksiyonu
behelitButton.MouseButton1Click:Connect(function()
    behelitNotifierActive = not behelitNotifierActive
    checkForBehelit()
end)

-- Yeni nesne spawnlandığında kontrol et
Workspace.Event.ChildAdded:Connect(function(newObject)
    if pumpkinNotifierActive and newObject:IsA("Model") and newObject.Name == "" then
        createESPLabel(newObject, "Pumpkin", Color3.fromRGB(255, 128, 0))
        pumpkinSound:Play()
    end
end)

Workspace.ChildAdded:Connect(function(newObject)
    if behelitNotifierActive and newObject:IsA("Model") and newObject.Name == "BehelitMODEL" then
        createESPLabel(newObject, "Behelit", Color3.fromRGB(153, 50, 204))
        behelitSound:Play()
    end
end)
