hs.loadSpoon("SpoonInstall")

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
spoon.SpoonInstall:andUse("KSheet", { repo = "default" })

spoon.KSheet:bindHotkeys({
	toggle = { { "ctrl", "alt" }, "/" },
})

-- spoon.SpoonInstall:andUse("SpeedMenu", { repo = "default" })
-- spoon.SpoonInstall:andUse("ReloadConfiguration", { repo = "default" })
-- spoon.KSheet:bindHotkeys({
-- 	start = { { "ctrl", "alt" }, "r" },
-- })
