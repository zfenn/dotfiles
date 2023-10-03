#
# qutebrowser/config.py

config.load_autoconfig(True)

config.bind(",p", "spawn --userscript password-fill")

# config.unbind ("=")

c.messages.timeout = 9000

c.url.default_page = "file:///home/zfen/p/src/Minimal-StartPage/index.html"

config.bind(",r", "config-source")
#config.unbind("0")
config.unbind("=")
config.bind("0", "zoom")
config.bind ("~", "zoom-in")

config.bind("J", "tab-prev")
config.bind("K", "tab-next")

config.bind("wo", "window-only")
config.bind("wc", "close")

c.auto_save.session = True

c.downloads.location.directory = "~/downloads"

c.hints.chars ="asdfer"
c.zoom.default = "90%"

c.content.autoplay = False


c.fonts.tabs.unselected        = "13 normal_family"
c.fonts.tabs.selected          = "13 bold"

c.colors.tabs.even.fg          = "#000000"
c.colors.tabs.even.bg          = "#e5e5e5"

c.colors.tabs.odd.fg           = "#000000"
c.colors.tabs.odd.bg           = "#e5e5e5"

c.colors.tabs.selected.even.fg = "#eeeeee"
c.colors.tabs.selected.even.bg = "#d70000"

c.colors.tabs.selected.odd.fg  = "#eeeeee"
c.colors.tabs.selected.odd.bg  = "#d70000"

c.colors.tabs.pinned.even.fg   = "#ffffff"
c.colors.tabs.pinned.even.bg   = "#bcbcbc"
c.colors.tabs.pinned.odd.fg    = "#ffffff"
c.colors.tabs.pinned.odd.bg    = "#bcbcbc"

c.colors.tabs.pinned.selected.even.fg   = "#ffffff"
c.colors.tabs.pinned.selected.even.bg   = "#bcbcbc"
c.colors.tabs.pinned.selected.odd.fg   = "#ffffff"
c.colors.tabs.pinned.selected.odd.bg   = "#bcbcbc"

# c.colors.tabs.pinned.even.fg   = "#000000"
# c.colors.tabs.pinned.even.fg   = "#000000"
# c.colors.tabs.pinned.odd.fg    = "#000000"
# c.colors.tabs.pinned.even.bg   = "#e5e5e5"
# c.colors.tabs.pinned.odd.bg    = "#e5e5e5"
