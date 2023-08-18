## Common css snippets
## ===================
##
## This is a collection of some css snippets that are/can be used commonly.
## The purpose of this is not to be a full list, but rather implement some
## basic css for reference and maybe even use.

import std/[strformat, strutils, tables]
import ../generators

type
    CssFontStlye* = enum
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

# -----------------------------------------------------------------------------
# Font stuff:
# -----------------------------------------------------------------------------

proc cm*(size: SomeNumber): string = $size & "cm" ## Centimeters
proc mm*(size: SomeNumber): string = $size & "mm" ## Millimiters
proc `in`*(size: SomeNumber): string = $size & "in" ## Inches (1in = 96px = 2.54cm)
proc inch*(size: SomeNumber): string = $size & "in" ## Inches (1in = 96px = 2.54cm)
proc px*(size: SomeNumber): string = $size & "px" ## Pixels (1px = 1/96th of 1in)
proc pt*(size: SomeNumber): string = $size & "pt" ## Points (1pt = 1/72 of 1in)
proc pc*(size: SomeNumber): string = $size & "pc" ## Picas (1pc = 12 pt)

proc em*(size: SomeNumber): string = $size & "em" ## Relative to the font-size of the element (2em means 2 times the size of the current font)
proc ex*(size: SomeNumber): string = $size & "ex" ## Relative to the x-height of the current font (rarely used)
proc ch*(size: SomeNumber): string = $size & "ch" ## Relative to the width of the "0" (zero)
proc rem*(size: SomeNumber): string = $size & "rem" ## Relative to font-size of the root element
proc vw*(size: SomeNumber): string = $size & "vw" ## Relative to 1% of the width of the viewportCssSize

proc width*(number: string|SomeNumber): array[2, string] = ["width", $number]
proc height*(number: string|SomeNumber): array[2, string] = ["height", $number]
proc maxWidth*(number: string|SomeNumber): array[2, string] = ["max-width", $number]
proc maxHeight*(number: string|SomeNumber): array[2, string] = ["max-height", $number]

proc fontStyle*(style: string|CssFontStlye): array[2, string] = ["font-style", $style]
proc fontStretch*(stretch: string|CssFontStretch): array[2, string] = ["font-stretch", $stretch]
proc fontVariant*(variant: string|CssFontVariant): array[2, string] = ["font-variant", $variant]
proc fontWeight*(weight: string|CssFontWeight): array[2, string] = ["font-weigth", $weight]
proc fontSize*(size: string|CssSize): array[2, string] = ["font-size", $size]
proc fontFamily*(family: string|CssFontFamily): array[2, string] = ["font-family", $family]


# Setters:

proc put(element: CssElement, key, value: string): CssElement =
    result = element
    result.properties[key] = value
proc put(element: CssElement, keyValuePair: array[2, string]): CssElement =
    element.put(keyValuePair[0], keyValuePair[1])

proc setWidth*(element: CssElement, number: string|SomeNumber): CssElement = element.put(width(number))
proc setHeight*(element: CssElement, number: string|SomeNumber): CssElement = element.put(height(number))
proc setMaxWidth*(element: CssElement, number: string|SomeNumber): CssElement = element.put(maxWidth(number))
proc setMaxHeight*(element: CssElement, number: string|SomeNumber): CssElement = element.put(maxHeight(number))

proc setFontStyle*(element: CssElement, style: string|CssFontStlye): CssElement = element.put(fontStyle(style))
proc setFontStretch*(element: CssElement, stretch: string|CssFontStretch): CssElement = element.put(fontStretch(stretch))
proc setFontVariant*(element: CssElement, variant: string|CssFontVariant): CssElement = element.put(fontVariant(variant))
proc setFontWeigth*(element: CssElement, weigth: string|CssFontWeight): CssElement = element.put(fontWeight(weigth))
proc setFontSize*(element: CssElement, size: string|CssSize): CssElement = element.put(fontSize(size))
proc setFontFamily*(element: CssElement, family: string|CssFontFamily): CssElement = element.put(fontFamily(family))

#[
# Failed attempt:
proc setFont*[T: string|CssFontStlye|CssFontStretch|CssFontVariant|CssFontWeight|CssSize|CssFontFamily](element: CssElement, fontValues: varargs[T]): CssElement =
    var values: seq[string]
    for value in fontValues:
        values.add(value)

    result = element.put("font", values.join(" "))
]#

proc setFont*(element: CssElement, fontValues: varargs[string]): CssElement =
    ## Shortcut for adding multiple things to a font.
    ##
    ## You have to call the `$` procedure on any `CssTypes` type.
    runnableExamples:
        newCssElement("something").setFont($DarkGreen, $CssFontStlye.italic, 69.px)
    var values: seq[string]
    for value in fontValues:
        values.add(value)

    result = element.put("font", values.join(" "))



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

        Rebeccapurple, Red, RosyBrown, RoyalBlue,

        SaddleBrown, Salmon, SandyBrown, SeaGreen, Seashell, Sienna, Silver,
        SkyBlue, SlateBlue, SlateGray, SlateGrey, Snow, SpringGreen, SteelBlue,

        Tan, Teal, Thistle, Tomato, Turquoise,

        Violet,

        Wheat, White, WhiteSmoke,

        Yellow, YellowGreen


proc rgb*(red, green, blue: SomeInteger): string =
    runnableExamples:
        newCssElement("something").setAccentColour(rgb(255, 255, 0))
    ## Converts red, green and blue values to css string.
    ##
    ## Takes values between 0 and 255
    &"rgb({byte red}, {byte green}, {byte blue})"

proc rgb*(red, green, blue: SomeFloat): string =
    ## Converts red, green and blue values to css string.
    ##
    ## Takes values between 0 and 1.
    runnableExamples:
        newCssElement("something").setAccentColour(rgb(0.5, 0.5, 0.5))
    let
        r: float = red * 255
        g: float = red * 255
        b: float = red * 255
    rgb(int r, int g, int b)


proc accentColour*(colour: string|CssColour): array[2, string] = ["accent-color", $colour] ## Specifies an accent color for user-interface controls
proc setAccentColour*(element: CssElement, colour: string|CssColour): CssElement =
    ## Specifies an accent color for user-interface controls
    result = element
    result.properties["accent-color"] = $colour

proc backgroundColour*(value: string|CssColour): array[2, string] = ["background-color", $value] ## Specifies the background color of an element
proc setBackgroundColour*(element: CssElement, colour: string|CssColour): CssElement =
    ## Specifies the background color of an element
    result = element
    result.properties["background-color"] = $colour

proc borderBlockColour*(colour: string|CssColour): array[2, string] = ["border-block-color", $colour] ## Sets the color of the borders at start and end in the block direction
proc setBorderBlockColour*(element: CssElement, colour: string|CssColour): CssElement =
    ## Sets the color of the borders at start and end in the block direction
    result = element
    result.properties["border-block-color"] = $colour

proc borderBlockEndColour*(colour: string|CssColour): array[2, string] = ["border-block-end-color", $colour] ## Sets the color of the border at the end in the block direction
proc setBorderBlockEndColour*(element: CssElement, colour: string|CssColour): CssElement =
    ## Sets the color of the border at the end in the block direction
    result = element
    result.properties["border-block-end-color"] = $colour

proc borderBlockStartColour*(colour: string|CssColour): array[2, string] = ["border-block-start-color", $colour] ## Sets the color of the border at the start in the block direction
proc setBorderBlockStartColour*(element: CssElement, colour: string|CssColour): CssElement =
    ## Sets the color of the border at the start in the block direction
    result = element
    result.properties["border-block-start-color"] = $colour

proc borderColour*(colour: string|CssColour): array[2, string] = ["border-color", $colour] ## Sets the color of the four borders
proc setBorderColour*(element: CssElement, colour: string|CssColour): CssElement =
    ## Sets the color of the four borders
    result = element
    result.properties["border-color"] = $colour

proc borderInlineColour*(colour: string|CssColour): array[2, string] = ["border-inline-color", $colour] ## Sets the color of the borders at start and end in the inline direction
proc setBorderInlineColour*(element: CssElement, colour: string|CssColour): CssElement =
    ## Sets the color of the borders at start and end in the inline direction
    result = element
    result.properties["border-inline-color"] = $colour

proc borderInlineEndColour*(colour: string|CssColour): array[2, string] = ["border-inline-end-color", $colour] ## Sets the color of the border at the end in the inline direction
proc setBorderInlineEndColour*(element: CssElement, colour: string|CssColour): CssElement =
    ## Sets the color of the border at the end in the inline direction
    result = element
    result.properties["border-inline-end-color"] = $colour

proc borderInlineStartColour*(colour: string|CssColour): array[2, string] = ["border-inline-start-color", $colour] ## Sets the color of the border at the start in the inline direction
proc setBorderInlineStartColour*(element: CssElement, colour: string|CssColour): CssElement =
    ## Sets the color of the border at the start in the inline direction
    result = element
    result.properties["border-inline-start-color"] = $colour

proc borderLeftColour*(colour: string|CssColour): array[2, string] = ["border-left-color", $colour] ## Sets the color of the left border
proc setBorderLeftColour*(element: CssElement, colour: string|CssColour): CssElement =
    ## Sets the color of the left border
    result = element
    result.properties["border-left-color"] = $colour

proc borderRightColour*(colour: string|CssColour): array[2, string] = ["border-right-color", $colour] ## Sets the color of the right border
proc setBorderRightColour*(element: CssElement, colour: string|CssColour): CssElement =
    ## Sets the color of the right border
    result = element
    result.properties["border-right-color"] = $colour

proc borderTopColour*(colour: string|CssColour): array[2, string] = ["border-top-color", $colour] ## Sets the color of the top border
proc setBorderTopColour*(element: CssElement, colour: string|CssColour): CssElement =
    ## Sets the color of the top border
    result = element
    result.properties["border-top-color"] = $colour

proc borderBottomColour*(colour: string|CssColour): array[2, string] = ["border-bottom-color", $colour] ## Sets the color of the bottom border
proc setBorderBottomColour*(element: CssElement, colour: string|CssColour): CssElement =
    ## Sets the color of the bottom border
    result = element
    result.properties["border-bottom-color"] = $colour

proc caretColour*(colour: string|CssColour): array[2, string] = ["caret-color", $colour] ## Specifies the color of the cursor (caret) in inputs, textareas, or any element that is editable
proc setCaretColour*(element: CssElement, colour: string|CssColour): CssElement =
    ## Specifies the color of the cursor (caret) in inputs, textareas, or any element that is editable
    result = element
    result.properties["caret-color"] = $colour

proc colour*(value: string|CssColour): array[2, string] = ["color", $value] ## Sets the color of text
proc setColour*(element: CssElement, colour: string|CssColour): CssElement =
    ## Sets the color of text
    result = element
    result.properties["color"] = $colour

proc columnRuleColour*(colour: string|CssColour): array[2, string] = ["column-rule-color", $colour] ## Specifies the color of the rule between columns
proc setColumnRuleColour*(element: CssElement, colour: string|CssColour): CssElement =
    ## Specifies the color of the rule between columns
    result = element
    result.properties["column-rule-color"] = $colour

proc outlineColour*(colour: string|CssColour): array[2, string] = ["outline-color", $colour] ## Sets the color of an outline
proc setOutlineColour*(element: CssElement, colour: string|CssColour): CssElement =
    ## Sets the color of an outline
    result = element
    result.properties["outline-color"] = $colour

proc scrollbarColour*(colour: string|CssColour): array[2, string] = ["scrollbar-color", $colour] ## Specifies the color of the scrollbar of an element
proc setScrollbarColour*(element: CssElement, colour: string|CssColour): CssElement =
    ## Specifies the color of the scrollbar of an element
    result = element
    result.properties["scrollbar-color"] = $colour

proc textDecorationColour*(colour: string|CssColour): array[2, string] = ["text-decoration-color", $colour] ## Specifies the color of the text-decoration
proc setTextDecorationColour*(element: CssElement, colour: string|CssColour): CssElement =
    ## Specifies the color of the text-decoration
    result = element
    result.properties["text-decoration-color"] = $colour





type CssTypes* = string|CssFontStlye|CssFontStretch|CssFontVariant|CssFontWeight|CssSize|CssFontFamily|CssColour
