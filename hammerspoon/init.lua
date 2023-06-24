hs.hotkey.bind({}, "F12", function()
	local app = hs.application.get("kitty")

	if app then
		if not app:mainWindow() then
			app:selectMenuItem({ "kitty", "New OS window" })
		elseif app:isFrontmost() then
			app:hide()
		else
			app:activate()
		end
	else
		hs.application.launchOrFocus("kitty")
		app = hs.application.get("kitty")
	end

	app:mainWindow():moveToUnit("[100,50,0,0]")
	app:mainWindow().setShadows(false)
end)

hs.hotkey.bind({ "ctrl" }, "space", function()
	local app = hs.application.get("kitty")
	if app then
		if not app:mainWindow() then
			hs.alert.show("new")
			app:selectMenuItem({ "kitty", "New OS window" })
		elseif app:isFrontmost() then
			app:hide()
			hs.alert.show("hide")
		else
			app:activate()
			hs.alert.show("active")
		end
	else
		hs.application.launchOrFocus("kitty")
	end
end)

hs.hotkey.bind({ "cmd", "alt", "ctrl" }, "W", function() end)

-- https://github.com/dbalatero/VimMode.spoon#quick-installation
--------------------------------
-- START VIM CONFIG
--------------------------------
local VimMode = hs.loadSpoon("VimMode")
local vim = VimMode:new()

-- Configure apps you do *not* want Vim mode enabled in
-- For example, you don't want this plugin overriding your control of Terminal
-- vim
vim:disableForApp("Code")
	:disableForApp("zoom.us")
	:disableForApp("iTerm")
	:disableForApp("iTerm2")
	:disableForApp("Terminal")
	:disableForApp("kitty")

-- If you want the screen to dim (a la Flux) when you enter normal mode
-- flip this to true.
vim:shouldDimScreenInNormalMode(false)

-- If you want to show an on-screen alert when you enter normal mode, set
-- this to true
vim:shouldShowAlertInNormalMode(true)

-- You can configure your on-screen alert font
vim:setAlertFont("Courier New")

-- Enter normal mode by typing a key sequence
vim:enterWithSequence("jk")

-- if you want to bind a single key to entering vim, remove the
-- :enterWithSequence('jk') line above and uncomment the bindHotKeys line
-- below:
--
-- To customize the hot key you want, see the mods and key parameters at:
--   https://www.hammerspoon.org/docs/hs.hotkey.html#bind
--
-- vim:bindHotKeys({ enter = { {'ctrl'}, ';' } })

--------------------------------
-- END VIM CONFIG
--------------------------------
