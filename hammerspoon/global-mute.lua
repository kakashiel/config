-- https://github.com/cmaahs/global-mute-spoon
local hyper = { "ctrl", "alt", "cmd" }
local lesshyper = { "ctrl", "alt" }

hs.loadSpoon("GlobalMute")
spoon.GlobalMute:bindHotkeys({
	-- unmute = {lesshyper, "u"},
	-- mute   = {lesshyper, "m"},
	toggle = { lesshyper, "m" },
})
spoon.GlobalMute:configure({
	unmute_background = "file:///Library/Desktop%20Pictures/Solid%20Colors/Red%20Orange.png",
	mute_background = "file:///Library/Desktop%20Pictures/Solid%20Colors/Turquoise%20Green.png",
	enforce_desired_state = true,
	stop_sococo_for_zoom = true,
	unmute_title = "",
	mute_title = "",
	-- change_screens = "SCREENNAME1, SCREENNAME2"  -- This will only change the background of the specific screens.  string.find()
})
spoon.GlobalMute._logger.level = 0
