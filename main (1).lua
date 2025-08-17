-- Lib.lua
local UI = {}
UI.__index = UI

-- 主容器
function UI:Init()
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.IgnoreGuiInset = true
    ScreenGui.ResetOnSpawn = false
    ScreenGui.Parent = game:GetService("CoreGui")

    self.ScreenGui = ScreenGui
    self.Elements = {}

    -- 半透明背景层
    local MainFrame = Instance.new("Frame")
    MainFrame.Size = UDim2.new(0, 400, 0, 300)
    MainFrame.Position = UDim2.new(0.5, -200, 0.5, -150)
    MainFrame.BackgroundTransparency = 0.4
    MainFrame.BackgroundColor3 = Color3.fromRGB(30,30,30)
    MainFrame.Active = true
    MainFrame.Draggable = true
    MainFrame.Parent = ScreenGui
    self.MainFrame = MainFrame

    -- 粒子效果
    local Emitter = Instance.new("ParticleEmitter")
    Emitter.Texture = "rbxassetid://8139665946" -- 白点贴图，可替换
    Emitter.Rate = 40
    Emitter.Lifetime = NumberRange.new(5, 10)
    Emitter.Speed = NumberRange.new(20, 40)
    Emitter.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0.1),NumberSequenceKeypoint.new(1,0.2)})
    Emitter.Rotation = NumberRange.new(0, 360)
    Emitter.RotSpeed = NumberRange.new(-30,30)
    Emitter.Transparency = NumberSequence.new(0.2, 1)
    Emitter.Parent = MainFrame

    return self
end

-- 按钮
function UI:Button(text, callback)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(1, -20, 0, 30)
    btn.Position = UDim2.new(0, 10, 0, #self.Elements*35 + 10)
    btn.Text = text
    btn.BackgroundColor3 = Color3.fromRGB(50,50,50)
    btn.TextColor3 = Color3.fromRGB(255,255,255)
    btn.Parent = self.MainFrame
    btn.MouseButton1Click:Connect(callback)
    table.insert(self.Elements, btn)
end

-- 开关
function UI:Toggle(text, default, callback)
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(1, -20, 0, 30)
    frame.Position = UDim2.new(0, 10, 0, #self.Elements*35 + 10)
    frame.BackgroundTransparency = 1
    frame.Parent = self.MainFrame

    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(0.7,0,1,0)
    label.Text = text
    label.BackgroundTransparency = 1
    label.TextColor3 = Color3.new(1,1,1)
    label.Parent = frame

    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(0.3,0,1,0)
    btn.Position = UDim2.new(0.7,0,0,0)
    btn.Text = default and "ON" or "OFF"
    btn.BackgroundColor3 = default and Color3.fromRGB(0,200,0) or Color3.fromRGB(200,0,0)
    btn.TextColor3 = Color3.new(1,1,1)
    btn.Parent = frame

    local state = default
    btn.MouseButton1Click:Connect(function()
        state = not state
        btn.Text = state and "ON" or "OFF"
        btn.BackgroundColor3 = state and Color3.fromRGB(0,200,0) or Color3.fromRGB(200,0,0)
        callback(state)
    end)

    table.insert(self.Elements, frame)
end

-- 输入框
function UI:Input(placeholder, callback)
    local box = Instance.new("TextBox")
    box.Size = UDim2.new(1, -20, 0, 30)
    box.Position = UDim2.new(0, 10, 0, #self.Elements*35 + 10)
    box.PlaceholderText = placeholder
    box.BackgroundColor3 = Color3.fromRGB(50,50,50)
    box.TextColor3 = Color3.new(1,1,1)
    box.ClearTextOnFocus = false
    box.Parent = self.MainFrame
    box.FocusLost:Connect(function(enter)
        if enter then callback(box.Text) end
    end)
    table.insert(self.Elements, box)
end

return setmetatable({}, UI)
