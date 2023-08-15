## Common css snippets
## ===================
##
## This is a collection of some css snippets that are/can be used commonly.
## The purpose of this is not to be a full list, but rather implement some
## basic css for reference and maybe even use.

import ../generators

var
    cssDarkmode* = newCssElement("body",
        ["background-color", "rgb(23, 25, 33)"], # using the background colour, that the Nim compiler uses for html docs (it is pretty cool!)
        ["color", "white"]
    )
    cssLightmode* = newCssElement("body",
        ["background-color", "rgb(255, 255, 255)"],
        ["color", "black"]
    )

    cssCenter* = newCssClass("center",
        ["display", "block"],
        ["margin-left", "auto"],
        ["margin-right", "auto"],
        ["width", "50%"]
    )
