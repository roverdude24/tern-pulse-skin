--!strict
-- PULSE skins: the design's tokens (generated from B_APP/design themes/tokens.json, locked r2b), mapped onto
-- Tern's shared tokens and surface kit, plus each theme's decoration layer.
local common = [==[
/* Tern's shared tokens, retinted to the PULSE tokens: every Tern surface and every plugin drawing with them follows. */
html,html.glass,html.clear,html.solid{
--page:var(--pk-bg-window)!important;--panel:var(--pk-bg-panel)!important;--card:var(--pk-bg-panel-2)!important;
--raise:var(--pk-bg-row)!important;--fog:var(--pk-bg-panel)!important;--cv-base:var(--pk-bg-window)!important;
--pop-bg:var(--pk-bg-float)!important;--modal-bg:var(--pk-bg-float)!important;--xp-bg:var(--pk-bg-float)!important;
--tile-a:var(--pk-bg-panel)!important;--tile-b:var(--pk-bg-panel)!important;--code-bg:var(--pk-bg-sunken)!important;
--tbl-head:var(--pk-bg-panel-2)!important;--well:var(--pk-bg-field)!important;--chip-bg:var(--pk-bg-row)!important;
--topbar-bg:var(--pk-bg-window)!important;--glass-hi:transparent!important;
--l1:var(--pk-line)!important;--l2:var(--pk-line)!important;--l3:var(--pk-line-strong)!important;--l4:var(--pk-line-strong)!important;
--well-line:var(--pk-line)!important;--sheet-rim:linear-gradient(var(--pk-line-strong),var(--pk-line-strong))!important;
--sheet-in:none!important;--sheet-drop:0 0 0 1px var(--pk-line-strong)!important;--modal-filter:none!important;--dim:rgba(0,0,0,.6)!important;
--t1:var(--pk-tx)!important;--t2:var(--pk-tx-2)!important;--t3:var(--pk-tx-3)!important;--t4:var(--pk-tx-4)!important;
--ink:var(--pk-tx)!important;--ink2:var(--pk-tx-2)!important;--ink3:var(--pk-tx-3)!important;--ink4:var(--pk-line)!important;
--accent:var(--pk-accent)!important;--accent-ink:var(--pk-accent-tx)!important;--accent-fill:var(--pk-accent)!important;
--a1:var(--pk-accent)!important;--a2:var(--pk-accent)!important;--grad:linear-gradient(var(--pk-accent),var(--pk-accent))!important;
--grad-ink:var(--pk-on-accent)!important;--rail:var(--pk-accent)!important;
--ok:var(--pk-success)!important;--warn:var(--pk-warning)!important;--bad:var(--pk-danger)!important;--live:var(--pk-info)!important;
--sans:var(--pk-f-ui)!important;--mono:var(--pk-f-mono)!important;
--r-chip:var(--pk-r-sm)!important;--r-ctl:var(--pk-r-sm)!important;--r-card:var(--pk-r-md)!important;--r-panel:var(--pk-r-md)!important;
}
body{background:var(--pk-bg-window)}

/* Top bar: tabs are the design's tabs (folder tab, pill or underline per theme). */
#tabbar{background:var(--pk-bg-window);box-shadow:inset 0 -1px 0 var(--pk-line)}
#tabbar .tt,#tabbar .tn-session-tab .nm{font-family:var(--pk-f-label);text-transform:var(--pk-lbl-case);letter-spacing:var(--pk-lbl-track);font-weight:var(--pk-fw-label);font-size:11px}
#tabbar .tt,#tabbar .tt .tx{color:var(--pk-tab-tx)}
#tabbar .tt{background:var(--pk-tab-bg);border-radius:var(--pk-tab-r)}
#tabbar .tt.on{--t1:var(--pk-tab-on-tx);--t2:var(--pk-tab-on-tx);color:var(--pk-tab-on-tx)!important;background:var(--pk-tab-on-bg);box-shadow:var(--pk-tab-on-edge)}
#tabbar .tt.on .tx{color:var(--pk-tab-on-tx)!important}
/* A working tab's name shimmers between --sh-lo and --t1; keep that shimmer in the tab's own ink. */
#tabbar .tt.on .nm{--sh-lo:color-mix(in srgb,var(--pk-tab-on-tx) 55%,var(--pk-tab-on-bg))}
#tabbar .tb-pill,#tabbar .tb-fill{background:transparent!important;box-shadow:none!important;border:0!important}
#tabbar .icon-btn{color:var(--pk-tx-3)}

/* Status bar */
#statusline{background:var(--pk-bg-sunken);box-shadow:inset 0 1px 0 var(--pk-line);color:var(--pk-tx-3);font-family:var(--pk-f-ui);font-size:11px}

/* Panes: the design's panel: flat, 1 px edge, labelled header with a rule. */
.tn-stage .tn-pane{background:var(--pk-bg-panel)}
.tn-stage .tn-pane::after{content:"";position:absolute;inset:0;pointer-events:none;z-index:60;box-shadow:inset 0 0 0 1px var(--pk-panel-edge)}
.tn-stage .tn-pane.on::after{box-shadow:inset 0 0 0 1px var(--pk-line-strong)}
.tn-head{height:32px;background:var(--pk-hdr-bg);box-shadow:inset 0 calc(-1 * var(--pk-hdr-rule-w)) 0 var(--pk-hdr-rule);padding-left:14px;color:var(--pk-tx-3)}
.tn-head .tn-title{font-family:var(--pk-f-label);text-transform:var(--pk-lbl-case);letter-spacing:var(--pk-lbl-track);font-weight:var(--pk-fw-label);font-size:11.5px;color:var(--pk-tx-3)}
.tn-pane.on .tn-head .tn-title{color:var(--pk-hdr-tx)}
.tn-stage .tn-pane.headed.multi:is(.on,.was) .tn-head::before{background:var(--pk-hdr-rule);height:var(--pk-hdr-rule-w);top:auto;bottom:0;opacity:1}
.tn-size,.tn-cwd{font-family:var(--pk-f-mono);color:var(--pk-tx-4)}

/* Blocks and plugin canvases (any plugin: Tern's surface kit, not the plugin's own CSS). */
.sf-region{font-family:var(--pk-f-ui)}
.sf-button{border-radius:var(--pk-btn-r)!important;background:var(--pk-btn-bg)!important;color:var(--pk-btn-tx)!important;box-shadow:var(--pk-btn-edge)!important}
.sf-button:not(.only-ic){font-family:var(--pk-f-label);text-transform:var(--pk-lbl-case);letter-spacing:var(--pk-lbl-track);font-weight:var(--pk-fw-label)}
.sf-button.only-ic{background:transparent!important;box-shadow:none!important;color:var(--pk-tx-3)!important}
.sf-button[data-variant='primary'],.sf-buttons > .sf-button[data-variant='primary']{background:var(--pk-accent)!important;color:var(--pk-on-accent)!important;box-shadow:none!important}
.sf-button.on,.sf-buttons > .sf-button.on{background:var(--pk-seg-on-bg)!important;color:var(--pk-seg-on-tx)!important}
.sf-chip,.sf-badge,.sv-badge{border-radius:var(--pk-chip-r)!important;background:var(--pk-chip-bg)!important;box-shadow:var(--pk-chip-edge)!important;font-family:var(--pk-f-mono)}
.sf-act:hover{background:var(--pk-bg-row)}
.sf-tool.card{border-radius:var(--pk-r-md)!important;background:var(--pk-bg-panel-2)!important;box-shadow:inset 0 0 0 1px var(--pk-line)!important}

/* Palette, menus, popovers, prefs */
#pal .cmdk,.pf.sheet{background:var(--pk-bg-float)!important;box-shadow:0 0 0 1px var(--pk-line-strong)!important;border-radius:var(--pk-r-md)!important}
#pal .ck-group{font-family:var(--pk-f-label);text-transform:var(--pk-lbl-case);letter-spacing:var(--pk-lbl-track);color:var(--pk-tx-label)}
#pal .ck-item[aria-selected='true']{background:var(--pk-bg-row-hi)!important;box-shadow:inset 2px 0 0 var(--pk-accent)}
.icon-btn.on{color:var(--pk-accent-tx)!important}
]==]

return {
	["dark-pulse-amber"] = [==[html,html.glass,html.clear,html.solid{
--pk-bg-window:#0A0704;
--pk-bg-panel:#0D0905;
--pk-bg-panel-2:#110C06;
--pk-bg-row:#1C1309;
--pk-bg-row-hi:#24180B;
--pk-bg-field:#160F07;
--pk-bg-sunken:#060402;
--pk-bg-float:#1E140A;
--pk-tx:#FFB45C;
--pk-tx-2:#E89848;
--pk-tx-3:#C27E3E;
--pk-tx-4:#9A642F;
--pk-tx-label:#E89848;
--pk-tx-value:#FFB45C;
--pk-on-accent:#0A0704;
--pk-line:#4A2E15;
--pk-line-strong:#8A5427;
--pk-accent:#FF7A1A;
--pk-accent-hover:#FF9240;
--pk-accent-dim:#3A1E0A;
--pk-accent-tx:#FF9A4A;
--pk-focus:#FFD9A0;
--pk-success:#FFC870;
--pk-warning:#FFD98A;
--pk-danger:#FF5533;
--pk-info:#E8C690;
--pk-tab-bg:transparent;
--pk-tab-tx:var(--pk-tx-3);
--pk-tab-on-bg:var(--pk-bg-panel);
--pk-tab-on-tx:var(--pk-tx);
--pk-tab-on-edge:inset 1px 0 0 var(--pk-line-strong),inset -1px 0 0 var(--pk-line-strong),inset 0 1px 0 var(--pk-line-strong);
--pk-tab-r:0px;
--pk-cap-mix:0%;
--pk-cap-1:var(--pk-tx);
--pk-cap-2:var(--pk-tx);
--pk-cap-3:var(--pk-tx);
--pk-cap-4:var(--pk-tx);
--pk-node-hd-mix:0%;
--pk-seg-on-bg:var(--pk-tx);
--pk-seg-on-tx:var(--pk-on-accent);
--pk-seg-item-bg:transparent;
--pk-seg-tx:var(--pk-tx-3);
--pk-seg-edge:inset 0 0 0 1px var(--pk-line-strong);
--pk-chip-bg:transparent;
--pk-chip-edge:inset 0 0 0 1px var(--pk-line);
--pk-chip-on-bg:var(--pk-tx);
--pk-chip-on-tx:var(--pk-on-accent);
--pk-chip-on-edge:none;
--pk-chip-r:0px;
--pk-btn-bg:transparent;
--pk-btn-tx:var(--pk-tx);
--pk-btn-edge:inset 0 0 0 1px var(--pk-line-strong);
--pk-btn-r:0px;
--pk-hdr-bg:transparent;
--pk-hdr-tx:var(--pk-tx);
--pk-hdr-rule-w:1px;
--pk-hdr-rule:var(--pk-line);
--pk-hdr-cap:transparent;
--pk-panel-edge:var(--pk-line);
--pk-sect-hdr-bg:transparent;
--pk-sect-hdr-tx:var(--pk-tx);
--pk-prop-bg:transparent;
--pk-progress-fill:#FFB45C;
--pk-meter-r:0px;
--pk-node-hd-bg:#1C1309;
--pk-node-hd-tx:var(--pk-tx);
--pk-node-edge:0 0 0 1px var(--pk-line-strong);
--pk-ng-grid:#1A1008;
--pk-syn-kw:#FFD9A0;
--pk-syn-str:#E8C690;
--pk-syn-num:#FF9A4A;
--pk-syn-com:#C08A55;
--pk-syn-fn:#FFB45C;
--pk-diff-add-bg:#2A1C08;
--pk-diff-del-bg:#2E0E06;
--pk-diff-add-tx:#FFC870;
--pk-diff-del-tx:#FF7A5C;
--pk-f-ui:"IBM Plex Mono",ui-monospace,Menlo,monospace;
--pk-f-mono:"IBM Plex Mono",ui-monospace,Menlo,monospace;
--pk-f-pixel:"Departure Mono","IBM Plex Mono",ui-monospace,monospace;
--pk-f-cond:"IBM Plex Sans Condensed","IBM Plex Mono",sans-serif;
--pk-f-label:var(--pk-f-pixel);
--pk-fw-label:400;
--pk-lbl-case:uppercase;
--pk-lbl-track:.06em;
--pk-r-sm:0px;
--pk-r-md:0px;
--pk-r-lg:0px;
--pk-r-pill:0px;
--pk-glow-rgb:255 140 40;
--pk-fx-scan-alpha:.16;
--pk-fx-glow-radius:8px;
--pk-fx-glow-alpha:.40;
--pk-fx-flicker-amp:.035;
--pk-fx-bloom-text:5px;
--pk-d-crosses:block;
--pk-d-labelbar:block;
--pk-d-brackets:none;
--pk-d-elbow:none;
--pk-d-segbars:none;
--pk-d-scan-bar:block;
--pk-d-scan-panel:none;
--pk-d-flicker:block;
}]==] .. common .. [==[
/* Amber Phosphor: square everything, scanlines on the bars, crosses at panel corners, checker label bar. */
*{border-radius:0!important}
#tabbar::after,#statusline::after{content:"";position:absolute;inset:0;pointer-events:none;z-index:6;background:repeating-linear-gradient(0deg,rgba(0,0,0,.16) 0 1px,transparent 1px 3px)}
#tabbar,#statusline{position:relative}
.tn-stage .tn-pane::after{--c:var(--pk-tx-3);box-shadow:inset 0 0 0 1px var(--pk-panel-edge);background:
linear-gradient(var(--c),var(--c)) 0 4px/9px 1px no-repeat,linear-gradient(var(--c),var(--c)) 4px 0/1px 9px no-repeat,
linear-gradient(var(--c),var(--c)) 100% 4px/9px 1px no-repeat,linear-gradient(var(--c),var(--c)) calc(100% - 4px) 0/1px 9px no-repeat,
linear-gradient(var(--c),var(--c)) 0 calc(100% - 4px)/9px 1px no-repeat,linear-gradient(var(--c),var(--c)) 4px 100%/1px 9px no-repeat,
linear-gradient(var(--c),var(--c)) 100% calc(100% - 4px)/9px 1px no-repeat,linear-gradient(var(--c),var(--c)) calc(100% - 4px) 100%/1px 9px no-repeat}
.tn-head::after{content:"";position:absolute;left:0;top:0;bottom:0;width:4px;pointer-events:none;background:repeating-linear-gradient(45deg,var(--pk-tx) 0 1px,transparent 1px 2px)}
]==],
	["dark-pulse-lcars"] = [==[html,html.glass,html.clear,html.solid{
--pk-bg-window:#000000;
--pk-bg-panel:#000000;
--pk-bg-panel-2:#0B090B;
--pk-bg-row:#1A1418;
--pk-bg-row-hi:#241C22;
--pk-bg-field:#221A20;
--pk-bg-sunken:#0B0A0C;
--pk-bg-float:#141016;
--pk-tx:#FFE3C4;
--pk-tx-2:#D9B3D9;
--pk-tx-3:#A7A0D8;
--pk-tx-4:#7A7399;
--pk-tx-label:#D9B3D9;
--pk-tx-value:#FFE3C4;
--pk-on-accent:#000000;
--pk-line:#2E242C;
--pk-line-strong:#7A6878;
--pk-accent:#FFCC33;
--pk-accent-hover:#FFDA66;
--pk-accent-dim:#2E2408;
--pk-accent-tx:#FFCC33;
--pk-focus:#FFE3C4;
--pk-success:#99DD88;
--pk-warning:#FFCC66;
--pk-danger:#FF6655;
--pk-info:#9999FF;
--pk-peach:#FF9966;
--pk-lilac:#CC99CC;
--pk-salmon:#E8806E;
--pk-peri:#9999FF;
--pk-gold:#FFCC66;
--pk-tan:#C9A27E;
--pk-tab-bg:transparent;
--pk-tab-tx:var(--pk-tx-2);
--pk-tab-on-bg:var(--pk-peach);
--pk-tab-on-tx:#000;
--pk-tab-on-edge:none;
--pk-tab-r:999px;
--pk-cap-mix:100%;
--pk-cap-1:var(--pk-peach);
--pk-cap-2:var(--pk-lilac);
--pk-cap-3:var(--pk-peri);
--pk-cap-4:var(--pk-salmon);
--pk-node-hd-mix:100%;
--pk-seg-on-bg:var(--pk-peach);
--pk-seg-on-tx:#000;
--pk-seg-item-bg:var(--pk-lilac);
--pk-seg-tx:#000;
--pk-seg-edge:none;
--pk-chip-bg:var(--pk-bg-row);
--pk-chip-edge:none;
--pk-chip-on-bg:var(--pk-lilac);
--pk-chip-on-tx:#000;
--pk-chip-on-edge:none;
--pk-chip-r:999px;
--pk-btn-bg:var(--pk-peri);
--pk-btn-tx:#000;
--pk-btn-edge:none;
--pk-btn-r:999px;
--pk-hdr-bg:transparent;
--pk-hdr-rule-w:2px;
--pk-hdr-tx:var(--pk-peach);
--pk-hdr-rule:var(--pk-peach);
--pk-hdr-cap:var(--pk-peach);
--pk-panel-edge:#1A1418;
--pk-sect-hdr-bg:var(--pk-salmon);
--pk-sect-hdr-tx:#000;
--pk-prop-bg:#120E12;
--pk-meter-track:#1A1418;
--pk-meter-fill:#9999FF;
--pk-progress-fill:#99DD88;
--pk-meter-r:4px;
--pk-node-hd-bg:#9999FF;
--pk-node-hd-tx:#000;
--pk-node-edge:0 0 0 1px #3A2E38;
--pk-ng-grid:#161216;
--pk-syn-kw:#CC99CC;
--pk-syn-str:#FFCC99;
--pk-syn-num:#FF9966;
--pk-syn-com:#8A82B8;
--pk-syn-fn:#9999FF;
--pk-diff-add-bg:#13220F;
--pk-diff-del-bg:#2A0F0C;
--pk-diff-add-tx:#99DD88;
--pk-diff-del-tx:#FF8877;
--pk-f-ui:"IBM Plex Sans Condensed","IBM Plex Mono",sans-serif;
--pk-f-mono:"IBM Plex Mono",ui-monospace,Menlo,monospace;
--pk-f-pixel:"Departure Mono","IBM Plex Mono",ui-monospace,monospace;
--pk-f-cond:"IBM Plex Sans Condensed","IBM Plex Mono",sans-serif;
--pk-f-label:var(--pk-f-cond);
--pk-fw-label:600;
--pk-lbl-case:uppercase;
--pk-lbl-track:.06em;
--pk-r-sm:8px;
--pk-r-md:12px;
--pk-r-lg:0px;
--pk-r-pill:999px;
--pk-glow-rgb:255 204 51;
--pk-fx-scan-alpha:0;
--pk-fx-glow-radius:0px;
--pk-fx-glow-alpha:0;
--pk-fx-flicker-amp:0;
--pk-fx-bloom-text:0px;
--pk-d-crosses:none;
--pk-d-labelbar:none;
--pk-d-brackets:none;
--pk-d-elbow:block;
--pk-d-segbars:none;
--pk-d-scan-bar:none;
--pk-d-scan-panel:none;
--pk-d-flicker:none;
}]==] .. common .. [==[
/* LCARS Deck: pills, a four-colour band under the top bar, a half-pill end cap on every header. */
#tabbar{box-shadow:none;position:relative}
#tabbar::after{content:"";position:absolute;left:0;right:0;bottom:0;height:5px;pointer-events:none;background:linear-gradient(90deg,
var(--pk-peach) 0 34%,transparent 34% calc(34% + 4px),var(--pk-lilac) calc(34% + 4px) 60%,transparent 60% calc(60% + 4px),
var(--pk-peri) calc(60% + 4px) 82%,transparent 82% calc(82% + 4px),var(--pk-salmon) calc(82% + 4px) 100%)}
.tn-head{padding-left:18px}
.tn-head::after{content:"";position:absolute;left:0;top:7px;bottom:7px;width:6px;border-radius:6px 0 0 6px;background:var(--pk-hdr-cap);pointer-events:none}
.tn-stage .tn-pane{border-radius:12px}
.tn-head .tn-title{font-weight:600}
#statusline{background:var(--pk-bg-window)}
]==],
	["dark-pulse-neon"] = [==[html,html.glass,html.clear,html.solid{
--pk-bg-window:#03070F;
--pk-bg-panel:#061024;
--pk-bg-panel-2:#050D1E;
--pk-bg-row:#0C1C38;
--pk-bg-row-hi:#11264A;
--pk-bg-field:#091731;
--pk-bg-sunken:#02050B;
--pk-bg-float:#0A1A36;
--pk-tx:#D8F6FF;
--pk-tx-2:#8FDDEB;
--pk-tx-3:#62AFC2;
--pk-tx-4:#4A8798;
--pk-tx-label:#8FDDEB;
--pk-tx-value:#D8F6FF;
--pk-on-accent:#02130A;
--pk-line:#3A3A2E;
--pk-line-strong:#8E7438;
--pk-accent:#3CFF8F;
--pk-accent-hover:#7DFFB5;
--pk-accent-dim:#0B2B26;
--pk-accent-tx:#6BFFAA;
--pk-focus:#39E5FF;
--pk-success:#9DFFC9;
--pk-warning:#FFC23D;
--pk-danger:#FF4466;
--pk-info:#39E5FF;
--pk-green:#3CFF8F;
--pk-cyan:#39E5FF;
--pk-red:#FF4466;
--pk-gold:#E0B24A;
--pk-tab-bg:transparent;
--pk-tab-tx:var(--pk-tx-3);
--pk-tab-on-bg:transparent;
--pk-tab-on-tx:var(--pk-green);
--pk-tab-on-edge:inset 0 -2px 0 var(--pk-green);
--pk-tab-r:0px;
--pk-cap-mix:0%;
--pk-cap-1:var(--pk-tx);
--pk-cap-2:var(--pk-tx);
--pk-cap-3:var(--pk-tx);
--pk-cap-4:var(--pk-tx);
--pk-node-hd-mix:0%;
--pk-seg-on-bg:var(--pk-accent-dim);
--pk-seg-on-tx:var(--pk-green);
--pk-seg-item-bg:transparent;
--pk-seg-tx:var(--pk-tx-3);
--pk-seg-edge:inset 0 0 0 1px var(--pk-line);
--pk-chip-bg:var(--pk-bg-row);
--pk-chip-edge:none;
--pk-chip-on-bg:#0E3346;
--pk-chip-on-tx:var(--pk-cyan);
--pk-chip-on-edge:inset 0 0 0 1px var(--pk-cyan);
--pk-chip-r:0px;
--pk-btn-bg:var(--pk-bg-row);
--pk-btn-tx:var(--pk-cyan);
--pk-btn-edge:inset 0 0 0 1px #1F6F86;
--pk-btn-r:0px;
--pk-hdr-bg:#081530;
--pk-hdr-rule-w:1px;
--pk-hdr-tx:var(--pk-gold);
--pk-hdr-rule:var(--pk-line);
--pk-hdr-cap:transparent;
--pk-panel-edge:var(--pk-line);
--pk-sect-hdr-bg:transparent;
--pk-sect-hdr-tx:var(--pk-gold);
--pk-prop-bg:transparent;
--pk-meter-track:#0D2238;
--pk-meter-fill:var(--pk-cyan);
--pk-progress-fill:var(--pk-green);
--pk-meter-r:0px;
--pk-node-hd-bg:#0A1C36;
--pk-node-hd-tx:var(--pk-tx);
--pk-node-edge:0 0 0 1px #1F6F86;
--pk-ng-grid:#0A1A30;
--pk-syn-kw:#39E5FF;
--pk-syn-str:#E0B24A;
--pk-syn-num:#B49CFF;
--pk-syn-com:#649AAD;
--pk-syn-fn:#3CFF8F;
--pk-diff-add-bg:#06261C;
--pk-diff-del-bg:#2A0A16;
--pk-diff-add-tx:#9DFFC9;
--pk-diff-del-tx:#FF7088;
--pk-f-ui:"IBM Plex Sans Condensed","JetBrains Mono",sans-serif;
--pk-f-mono:"JetBrains Mono",ui-monospace,Menlo,monospace;
--pk-f-pixel:"Departure Mono","JetBrains Mono",ui-monospace,monospace;
--pk-f-cond:"IBM Plex Sans Condensed","JetBrains Mono",sans-serif;
--pk-f-label:var(--pk-f-pixel);
--pk-fw-label:400;
--pk-lbl-case:uppercase;
--pk-lbl-track:.08em;
--pk-r-sm:0px;
--pk-r-md:0px;
--pk-r-lg:0px;
--pk-r-pill:0px;
--pk-glow-rgb:60 255 143;
--pk-fx-scan-alpha:.24;
--pk-fx-glow-radius:10px;
--pk-fx-glow-alpha:.45;
--pk-fx-flicker-amp:.04;
--pk-fx-bloom-text:6px;
--pk-d-crosses:none;
--pk-d-labelbar:none;
--pk-d-brackets:block;
--pk-d-elbow:none;
--pk-d-segbars:block;
--pk-d-scan-bar:block;
--pk-d-scan-panel:block;
--pk-d-flicker:block;
}]==] .. common .. [==[
/* Neon Command: square everything, scanlines on bars and panels, cyan corner brackets. */
*{border-radius:0!important}
#tabbar::after,#statusline::after{content:"";position:absolute;inset:0;pointer-events:none;z-index:6;background:repeating-linear-gradient(0deg,rgba(0,0,0,.24) 0 1px,transparent 1px 3px)}
#tabbar,#statusline{position:relative}
.tn-stage .tn-pane::after{--b:var(--pk-info);box-shadow:inset 0 0 0 1px var(--pk-panel-edge);background:
linear-gradient(var(--b),var(--b)) 0 0/12px 2px no-repeat,linear-gradient(var(--b),var(--b)) 0 0/2px 12px no-repeat,
linear-gradient(var(--b),var(--b)) 100% 0/12px 2px no-repeat,linear-gradient(var(--b),var(--b)) 100% 0/2px 12px no-repeat,
linear-gradient(var(--b),var(--b)) 0 100%/12px 2px no-repeat,linear-gradient(var(--b),var(--b)) 0 100%/2px 12px no-repeat,
linear-gradient(var(--b),var(--b)) 100% 100%/12px 2px no-repeat,linear-gradient(var(--b),var(--b)) 100% 100%/2px 12px no-repeat,
repeating-linear-gradient(0deg,rgba(0,0,0,.12) 0 1px,transparent 1px 3px)}
.sf-button[data-variant='primary'],.sf-buttons > .sf-button[data-variant='primary']{box-shadow:0 0 10px rgba(60,255,143,.45)!important}
]==],
}
