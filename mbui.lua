--[[
x2zu UI 中文 + 多主题 打包版
用法：
local Library = loadstring(game:HttpGet("REPLACE_WITH_YOUR_HOST/Framework.zh.lua"))()
-- 或者：把本文件直接 require/loadstring，API 与原库保持一致：Window/Tab/Toggle/Slider/Button/Textbox/Dropdown/Code/Notify

说明：
- 这是在原库外面包的一层“补丁库”。它会加载原始 Framework.luau，再对窗口、组件进行中文化和主题着色。
- 不破坏你原来的写法：Theme 仍然传字符串即可（默认 Dark）。新增多个主题名可选：
  "Dark","Light","DarkBlue","Neon","Sakura","Emerald","SolarizedDark","SolarizedLight"
- 额外 API：
  Library:SetLocale("zhCN")         -- 目前内置中文
  Library:RegisterTheme(name, tbl)  -- 动态注册主题
]]

local ORIGINAL_URL = "https://raw.githubusercontent.com/x2zu/OPEN-SOURCE-UI-ROBLOX/refs/heads/main/X2ZU%20UI%20ROBLOX%20OPEN%20SOURCE/DummyUi-leak-by-x2zu/fetching-main/Tools/Framework.luau"

-- ==== zh-CN i18n ====
local Locale = {}
Locale.current = "zhCN"
Locale.map = {
    zhCN = {
        ["Main"] = "主界面",
        ["Extra"] = "附加",
        ["Settings"] = "设置",
        ["Search"] = "搜索",
        ["Search..."] = "搜索…",
        ["No results"] = "没有结果",
        ["Nothing here"] = "这里空空如也",
        ["Close"] = "关闭",
        ["Open"] = "打开",
        ["Back"] = "返回",
        ["Confirm"] = "确认",
        ["Cancel"] = "取消",
        ["Minimize"] = "最小化",
        ["Maximize"] = "最大化",
        ["Copied!"] = "已复制！",
        ["Dark"] = "深色",
        ["Light"] = "浅色",
        -- 组件常见文案
        ["Enable Feature"] = "启用功能",
        ["Toggle to enable or disable the feature"] = "开关以启用/禁用该功能",
        ["Run Action"] = "运行操作",
        ["Click to perform something"] = "点击执行操作",
        ["Input Text"] = "输入文本",
        ["Type something here"] = "在此输入内容",
        ["Enter value"] = "请输入",
        ["Set Speed"] = "设置速度",
        ["Choose Option"] = "选择选项",
        ["Option 1"] = "选项 1",
        ["Option 2"] = "选项 2",
        ["Option 3"] = "选项 3",
        ["Example Code"] = "示例代码",
        ["Everything works fine!"] = "一切正常！",
        ["Action performed successfully."] = "操作已成功执行。"
    }
}
local function L(s)
    if type(s) ~= "string" then return s end
    local lang = Locale.current or "zhCN"
    return (Locale.map[lang] and Locale.map[lang][s]) or s
end

-- ==== Theme Palettes ====
local ThemePalettes = {
    Dark = {
        bg = Color3.fromRGB(20,20,22),
        surface = Color3.fromRGB(28,28,32),
        muted = Color3.fromRGB(36,36,42),
        border = Color3.fromRGB(52,52,58),
        text = Color3.fromRGB(235,235,240),
        textDim = Color3.fromRGB(160,162,170),
        accent = Color3.fromRGB(120,94,240),
        accentText = Color3.new(1,1,1),
        toggleOff = Color3.fromRGB(64,64,72),
        toggleKnob = Color3.fromRGB(240,240,244),
    },
    Light = {
        bg = Color3.fromRGB(246,247,249),
        surface = Color3.fromRGB(255,255,255),
        muted = Color3.fromRGB(243,244,246),
        border = Color3.fromRGB(225,227,232),
        text = Color3.fromRGB(23,23,26),
        textDim = Color3.fromRGB(105,110,120),
        accent = Color3.fromRGB(25,127,247),
        accentText = Color3.new(1,1,1),
        toggleOff = Color3.fromRGB(214,216,222),
        toggleKnob = Color3.fromRGB(255,255,255),
    },
    DarkBlue = {
        bg = Color3.fromRGB(14,18,28),
        surface = Color3.fromRGB(20,26,40),
        muted = Color3.fromRGB(26,32,50),
        border = Color3.fromRGB(42,50,72),
        text = Color3.fromRGB(224,230,255),
        textDim = Color3.fromRGB(156,170,210),
        accent = Color3.fromRGB(69,134,255),
        accentText = Color3.new(1,1,1),
        toggleOff = Color3.fromRGB(50,58,86),
        toggleKnob = Color3.fromRGB(232,238,255),
    },
    Neon = {
        bg = Color3.fromRGB(8,8,10),
        surface = Color3.fromRGB(20,20,24),
        muted = Color3.fromRGB(26,26,32),
        border = Color3.fromRGB(52,52,58),
        text = Color3.fromRGB(240,240,255),
        textDim = Color3.fromRGB(170,170,190),
        accent = Color3.fromRGB(0,255,200),
        accentText = Color3.fromRGB(0,20,20),
        toggleOff = Color3.fromRGB(68,68,78),
        toggleKnob = Color3.fromRGB(245,255,252),
    },
    Sakura = {
        bg = Color3.fromRGB(250,245,248),
        surface = Color3.fromRGB(255,250,253),
        muted = Color3.fromRGB(255,238,246),
        border = Color3.fromRGB(244,210,226),
        text = Color3.fromRGB(40,28,34),
        textDim = Color3.fromRGB(110,90,98),
        accent = Color3.fromRGB(240,115,170),
        accentText = Color3.new(1,1,1),
        toggleOff = Color3.fromRGB(232,210,220),
        toggleKnob = Color3.fromRGB(255,255,255),
    },
    Emerald = {
        bg = Color3.fromRGB(10,20,16),
        surface = Color3.fromRGB(16,28,24),
        muted = Color3.fromRGB(20,36,30),
        border = Color3.fromRGB(36,64,54),
        text = Color3.fromRGB(224,244,236),
        textDim = Color3.fromRGB(156,190,180),
        accent = Color3.fromRGB(16,200,140),
        accentText = Color3.fromRGB(0,20,12),
        toggleOff = Color3.fromRGB(52,78,70),
        toggleKnob = Color3.fromRGB(230,255,246),
    },
    SolarizedDark = {
        bg = Color3.fromRGB(0,43,54),
        surface = Color3.fromRGB(7,54,66),
        muted = Color3.fromRGB(0,43,54),
        border = Color3.fromRGB(88,110,117),
        text = Color3.fromRGB(253,246,227),
        textDim = Color3.fromRGB(147,161,161),
        accent = Color3.fromRGB(38,139,210),
        accentText = Color3.fromRGB(0,20,30),
        toggleOff = Color3.fromRGB(88,110,117),
        toggleKnob = Color3.fromRGB(253,246,227),
    },
    SolarizedLight = {
        bg = Color3.fromRGB(253,246,227),
        surface = Color3.fromRGB(238,232,213),
        muted = Color3.fromRGB(250,240,210),
        border = Color3.fromRGB(147,161,161),
        text = Color3.fromRGB(0,43,54),
        textDim = Color3.fromRGB(88,110,117),
        accent = Color3.fromRGB(181,137,0),
        accentText = Color3.fromRGB(20,12,0),
        toggleOff = Color3.fromRGB(210,204,185),
        toggleKnob = Color3.fromRGB(255,255,255),
    },
}

local function RegisterTheme(name, palette)
    ThemePalettes[name] = palette
end

-- ==== 工具：对 GUI 应用主题 & 汉化文本 ====
local function applyThemeToInstance(inst, theme)
    pcall(function()
        if inst:IsA("TextLabel") or inst:IsA("TextButton") then
            inst.TextColor3 = theme.text
            -- 二级说明
            if inst.Name:lower():find("desc") or inst.Name:lower():find("subtitle") then
                inst.TextColor3 = theme.textDim
            end
        elseif inst:IsA("TextBox") then
            inst.TextColor3 = theme.text
            inst.PlaceholderColor3 = theme.textDim
            inst.BackgroundColor3 = theme.surface
            inst.BorderColor3 = theme.border
        elseif inst:IsA("Frame") or inst:IsA("ScrollingFrame") then
            if inst.Name:lower():find("topbar") then
                inst.BackgroundColor3 = theme.surface
            elseif inst.Name:lower():find("sidebar") then
                inst.BackgroundColor3 = theme.surface
            elseif inst.Name:lower():find("card") or inst.Name:lower():find("section") then
                inst.BackgroundColor3 = theme.surface
            else
                -- 大容器
                inst.BackgroundColor3 = inst.BackgroundColor3 or theme.bg
            end
            if inst.BorderSizePixel and inst.BorderSizePixel > 0 then
                inst.BorderColor3 = theme.border
            end
        elseif inst:IsA("UIStroke") then
            inst.Color = theme.border
        end
    end)
end

local function localizeInstance(inst)
    local function repField(field)
        if inst[field] and type(inst[field]) == "string" then
            local s = inst[field]
            local zh = L(s)
            if zh ~= s then inst[field] = zh end
        end
    end
    pcall(function()
        if inst:IsA("TextLabel") or inst:IsA("TextButton") or inst:IsA("TextBox") then
            repField("Text"); repField("PlaceholderText"); repField("ContentText")
        end
        if type(inst.Name) == "string" then
            local zh = L(inst.Name)
            if zh ~= inst.Name then inst.Name = zh end
        end
    end)
end

local function deepProcess(root, theme)
    for _,d in ipairs(root:GetDescendants()) do
        applyThemeToInstance(d, theme)
        localizeInstance(d)
    end
    applyThemeToInstance(root, theme)
    localizeInstance(root)
end

-- ==== 加载原库并包装 ====
local BaseLib = loadstring(game:HttpGet(ORIGINAL_URL))()

local Wrapper = {}

function Wrapper:SetLocale(code) Locale.current = code or "zhCN" end
function Wrapper:RegisterTheme(name, palette) RegisterTheme(name, palette) end

-- 保留其它导出（如果原库还有别的全局函数，也透传）
setmetatable(Wrapper, { __index = BaseLib })

function Wrapper:Window(data)
    data = data or {}
    local themeName = data.Theme or "Dark"
    local theme = ThemePalettes[themeName] or ThemePalettes.Dark

    -- 传入的标题/描述也先本地化一次
    if data.Title then data.Title = L(data.Title) end
    if data.Desc  then data.Desc  = L(data.Desc)  end
    if data.CloseUIButton and data.CloseUIButton.Text then
        data.CloseUIButton.Text = L(data.CloseUIButton.Text)
    end

    local win = BaseLib:Window(data)

    -- 尝试拿到根节点
    local CoreGui = game:GetService("CoreGui")
    local root = nil
    pcall(function()
        root = (win and (win.Gui or win._Gui or win.Container or win.Instance)) 
             or CoreGui:FindFirstChildOfClass("ScreenGui")
    end)
    if root then
        deepProcess(root, theme)
        -- 监听后续创建的节点（如搜索结果、下拉面板）
        root.DescendantAdded:Connect(function(obj)
            task.defer(function()
                applyThemeToInstance(obj, theme)
                localizeInstance(obj)
            end)
        end)
    end

    -- 给窗口对象增加运行时换肤（可选）
    function win:SetTheme(newName)
        local newTheme = ThemePalettes[newName] or ThemePalettes.Dark
        if root then deepProcess(root, newTheme) end
    end

    return win
end

return Wrapper
