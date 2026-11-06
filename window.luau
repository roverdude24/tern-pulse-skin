--!nonstrict
local skins = require("./skins")

-- Tern has no theme-change event, so the window checks the kept dark theme on a short poll.
local POLL_MS = 1500
local applied = nil

-- The toggle, in order: label, theme. OFF goes back to the last non-PULSE dark theme.
local CHOICES = {
	{ id = "amber", label = "AMBER", theme = "dark-pulse-amber" },
	{ id = "lcars", label = "LCARS", theme = "dark-pulse-lcars" },
	{ id = "neon", label = "NEON", theme = "dark-pulse-neon" },
}
local FALLBACK = "dark-gruvbox"

local function sync(cx)
	local name = cx.settings:get("theme_dark")
	local css = skins[name]
	if not css and name then tern.kv.set("previous-theme", name) end
	local key = css and name or false
	if key == applied then return end
	applied = key
	tern.css("skin", css or "")
	tern.chrome.refresh()
end

local function use(cx, theme)
	cx.settings:set("theme_dark", theme)
	sync(cx)
end

for _, c in CHOICES do
	tern.command({ id = c.id, title = "PULSE skin: " .. c.label, icon = "palette", run = function(cx) use(cx, c.theme) end })
end
tern.command({ id = "off", title = "PULSE skin: Off", icon = "palette", run = function(cx)
	use(cx, tern.kv.get("previous-theme") or FALLBACK)
end })

-- The toggle lives in the status line (the only clickable chrome plugins get); the skin's CSS pins it into the top bar.
tern.chrome.status(function()
	local segs = {}
	for _, c in CHOICES do
		table.insert(segs, {
			text = c.label,
			tone = applied == c.theme and "accent" or "muted",
			command = "plugin.pulse-skin." .. c.id,
		})
	end
	table.insert(segs, { text = "OFF", tone = applied and "muted" or "accent", command = "plugin.pulse-skin.off" })
	return segs
end)

local function tick(cx)
	if cx then sync(cx) end
	tern.timer(POLL_MS, tick)
end

-- A plugin reload skips window_start, so the poll starts when the VM loads; window_start only skins a new window at once.
tern.timer(0, tick)
tern.on("window_start", sync)
