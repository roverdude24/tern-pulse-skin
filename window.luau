--!nonstrict
local skins = require("./skins")

-- Tern has no theme-change event, so the window checks the kept dark theme on a short poll.
local POLL_MS = 1500
local applied = nil

local function sync(cx)
	local name = cx.settings:get("theme_dark")
	local css = skins[name]
	local key = css and name or false
	if key == applied then return end
	applied = key
	tern.css("skin", css or "")
end

local function tick(cx)
	if cx then sync(cx) end
	tern.timer(POLL_MS, tick)
end

-- A plugin reload skips window_start, so the poll starts when the VM loads; window_start only skins a new window at once.
tern.timer(0, tick)
tern.on("window_start", sync)
