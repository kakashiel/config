--/!\ Call init-xxx because otherwise loop on shiftit name
-------------------------------
-- START Window Management
-------------------------------
spoon.SpoonInstall.repos.ShiftIt = {
	url = "https://github.com/peterklijn/hammerspoon-shiftit",
	desc = "ShiftIt spoon repository",
	branch = "master",
}

spoon.SpoonInstall:andUse("ShiftIt", { repo = "ShiftIt" })

spoon.ShiftIt:bindHotkeys({
	left = { { "ctrl", "alt" }, "left" },
	right = { { "ctrl", "alt" }, "right" },
	up = { { "ctrl", "alt" }, "up" },
	down = { { "ctrl", "alt" }, "down" },
	upleft = { { "ctrl", "alt" }, "u" },
	upright = { { "ctrl", "alt" }, "i" },
	botleft = { { "ctrl", "alt" }, "j" },
	botright = { { "ctrl", "alt" }, "k" },
	maximum = { { "ctrl", "alt" }, "return" },
	toggleFullScreen = { { "ctrl", "alt" }, "f" },
	toggleZoom = { { "ctrl", "alt" }, "z" },
	center = { { "ctrl", "alt" }, "c" },
	nextScreen = { { "ctrl", "alt" }, "n" },
	previousScreen = { { "ctrl", "alt" }, "p" },
	resizeOut = { { "ctrl", "alt" }, "=" },
	resizeIn = { { "ctrl", "alt" }, "-" },
})

-------------------------------
-- END Window Management
-------------------------------
