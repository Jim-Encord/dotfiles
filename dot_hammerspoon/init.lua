#Derived from: https://clux.dev/post/2023-10-01-drop-down-terminal/
local function toggleApp(name)
  local app = hs.application.find(name)
  if not app or app:isHidden() then
    hs.application.launchOrFocus(name)
  elseif hs.application.frontmostApplication() ~= app then
    app:activate()
  else
    app:hide()
  end
end

-- Global terminal toggle
hs.hotkey.bind({"alt"}, "§", function() toggleApp("alacritty") end)

