config.load_autoconfig(False)
config.source("keymaps.py")

c.fonts.default_size = "13pt"
c.content.headers.accept_language = "zh-CH;q=0.9,en-Us;q=0.8"
# c.content.headers.user_agent = "Mozilla/5.0 (Windwos NT 10.0; Win64) A"

c.hints.padding = {"bottom": 1, "left": 5, "right": 3, "top": 1}
c.hints.border = "none"
c.hints.chars = "asdfghjklzxcvbnm"

c.scrolling.bar = "always"
c.scrolling.smooth = True

c.statusbar.padding = {"bottom": 2, "left": 0, "right": 5, "top": 2}
# c.statusbar.widgets = {"search_match", "text:|", "url", "text:|", "scroll"}

c.url.default_page = "https://google.com"
c.url.start_pages = "https://google.com"
c.url.searchengines = {"DEFAULT": "https://bing.com/search?q=P{}"}
