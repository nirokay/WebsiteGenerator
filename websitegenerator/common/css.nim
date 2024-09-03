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
    result.isComment = true
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

proc bottom*(value: string|SomeNumber): CssAttribute = ["bottom", $value]
proc top*(value: string|SomeNumber): CssAttribute = ["top", $value]
proc right*(value: string|SomeNumber): CssAttribute = ["right", $value]
proc left*(value: string|SomeNumber): CssAttribute = ["left", $value]

proc width*(number: string|SomeNumber): CssAttribute = ["width", $number]
proc height*(number: string|SomeNumber): CssAttribute = ["height", $number]
proc maxWidth*(number: string|SomeNumber): CssAttribute = ["max-width", $number]
proc maxHeight*(number: string|SomeNumber): CssAttribute = ["max-height", $number]

proc fontStyle*(style: string|CssFontStyle): CssAttribute = ["font-style", $style]
proc fontStretch*(stretch: string|CssFontStretch): CssAttribute = ["font-stretch", $stretch]
proc fontVariant*(variant: string|CssFontVariant): CssAttribute = ["font-variant", $variant]
proc fontWeight*(weight: string|CssFontWeight): CssAttribute = ["font-weight", $weight]
proc fontSize*(size: string|CssSize): CssAttribute = ["font-size", $size]
proc fontFamily*(family: string|CssFontFamily): CssAttribute = ["font-family", $family]


# Setters:

proc put(element: CssElement, key, value: string): CssElement =
    result = element
    result.properties[key] = value
proc put(element: CssElement, keyValuePair: CssAttribute): CssElement =
    element.put(keyValuePair[0], keyValuePair[1])

proc setWidth*(element: CssElement, number: string|SomeNumber): CssElement = element.put(width(number))
proc setHeight*(element: CssElement, number: string|SomeNumber): CssElement = element.put(height(number))
proc setMaxWidth*(element: CssElement, number: string|SomeNumber): CssElement = element.put(maxWidth(number))
proc setMaxHeight*(element: CssElement, number: string|SomeNumber): CssElement = element.put(maxHeight(number))

proc setFontStyle*(element: CssElement, style: string|CssFontStyle): CssElement = element.put(fontStyle(style))
proc setFontStretch*(element: CssElement, stretch: string|CssFontStretch): CssElement = element.put(fontStretch(stretch))
proc setFontVariant*(element: CssElement, variant: string|CssFontVariant): CssElement = element.put(fontVariant(variant))
proc setFontWeight*(element: CssElement, weight: string|CssFontWeight): CssElement = element.put(fontWeight(weight))
proc setFontSize*(element: CssElement, size: string|CssSize): CssElement = element.put(fontSize(size))
proc setFontFamily*(element: CssElement, family: string|CssFontFamily): CssElement = element.put(fontFamily(family))

proc setFont*(element: CssElement, fontValues: varargs[string]): CssElement =
    ## Shortcut for adding multiple things to a font.
    ##
    ## You have to call the `$` procedure on any Css type.
    var values: seq[string]
    for value in fontValues:
        values.add(value)

    result = element.put("font", values.join(" "))


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



proc display*(value: string|CssDisplay): CssAttribute = ["display", $value]
proc padding*(size: string|SomeInteger): CssAttribute = ["padding", $size]
proc position*(position: string|CssPosition|CssPositioning): CssAttribute = ["position", $position]
proc visibility*(value: string|CssVisibility): CssAttribute = ["visibility", $value]
proc textAlign*(direction: string): CssAttribute = ["text-align", direction]
proc alignContent*(value: string|CssContentAlignment): CssAttribute = ["align-content", $value]
proc alignItems*(value: string|CssItemsAlignment): CssAttribute = ["align-items", $value]
proc alignSelf*(value: string|CssItemsAlignment): CssAttribute = ["align-self", $value]
proc all*(value: string|CssAll): CssAttribute = ["all", $value]
proc aspectRatio*(value: string): CssAttribute = ["aspect-ratio", $value]
proc aspectRatio*(x, y: string|SomeInteger): CssAttribute = aspectRatio($x & " / " & $y)
proc aspectRatio*(value: Rational): CssAttribute = aspectRatio(value.num, value.den)

proc border*(values: string): CssAttribute = ["border", values]


# Setters:

proc setDisplay*(element: CssElement, value: string|CssDisplay): CssDisplay = element.put(display(value))
proc setPadding*(element: CssElement, value: string|SomeInteger): CssDisplay = element.put(padding(value))
proc setVisibility*(element: CssElement, value: string|CssVisibility): CssDisplay = element.put(visibility(value))






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
    ## Takes values between 0.0 and 1.0
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

proc accentColour*(colour: string|CssColour): CssAttribute = ["accent-color", $colour] ## Specifies an accent color for user-interface controls
proc setAccentColour*(element: CssElement, colour: string|CssColour): CssElement =
    ## Specifies an accent color for user-interface controls
    result = element
    result.properties["accent-color"] = $colour
proc backgroundColour*(value: string|CssColour): CssAttribute = ["background-color", $value] ## Specifies the background color of an element
proc setBackgroundColour*(element: CssElement, colour: string|CssColour): CssElement =
    ## Specifies the background color of an element
    result = element
    result.properties["background-color"] = $colour

proc borderBlockColour*(colour: string|CssColour): CssAttribute = ["border-block-color", $colour] ## Sets the color of the borders at start and end in the block direction
proc setBorderBlockColour*(element: CssElement, colour: string|CssColour): CssElement =
    ## Sets the color of the borders at start and end in the block direction
    result = element
    result.properties["border-block-color"] = $colour

proc borderBlockEndColour*(colour: string|CssColour): CssAttribute = ["border-block-end-color", $colour] ## Sets the color of the border at the end in the block direction
proc setBorderBlockEndColour*(element: CssElement, colour: string|CssColour): CssElement =
    ## Sets the color of the border at the end in the block direction
    result = element
    result.properties["border-block-end-color"] = $colour

proc borderBlockStartColour*(colour: string|CssColour): CssAttribute = ["border-block-start-color", $colour] ## Sets the color of the border at the start in the block direction
proc setBorderBlockStartColour*(element: CssElement, colour: string|CssColour): CssElement =
    ## Sets the color of the border at the start in the block direction
    result = element
    result.properties["border-block-start-color"] = $colour

proc borderColour*(colour: string|CssColour): CssAttribute = ["border-color", $colour] ## Sets the color of the four borders
proc setBorderColour*(element: CssElement, colour: string|CssColour): CssElement =
    ## Sets the color of the four borders
    result = element
    result.properties["border-color"] = $colour

proc borderInlineColour*(colour: string|CssColour): CssAttribute = ["border-inline-color", $colour] ## Sets the color of the borders at start and end in the inline direction
proc setBorderInlineColour*(element: CssElement, colour: string|CssColour): CssElement =
    ## Sets the color of the borders at start and end in the inline direction
    result = element
    result.properties["border-inline-color"] = $colour

proc borderInlineEndColour*(colour: string|CssColour): CssAttribute = ["border-inline-end-color", $colour] ## Sets the color of the border at the end in the inline direction
proc setBorderInlineEndColour*(element: CssElement, colour: string|CssColour): CssElement =
    ## Sets the color of the border at the end in the inline direction
    result = element
    result.properties["border-inline-end-color"] = $colour

proc borderInlineStartColour*(colour: string|CssColour): CssAttribute = ["border-inline-start-color", $colour] ## Sets the color of the border at the start in the inline direction
proc setBorderInlineStartColour*(element: CssElement, colour: string|CssColour): CssElement =
    ## Sets the color of the border at the start in the inline direction
    result = element
    result.properties["border-inline-start-color"] = $colour

proc borderLeftColour*(colour: string|CssColour): CssAttribute = ["border-left-color", $colour] ## Sets the color of the left border
proc setBorderLeftColour*(element: CssElement, colour: string|CssColour): CssElement =
    ## Sets the color of the left border
    result = element
    result.properties["border-left-color"] = $colour

proc borderRightColour*(colour: string|CssColour): CssAttribute = ["border-right-color", $colour] ## Sets the color of the right border
proc setBorderRightColour*(element: CssElement, colour: string|CssColour): CssElement =
    ## Sets the color of the right border
    result = element
    result.properties["border-right-color"] = $colour

proc borderTopColour*(colour: string|CssColour): CssAttribute = ["border-top-color", $colour] ## Sets the color of the top border
proc setBorderTopColour*(element: CssElement, colour: string|CssColour): CssElement =
    ## Sets the color of the top border
    result = element
    result.properties["border-top-color"] = $colour

proc borderBottomColour*(colour: string|CssColour): CssAttribute = ["border-bottom-color", $colour] ## Sets the color of the bottom border
proc setBorderBottomColour*(element: CssElement, colour: string|CssColour): CssElement =
    ## Sets the color of the bottom border
    result = element
    result.properties["border-bottom-color"] = $colour

proc caretColour*(colour: string|CssColour): CssAttribute = ["caret-color", $colour] ## Specifies the color of the cursor (caret) in inputs, text-areas, or any element that is editable
proc setCaretColour*(element: CssElement, colour: string|CssColour): CssElement =
    ## Specifies the color of the cursor (caret) in inputs, text-areas, or any element that is editable
    result = element
    result.properties["caret-color"] = $colour

proc colour*(value: string|CssColour): CssAttribute = ["color", $value] ## Sets the color of text
proc setColour*(element: CssElement, colour: string|CssColour): CssElement =
    ## Sets the color of text
    result = element
    result.properties["color"] = $colour

proc columnRuleColour*(colour: string|CssColour): CssAttribute = ["column-rule-color", $colour] ## Specifies the color of the rule between columns
proc setColumnRuleColour*(element: CssElement, colour: string|CssColour): CssElement =
    ## Specifies the color of the rule between columns
    result = element
    result.properties["column-rule-color"] = $colour

proc outlineColour*(colour: string|CssColour): CssAttribute = ["outline-color", $colour] ## Sets the color of an outline
proc setOutlineColour*(element: CssElement, colour: string|CssColour): CssElement =
    ## Sets the color of an outline
    result = element
    result.properties["outline-color"] = $colour

proc scrollbarColour*(colour: string|CssColour): CssAttribute = ["scrollbar-color", $colour] ## Specifies the color of the scrollbar of an element
proc setScrollbarColour*(element: CssElement, colour: string|CssColour): CssElement =
    ## Specifies the color of the scrollbar of an element
    result = element
    result.properties["scrollbar-color"] = $colour

proc textDecorationColour*(colour: string|CssColour): CssAttribute = ["text-decoration-color", $colour] ## Specifies the color of the text-decoration
proc setTextDecorationColour*(element: CssElement, colour: string|CssColour): CssElement =
    ## Specifies the color of the text-decoration
    result = element
    result.properties["text-decoration-color"] = $colour


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

