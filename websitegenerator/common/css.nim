## Common css snippets
## ===================
##
## This is a collection of some css snippets that are/can be used commonly.
## The purpose of this is not to be a full list, but rather implement some
## basic css for reference and maybe even use.

import std/[strformat, strutils, tables, rationals]
import ../generators


# -----------------------------------------------------------------------------
# Font stuff:
# -----------------------------------------------------------------------------

type
    CssFontStyle* = enum
        normal = "normal",
        italic = "italic",
        oblique = "oblique"

    CssFontStretch* = enum
        normal = "normal"
        ultraCondensed = "ultra-condensed",
        extraCondensed = "extra-condensed",
        condensed = "condensed",
        semiCondensed = "semi-condensed",
        semiExpanded = "semi-expanded",
        expanded = "expanded",
        extraExpanded = "extra-expanded",
        ultraExpanded = "ultra-expanded"

    CssFontVariant* = enum
        normal = "normal",
        smallCaps = "small-caps"

    CssFontWeight* = enum
        normal = "normal",
        bold = "bold",
        bolder = "bolder",
        lighter = "lighter"
        weight100 = "100"
        weight200 = "200"
        weight300 = "300"
        weight400 = "400"
        weight500 = "500"
        weight600 = "600"
        weight700 = "700"
        weight800 = "800"
        weight900 = "900"

    CssSize* = enum
        xxSmall = "xx-small",
        xSmall = "x-small",
        small = "small",
        medium = "medium",
        large = "large",
        xLarge = "x-large",
        xxLarge = "xx-large",
        larger = "larger",
        smaller = "smaller"

    CssFontFamily* = enum
        sansSerif = "sans-serif",
        serif = "serif",
        monospace = "monospace",
        cursive = "cursive",
        fantasy = "fantasy",
        caption = "caption",
        icon = "icon",
        menu = "menu",
        messageBox = "message-box",
        smallCaption = "small-caption",
        statusBar = "status-bar"

    CssPosition* = enum
        `static` = "static",
        relative = "relative",
        fixed = "fixed",
        absolute = "absolute",
        sticky = "sticky"

    CssPositioning* = enum
        bottom = "bottom",
        clip = "clip",
        left = "left",
        position = "position",
        right = "right",
        top = "top"

proc cssComment*(text: string): CssElement =
    ## CSS comment
    result = newCssElement(text)
    result.selector = selectorComment
proc cssComment*(text: seq[string]): CssElement =
    ## Multiline CSS comment
    result = cssComment(text.join("\n"))

proc cm*(size: SomeNumber): string = $size & "cm" ## Centimeters
proc mm*(size: SomeNumber): string = $size & "mm" ## Millimeters
proc `in`*(size: SomeNumber): string = $size & "in" ## Inches (1in = 96px = 2.54cm)
proc inch*(size: SomeNumber): string = size.`in` ## Inches (1in = 96px = 2.54cm)
proc px*(size: SomeNumber): string = $size & "px" ## Pixels (1px = 1/96th of 1in)
proc pt*(size: SomeNumber): string = $size & "pt" ## Points (1pt = 1/72 of 1in)
proc pc*(size: SomeNumber): string = $size & "pc" ## Picas (1pc = 12 pt)

proc em*(size: SomeNumber): string = $size & "em" ## Relative to the font-size of the element (2em means 2 times the size of the current font)
proc ex*(size: SomeNumber): string = $size & "ex" ## Relative to the x-height of the current font (rarely used)
proc ch*(size: SomeNumber): string = $size & "ch" ## Relative to the width of the "0" (zero)
proc rem*(size: SomeNumber): string = $size & "rem" ## Relative to font-size of the root element
proc vw*(size: SomeNumber): string = $size & "vw" ## Relative to 1% of the width of the viewportCssSize


# -----------------------------------------------------------------------------
# Alignments:
# -----------------------------------------------------------------------------

type
    CssDisplay* = enum
        inline = "inline",
        `block` = "block",
        contents = "contents",
        flex = "flex",
        gird = "grid",
        inlineBlock = "inline-block",
        inlineFlex = "inline-flex",
        inlineGrid = "inline-grid",
        inlineTable = "inline-table",
        listItem = "list-item",
        runIn = "run-in",
        table = "table",
        tableCaption = "table-caption",
        tableColumnGroup = "table-column-group",
        tableHeaderGroup = "table-column-group",
        tableFooterGroup = "table-footer-group",
        tableRowGroup = "table-row-group",
        tableCell = "table-cell",
        tableColumn = "table-column",
        tableRow = "table-row",
        none = "none"

    CssVisibility* = enum
        visible = "visible",
        hidden = "hidden",
        collapse = "collapse"

    CssContentAlignment* = enum
        stretch = "stretch",
        center = "center",
        flexStart = "flex-start",
        flexEnd = "flex-end",
        spaceBetween = "space-between",
        spaceAround = "space-around",
        spaceEvenly = "space-evenly"

    CssItemsAlignment* = enum
        normal = "normal",
        stretch = "stretch",
        center = "center",
        flexStart = "flex-start",
        flexEnd = "flex-end",
        start = "start",
        `end` = "end",
        baseline = "baseline"

    CssAll* = enum
        initial = "initial",
        inherit = "inherit",
        unset = "unset"


# -----------------------------------------------------------------------------
# Colours:
# -----------------------------------------------------------------------------

type
    CssColour* = enum
        ## Enum for all css colour presets.
        AliceBlue, AntiqueWhite, Aqua, Aquamarine, Azure,

        Beige, Bisque, Black, BlanchedAlmond, Blue, BlueViolet, Brown, BurlyWood,

        CadetBlue, Chartreuse, Chocolate, Coral, CornflowerBlue, Cornsilk, Crimson,
        Cyan,

        DarkBlue, DarkCyan, DarkGoldenrod, DarkGray, DarkGreen, DarkGrey,
        DarkKhaki, DarkMagenta, DarkOliveGreen, DarkOrange, DarkOrchid, DarkRed,
        DarkSalmon, DarkSeaGreen, DarkSlateBlue, DarkSlateGray, DarkSlateGrey,
        DarkTurquoise, DarkViolet, DeepPink, DeepSkyBlue, DimGray, DodgerBlue,

        FireBrick, FloralWhite, ForestGreen, Fuchsia,

        Gainsboro, GhostWhite, Gold, Goldenrod, Gray, Green, GreenYellow, Grey,
        Honeydew, HotPink,

        IndianRed, Indigo, Ivory,

        Khaki,

        Lavender, LavenderBlush, LawnGreen, LemonChiffon, LightBlue, LightCoral,
        LightCyan, LightGoldenrodYellow, LightGray, LightGreen, LightGrey,
        LightPink, LightSalmon, LightSeaGreen, LightSkyBlue, LightSlateGray,
        LightSlateGrey, LightSteelBlue, LightYellow, Lime, LimeGreen, Linen,

        Magenta, Maroon, MediumAquamarine, MediumBlue, MediumOrchid, MediumPurple,
        MediumSeaGreen, MediumSlateBlue, MediumSpringGreen, MediumTurquoise,
        MediumVioletRed, MidnightBlue, MintCream, MistyRose, Moccasin,

        NavajoWhite, Navy,

        OldLace, Olive, OliveDrab, Orange, OrangeRed, Orchid

        PaleGoldenrod, PaleGreen, PaleTurquoise, PaleVioletRed, PapayaWhip,
        PeachPuff, Peru, Pink, Plum, PowderBlue, Purple,

        RebeccaPurple, Red, RosyBrown, RoyalBlue,

        SaddleBrown, Salmon, SandyBrown, SeaGreen, Seashell, Sienna, Silver,
        SkyBlue, SlateBlue, SlateGray, SlateGrey, Snow, SpringGreen, SteelBlue,

        Tan, Teal, Thistle, Tomato, Turquoise,

        Violet,

        Wheat, White, WhiteSmoke,

        Yellow, YellowGreen


proc rgb*(red, green, blue: SomeInteger): string =
    ## Converts red, green and blue values to css string.
    ##
    ## Takes values between 0 and 255
    &"rgb({byte red}, {byte green}, {byte blue})"

proc rgb*(red, green, blue: SomeFloat): string =
    ## Converts red, green and blue values to css string.
    ##
    ## Takes values between 0.0 and 1.0, raises `ValueError` if outside bounds
    for col in [red, green, blue]:
        if unlikely(col notin 0 .. 1):
            raise ValueError.newException(&"Passed colour value not in-between 0 and 1: `rgb(r: {red}, g: {green}, b: {blue})`")

    let
        r: float = red * 255
        g: float = red * 255
        b: float = red * 255
    rgb(int r, int g, int b)

proc rgba*(red, green, blue: SomeInteger, alpha: SomeFloat): string =
    ## Converts red, green, blue and alpha values to css string.
    ##
    ## Takes values between 0 and 255 (alpha: 0.0 .. 1.0)
    result = rgb(red, green, blue)
    result.insert(&", {alpha}", result.len() - 1)
    result.insert("a", 3)

proc rgba*(red, green, blue, alpha: SomeFloat): string =
    ## Converts red, green, blue and alpha values to css string.
    ##
    ## Takes values between 0.0 and 1.0
    result = rgba(int(red * 255), int(green * 255), int(blue * 255), alpha)


proc addLinkColour*(css: var CssStyleSheet, which: string, colour: string|CssColour, additionalCssAttributes: seq[CssAttribute]) =
    ## Adds a colour and additional attributes to rule for links
    var cssRule: CssElement = newCssElement("a:" & which,
        ["color", $colour]
    )
    for attribute in additionalCssAttributes:
        cssRule.properties[$attribute[0]] = $attribute[1]
    css.add cssRule
proc addLinkColours*(css: var CssStyleSheet, link, visited, hover, active: string|CssColour, additionalCssAttributes: seq[CssAttribute] = @[]) =
    ## Adds colours and additional attributes to all links in the correct order
    css.addLinkColour("link", link, additionalCssAttributes)
    css.addLinkColour("visited", visited, additionalCssAttributes)
    css.addLinkColour("hover", hover, additionalCssAttributes)
    css.addLinkColour("active", active, additionalCssAttributes)

