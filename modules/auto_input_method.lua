local function Chinese()
    hs.keycodes.currentSourceID("com.apple.inputmethod.SCIM.ITABC")
end
local function English()
    hs.keycodes.currentSourceID("com.apple.keylayout.ABC")
end

-- app to expected ime config
local app2Ime = {
    {'/System/Library/CoreServices/Finder.app', 'Chinese'},
    {'/System/Library/CoreServices/Spotlight.app', 'English'},
    {'/System/Applications/Utilities/Terminal.app', 'English'},
    {'/System/Applications/Notes.app', 'Chinese'},
    {'/System/Applications/System Preferences.app', 'Chinese'},
    {'/Applications/Visual Studio Code.app', 'English'},
    {'/Applications/intelliJ IDEA.app', 'English'},
    {'/Applications/DataGrip.app', 'English'},
    {'/Applications/Safari.app', 'Chinese'},
    {'/Applications/Google Chrome.app', 'English'},
    {'/Applications/WeChat.app', 'Chinese'},
    {'/Applications/QQ.app', 'Chinese'},
    {'/Applications/Skype.app', 'Chinese'},
    {'/Applications/Telegram.app', 'Chinese'},

}

function updateFocusAppInputMethod()
    local focusAppPath = hs.window.frontmostWindow():application():path()
    for index, app in pairs(app2Ime) do
        local appPath = app[1]
        local expectedIme = app[2]

        if focusAppPath == appPath then
            if expectedIme == 'English' then
                English()
            else
                Chinese()
            end
            break
        end
    end
end

-- Handle cursor focus and application's screen manage.
function applicationWatcher(appName, eventType, appObject)
    if (eventType == hs.application.watcher.activated or eventType == hs.application.watcher.launched) then
        updateFocusAppInputMethod()
    end
end

appWatcher = hs.application.watcher.new(applicationWatcher)
appWatcher:start()
