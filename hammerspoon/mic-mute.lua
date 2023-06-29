-- https://github.com/cmaahs/global-mute-spoon
local hyper = { "ctrl", "alt", "cmd" }
local lesshyper = { "ctrl", "alt" }

hs.loadSpoon("MicMute")
spoon.MicMute:bindHotkeys({
	-- unmute = {lesshyper, "u"},
	-- mute   = {lesshyper, "m"},
	toggle = { lesshyper, "m" },
})
