-- 主界面容器
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ModernUI"
screenGui.ResetOnSpawn = false
screenGui.IgnoreGuiInset = true
screenGui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

-- 主面板
local panel = Instance.new("Frame")
panel.Name = "MainPanel"
panel.Size = UDim2.new(0, 500, 0, 300)
panel.Position = UDim2.new(0.5, -250, 0.5, -150)
panel.AnchorPoint = Vector2.new(0.5, 0.5)
panel.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
panel.BackgroundTransparency = 0.15
panel.ZIndex = 10
panel.Parent = screenGui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = panel

-- 发光边框效果
local glow = Instance.new("ImageLabel")
glow.Name = "PanelGlow"
glow.Size = UDim2.new(1, 24, 1, 24)
glow.Position = UDim2.new(0, -12, 0, -12)
glow.BackgroundTransparency = 1
glow.Image = "rbxassetid://10826326421" -- 发光贴图
glow.ImageColor3 = Color3.fromRGB(255, 128, 255)
glow.ImageTransparency = 0.4
glow.ZIndex = 5
glow.Parent = panel

-- 左侧按钮栏
local function createLeftButton(name, text, yOffset)
    local btn = Instance.new("TextButton")
    btn.Name = name
    btn.Size = UDim2.new(0, 100, 0, 40)
    btn.Position = UDim2.new(0, -110, 0, yOffset)
    btn.BackgroundColor3 = Color3.fromRGB(50, 50, 255)
    btn.TextColor3 = Color3.new(1, 1, 1)
    btn.Text = text
    btn.Font = Enum.Font.GothamBold
    btn.TextSize = 16
    btn.Parent = panel
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(1, 0)
    corner.Parent = btn
end

createLeftButton("Button1", "表情", 20)
createLeftButton("Button2", "换档锁", 70)

-- 右侧功能按钮
local function createRightButton(name, text, key, yOffset)
    local btn = Instance.new("TextButton")
    btn.Name = name
    btn.Size = UDim2.new(0, 120, 0, 50)
    btn.Position = UDim2.new(1, 10, 0, yOffset)
    btn.AnchorPoint = Vector2.new(0, 0)
    btn.BackgroundColor3 = Color3.fromRGB(60, 60, 255)
    btn.TextColor3 = Color3.new(1, 1, 1)
    btn.Text = text .. "   [" .. key .. "]"
    btn.Font = Enum.Font.GothamBold
    btn.TextSize = 16
    btn.Parent = panel
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0.25, 0)
    corner.Parent = btn
end

createRightButton("Block", "方块", "F", 30)
createRightButton("Ability", "能力", "Q", 90)
createRightButton("Stats", "统计", "M", 150)
