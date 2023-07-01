hs.loadSpoon("SpoonInstall")
HYPER = { "ctrl", "alt", "cmd" }
LESS_HYPER = { "ctrl", "alt" }

--------------------------------
--MINE
--------------------------------
hs.loadSpoon("kitty") -- Terminal
require("alttab") -- Alt+Tab replacement
require("reload")
require("init-shiftit")
require("vim-mode")
require("mic-mute")
require("deepL-translate")
-- require("global-mute")
--
-- require("teams-toggle-mute")
-- require("tunnelblick")
--
--
--

--------------------------------
-- Start Cheatseat
--------------------------------
spoon.SpoonInstall:andUse("KSheet", { repo = "default" })

spoon.KSheet:bindHotkeys({
	toggle = { LESS_HYPER, "/" },
})
--------------------------------
-- End Cheatseat
--------------------------------

--------------------------------
-- Start Pomodor
--------------------------------
spoon.SpoonInstall:andUse(
	"Cherry",
	{
		repo = "default",
		config = {
			duration = 1,
			notification = hs.notify.new({ title = "Done! 🍒", withdrawAfter = 5 }),
			sound = hs.sound.getByFile(
				"System/Library/PrivateFrameworks/ScreenReader.framework/Versions/A/Resources/Sounds"
			),
		},
	}
)

spoon.Cherry:bindHotkeys({
	start = { HYPER, "p" },
})
--------------------------------
-- End Cheatseat
--------------------------------
--
--------------------------------
-- Start ReloadConfiguration
--------------------------------
spoon.SpoonInstall:andUse("ReloadConfiguration", { repo = "default" })
spoon.KSheet:bindHotkeys({
	-- reloadConfiguration = { HYPER, "r" },
})
--------------------------------
-- End ReloadConfiguration
--------------------------------
--
--------------------------------
-- Start Calendar
--------------------------------
spoon.SpoonInstall:andUse("Calendar", { repo = "default" })
--------------------------------
-- End Calendar
--------------------------------

--------------------------------
-- Start ClipboardTool
--------------------------------
spoon.SpoonInstall:andUse("ClipboardTool", {
	repo = "default",
	config = {
		-- menubar_title = "🍒"
	},
})
spoon.ClipboardTool:bindHotkeys({
	show_clipboard = { HYPER, "c" },
	toggle_clipboard = { HYPER, "v" },
})
--------------------------------
-- End ClipboardTool
--------------------------------
--
-- spoon.SpoonInstall:andUse("SpeedMenu", { repo = "default" })
