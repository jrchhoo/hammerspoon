-- 设置显示器（显示器名称可通过在 Hammerspoon Console 控制台中输入 hs.screen.allScreens()[1]:name() 和 hs.screen.allScreens()[2]:name() 得到，更多显示器依次类推）
-- 获取显示器数目
local monitor_num = #hs.screen.allScreens()
-- 设置主显示器
local main_monitor = hs.screen.allScreens()[1]:id()
-- 设置副显示器
local second_monitor = nil
if (monitor_num >= 2)
then
    second_monitor = hs.screen.allScreens()[2]:id()
end
-- 设置第三个显示器（暂未使用）
local third = nil
if (monitor_num >= 3)
then
    third = hs.screen.allScreens()[3]:id()
end
-- 设置第四个显示器（暂未使用）
local fourth_monitor = nil
if (monitor_num >= 4)
then
    fourth_monitor = hs.screen.allScreens()[4]:id()
end

-- 关闭动画持续时间
hs.window.animationDuration = 0

-- 窗口移动
-- 左半屏
hs.hotkey.bind({"ctrl", "alt"}, "Left", "Left Half", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x
    f.y = max.y
    f.w = max.w / 2
    f.h = max.h
    win:setFrame(f)
end)

-- 右半屏
hs.hotkey.bind({"ctrl", "alt"}, "Right", "Right Half", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + (max.w / 2)
    f.y = max.y
    f.w = max.w / 2
    f.h = max.h
    win:setFrame(f)
end)

-- 上半屏
hs.hotkey.bind({"ctrl", "alt"}, "Up", "Up Half", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x
    f.y = max.y
    f.w = max.w
    f.h = max.h / 2
    win:setFrame(f)
end)

-- 下半屏
hs.hotkey.bind({"ctrl", "alt"}, "Down", "Down Half", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x
    f.y = max.y + (max.h / 2)
    f.w = max.w
    f.h = max.h / 2
    win:setFrame(f) 
end)

-- 左上角
hs.hotkey.bind({"ctrl", "alt"}, "U", "Top Left", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x
    f.y = max.y
    f.w = max.w / 2
    f.h = max.h / 2
    win:setFrame(f)
end)

-- 右上角
hs.hotkey.bind({"ctrl", "alt"}, "I", "Top Right", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + (max.w / 2)
    f.y = max.y
    f.w = max.w / 2
    f.h = max.h / 2
    win:setFrame(f)
end)

-- 左下角
hs.hotkey.bind({"ctrl", "alt"}, "J", "Left Bottom", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x
    f.y = max.y + (max.h / 2)
    f.w = max.w / 2
    f.h = max.h / 2
    win:setFrame(f)
end)

-- 右下角
hs.hotkey.bind({"ctrl", "alt"}, "K", "Right Bottom", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + (max.w / 2)
    f.y = max.y + (max.h / 2)
    f.w = max.w / 2
    f.h = max.h / 2
    win:setFrame(f)
end)

-- 1/9
hs.hotkey.bind({"ctrl", "alt"}, "1", "1/9", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x
    f.y = max.y
    f.w = max.w / 3
    f.h = max.h / 3
    win:setFrame(f)
end)

-- 2/9
hs.hotkey.bind({"ctrl", "alt"}, "2", "2/9", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + (max.w / 3)
    f.y = max.y
    f.w = max.w / 3
    f.h = max.h / 3
    win:setFrame(f)
end)

-- 3/9
hs.hotkey.bind({"ctrl", "alt"}, "3", "3/9", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + (max.w / 3) * 2
    f.y = max.y
    f.w = max.w / 3
    f.h = max.h / 3
    win:setFrame(f)
end)

-- 4/9
hs.hotkey.bind({"ctrl", "alt"}, "4", "4/9", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x
    f.y = max.y + (max.h / 3)
    f.w = max.w / 3
    f.h = max.h / 3
    win:setFrame(f)
end)

-- 5/9
hs.hotkey.bind({"ctrl", "alt"}, "5", "5/9", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + (max.w / 3)
    f.y = max.y + (max.h / 3)
    f.w = max.w / 3
    f.h = max.h / 3
    win:setFrame(f)
end)

-- 6/9
hs.hotkey.bind({"ctrl", "alt"}, "6", "6/9", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + (max.w / 3) * 2
    f.y = max.y + (max.h / 3)
    f.w = max.w / 3
    f.h = max.h / 3
    win:setFrame(f)
end)

-- 7/9
hs.hotkey.bind({"ctrl", "alt"}, "7", "7/9", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x
    f.y = max.y + (max.h / 3) * 2
    f.w = max.w / 3
    f.h = max.h / 3
    win:setFrame(f)
end)

-- 8/9
hs.hotkey.bind({"ctrl", "alt"}, "8", "8/9", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + (max.w / 3)
    f.y = max.y + (max.h / 3) * 2
    f.w = max.w / 3
    f.h = max.h / 3
    win:setFrame(f)
end)

-- 9/9
hs.hotkey.bind({"ctrl", "alt"}, "9", "9/9", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + (max.w / 3) * 2
    f.y = max.y + (max.h / 3) * 2
    f.w = max.w / 3
    f.h = max.h / 3
    win:setFrame(f)
end)

-- 左 1/3（横屏）或上 1/3（竖屏）
hs.hotkey.bind({"ctrl", "alt"}, "D", "Left 1/3(Horizontal screen) Or Top 1/3(Vertical screen)", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()
    -- 如果为竖屏
    if (isVerticalScreen(screen)) then
        f.x = max.x
        f.y = max.y
        f.w = max.w
        f.h = max.h / 3
        -- 如果为横屏
    else
        f.x = max.x
        f.y = max.y
        f.w = max.w / 3
        f.h = max.h
    end
    win:setFrame(f)
end)

-- 中 1/3
hs.hotkey.bind({"ctrl", "alt"}, "F", "Middle 1/3", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()
    -- 如果为竖屏
    if (isVerticalScreen(screen)) then
        f.x = max.x
        f.y = max.y + (max.h / 3)
        f.w = max.w
        f.h = max.h / 3
        -- 如果为横屏
    else
        f.x = max.x + (max.w / 3)
        f.y = max.y
        f.w = max.w / 3
        f.h = max.h
    end
    win:setFrame(f)
end)

-- 右 1/3（横屏）或下 1/3（竖屏）
hs.hotkey.bind({"ctrl", "alt"}, "G", "Right 1/3(Horizontal screen)Or Bottom 1/3(Vertical screen)", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()
    -- 如果为竖屏
    if (isVerticalScreen(screen)) then
        f.x = max.x
        f.y = max.y + (max.h / 3 * 2)
        f.w = max.w
        f.h = max.h / 3
        -- 如果为横屏
    else
        f.x = max.x + (max.w / 3 * 2)
        f.y = max.y
        f.w = max.w / 3
        f.h = max.h
    end
    win:setFrame(f)
end)

-- 左 2/3（横屏）或上 2/3（竖屏）
hs.hotkey.bind({"ctrl", "alt"}, "E", "Left 2/3(Horizontal screen) Or Top 2/3(Vertical screen)", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()
    -- 如果为竖屏
    if (isVerticalScreen(screen)) then
        f.x = max.x
        f.y = max.y
        f.w = max.w
        f.h = max.h / 3 * 2
        -- 如果为横屏
    else
        f.x = max.x
        f.y = max.y
        f.w = max.w / 3 * 2
        f.h = max.h
    end
    win:setFrame(f)
end)

-- 右 2/3（横屏）或下 2/3（竖屏）
hs.hotkey.bind({"ctrl", "alt"}, "T", "Right 2/3(Horizontal screen)Or Bottom 2/3(Vertical screen)", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()
    -- 如果为竖屏
    if (isVerticalScreen(screen)) then
        f.x = max.x
        f.y = max.y + (max.h / 3)
        f.w = max.w
        f.h = max.h / 3 * 2
        -- 如果为横屏
    else
        f.x = max.x + (max.w / 3)
        f.y = max.y
        f.w = max.w / 3 * 2
        f.h = max.h
    end
    win:setFrame(f)
end)

-- 判断指定屏幕是否为竖屏
function isVerticalScreen(screen)
    if (screen:rotate() == 90 or screen:rotate() == 270) then
        return true
    else
        return false
    end
end

-- 居中
hs.hotkey.bind({"ctrl", "alt"}, "C", "Center", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + (max.w / 4)
    f.y = max.y + (max.h / 4)
    f.w = max.w / 2
    f.h = max.h / 2
    win:setFrame(f)
end)

-- 等比例放大窗口
hs.hotkey.bind({"ctrl", "alt"}, "=", "Zoom Window", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.w = f.w + 40
    f.h = f.h + 40
    f.x = f.x - 20
    f.y = f.y - 20
    if (f.x < max.x) then
        f.x = max.x
    end
    if (f.y < max.y) then
        f.y = max.y
    end
    if (f.w > max.w) then
        f.w = max.w
    end
    if (f.h > max.h) then
        f.h = max.h
    end
    win:setFrame(f)
end)

-- 等比例缩小窗口
hs.hotkey.bind({"ctrl", "alt"}, "-", "Narrow Window", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    f.w = f.w - 40
    f.h = f.h - 40
    f.x = f.x + 20
    f.y = f.y + 20
    win:setFrame(f)
end)

-- 最大化
hs.hotkey.bind({"ctrl", "alt"}, "Return", "Max Window", function()
    local win = hs.window.focusedWindow()
    win:maximize()
end)

-- 主屏副屏之间的窗口移动（适用于主屏物理位置在右，副屏物理位置在左的显示器摆放布局，若不是该布局，则在系统偏好设置 -> 显示器 -> 排列下，将白色的条块拖动到右边的显示器顶部）
-- 主屏窗口移动到副屏
hs.hotkey.bind({"ctrl", "alt", "cmd"}, "Left", "Move To Left Screen", function()
    local win = hs.window.focusedWindow()
    if (win) then
        win:moveToScreen(main_monitor)
    end
end)

-- 副屏窗口移动到主屏
hs.hotkey.bind({"ctrl", "alt", "cmd"}, "Right", "Move To Right Screen", function()
    local win = hs.window.focusedWindow()
    if (win) then
        win:moveToScreen(second_monitor)
    end
end)

