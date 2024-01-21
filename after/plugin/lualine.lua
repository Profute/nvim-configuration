local status, lualine = pcall(require, "lualine")
if not status then
    return
end

local lualine_nightfly = require("lualine.themes.nightfly")

local new_colours = {
    blue   = "#65D1FF",
    green  = "#3EFFDC",
    violet = "#FF61EF",
    orange = "#FF9900",
    black  = "#000000",
}

lualine_nightfly.normal.a.bg = new_colours.blue
lualine_nightfly.insert.a.bg = new_colours.violet
lualine_nightfly.visual.a.bg = new_colours.green
lualine_nightfly.command = {
    a = {
        gui = "bold",
        bg  = new_colours.orange,
        fg  = new_colours.black,
    }
}

lualine.setup({
    options = {
        theme = lualine_nightfly
    }
})

