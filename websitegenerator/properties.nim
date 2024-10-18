## CSS Properties Module
## =====================
##
## Automatically generated procs for setting and creating a CSS property.
##
## Reference:
## https://www.w3schools.com/cssref/index.php
##
## Html table converted to csv via:
## https://www.convertcsv.com/html-table-to-csv.htm

import std/[strutils, tables, sequtils]
import generators

proc toJoinedString[T](items: varargs[T]): string =
    result = items.toSeq().join(" ")


proc accentColor*(values: varargs[string]): CssAttribute =
    ## Constructs the `accent-color` CSS property
    ##
    ## Specifies an accent color for user-interface controls
    result = ["accent-color", values.toJoinedString()]
proc setAccentColor*(element: var CssElement, values: varargs[string]) =
    ## Sets the `accent-color` CSS property
    ##
    ## Specifies an accent color for user-interface controls
    element.properties["accent-color"] = values.toJoinedString()
proc setAccentColor*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `accent-color` CSS property
    ##
    ## Specifies an accent color for user-interface controls
    result = element
    result.properties["accent-color"] = values.toJoinedString()

proc accentColour*(values: varargs[string]): CssAttribute =
    ## Constructs the `accent-color` CSS property
    ##
    ## Specifies an accent color for user-interface controls
    result = ["accent-color", values.toJoinedString()]
proc setAccentColour*(element: var CssElement, values: varargs[string]) =
    ## Sets the `accent-color` CSS property
    ##
    ## Specifies an accent color for user-interface controls
    element.properties["accent-color"] = values.toJoinedString()
proc setAccentColour*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `accent-color` CSS property
    ##
    ## Specifies an accent color for user-interface controls
    result = element
    result.properties["accent-color"] = values.toJoinedString()

proc alignContent*(values: varargs[string]): CssAttribute =
    ## Constructs the `align-content` CSS property
    ##
    ## Specifies the alignment between the lines inside a flexible container when the items do not use all available space
    result = ["align-content", values.toJoinedString()]
proc setAlignContent*(element: var CssElement, values: varargs[string]) =
    ## Sets the `align-content` CSS property
    ##
    ## Specifies the alignment between the lines inside a flexible container when the items do not use all available space
    element.properties["align-content"] = values.toJoinedString()
proc setAlignContent*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `align-content` CSS property
    ##
    ## Specifies the alignment between the lines inside a flexible container when the items do not use all available space
    result = element
    result.properties["align-content"] = values.toJoinedString()

proc alignItems*(values: varargs[string]): CssAttribute =
    ## Constructs the `align-items` CSS property
    ##
    ## Specifies the alignment for items inside a flexible container
    result = ["align-items", values.toJoinedString()]
proc setAlignItems*(element: var CssElement, values: varargs[string]) =
    ## Sets the `align-items` CSS property
    ##
    ## Specifies the alignment for items inside a flexible container
    element.properties["align-items"] = values.toJoinedString()
proc setAlignItems*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `align-items` CSS property
    ##
    ## Specifies the alignment for items inside a flexible container
    result = element
    result.properties["align-items"] = values.toJoinedString()

proc alignSelf*(values: varargs[string]): CssAttribute =
    ## Constructs the `align-self` CSS property
    ##
    ## Specifies the alignment for selected items inside a flexible container
    result = ["align-self", values.toJoinedString()]
proc setAlignSelf*(element: var CssElement, values: varargs[string]) =
    ## Sets the `align-self` CSS property
    ##
    ## Specifies the alignment for selected items inside a flexible container
    element.properties["align-self"] = values.toJoinedString()
proc setAlignSelf*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `align-self` CSS property
    ##
    ## Specifies the alignment for selected items inside a flexible container
    result = element
    result.properties["align-self"] = values.toJoinedString()

proc all*(values: varargs[string]): CssAttribute =
    ## Constructs the `all` CSS property
    ##
    ## Resets all properties (except unicode-bidi and direction)
    result = ["all", values.toJoinedString()]
proc setAll*(element: var CssElement, values: varargs[string]) =
    ## Sets the `all` CSS property
    ##
    ## Resets all properties (except unicode-bidi and direction)
    element.properties["all"] = values.toJoinedString()
proc setAll*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `all` CSS property
    ##
    ## Resets all properties (except unicode-bidi and direction)
    result = element
    result.properties["all"] = values.toJoinedString()

proc animation*(values: varargs[string]): CssAttribute =
    ## Constructs the `animation` CSS property
    ##
    ## A shorthand property for all the animation-\* properties
    result = ["animation", values.toJoinedString()]
proc setAnimation*(element: var CssElement, values: varargs[string]) =
    ## Sets the `animation` CSS property
    ##
    ## A shorthand property for all the animation-\* properties
    element.properties["animation"] = values.toJoinedString()
proc setAnimation*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `animation` CSS property
    ##
    ## A shorthand property for all the animation-\* properties
    result = element
    result.properties["animation"] = values.toJoinedString()

proc animationDelay*(values: varargs[string]): CssAttribute =
    ## Constructs the `animation-delay` CSS property
    ##
    ## Specifies a delay for the start of an animation
    result = ["animation-delay", values.toJoinedString()]
proc setAnimationDelay*(element: var CssElement, values: varargs[string]) =
    ## Sets the `animation-delay` CSS property
    ##
    ## Specifies a delay for the start of an animation
    element.properties["animation-delay"] = values.toJoinedString()
proc setAnimationDelay*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `animation-delay` CSS property
    ##
    ## Specifies a delay for the start of an animation
    result = element
    result.properties["animation-delay"] = values.toJoinedString()

proc animationDirection*(values: varargs[string]): CssAttribute =
    ## Constructs the `animation-direction` CSS property
    ##
    ## Specifies whether an animation should be played forward, backward or in alternate cycles
    result = ["animation-direction", values.toJoinedString()]
proc setAnimationDirection*(element: var CssElement, values: varargs[string]) =
    ## Sets the `animation-direction` CSS property
    ##
    ## Specifies whether an animation should be played forward, backward or in alternate cycles
    element.properties["animation-direction"] = values.toJoinedString()
proc setAnimationDirection*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `animation-direction` CSS property
    ##
    ## Specifies whether an animation should be played forward, backward or in alternate cycles
    result = element
    result.properties["animation-direction"] = values.toJoinedString()

proc animationDuration*(values: varargs[string]): CssAttribute =
    ## Constructs the `animation-duration` CSS property
    ##
    ## Specifies how long an animation should take to complete one cycle
    result = ["animation-duration", values.toJoinedString()]
proc setAnimationDuration*(element: var CssElement, values: varargs[string]) =
    ## Sets the `animation-duration` CSS property
    ##
    ## Specifies how long an animation should take to complete one cycle
    element.properties["animation-duration"] = values.toJoinedString()
proc setAnimationDuration*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `animation-duration` CSS property
    ##
    ## Specifies how long an animation should take to complete one cycle
    result = element
    result.properties["animation-duration"] = values.toJoinedString()

proc animationFillMode*(values: varargs[string]): CssAttribute =
    ## Constructs the `animation-fill-mode` CSS property
    ##
    ## Specifies a style for the element when the animation is not playing (before it starts, after it ends, or both)
    result = ["animation-fill-mode", values.toJoinedString()]
proc setAnimationFillMode*(element: var CssElement, values: varargs[string]) =
    ## Sets the `animation-fill-mode` CSS property
    ##
    ## Specifies a style for the element when the animation is not playing (before it starts, after it ends, or both)
    element.properties["animation-fill-mode"] = values.toJoinedString()
proc setAnimationFillMode*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `animation-fill-mode` CSS property
    ##
    ## Specifies a style for the element when the animation is not playing (before it starts, after it ends, or both)
    result = element
    result.properties["animation-fill-mode"] = values.toJoinedString()

proc animationIterationCount*(values: varargs[string]): CssAttribute =
    ## Constructs the `animation-iteration-count` CSS property
    ##
    ## Specifies the number of times an animation should be played
    result = ["animation-iteration-count", values.toJoinedString()]
proc setAnimationIterationCount*(element: var CssElement, values: varargs[string]) =
    ## Sets the `animation-iteration-count` CSS property
    ##
    ## Specifies the number of times an animation should be played
    element.properties["animation-iteration-count"] = values.toJoinedString()
proc setAnimationIterationCount*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `animation-iteration-count` CSS property
    ##
    ## Specifies the number of times an animation should be played
    result = element
    result.properties["animation-iteration-count"] = values.toJoinedString()

proc animationName*(values: varargs[string]): CssAttribute =
    ## Constructs the `animation-name` CSS property
    ##
    ## Specifies a name for the @keyframes animation
    result = ["animation-name", values.toJoinedString()]
proc setAnimationName*(element: var CssElement, values: varargs[string]) =
    ## Sets the `animation-name` CSS property
    ##
    ## Specifies a name for the @keyframes animation
    element.properties["animation-name"] = values.toJoinedString()
proc setAnimationName*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `animation-name` CSS property
    ##
    ## Specifies a name for the @keyframes animation
    result = element
    result.properties["animation-name"] = values.toJoinedString()

proc animationPlayState*(values: varargs[string]): CssAttribute =
    ## Constructs the `animation-play-state` CSS property
    ##
    ## Specifies whether the animation is running or paused
    result = ["animation-play-state", values.toJoinedString()]
proc setAnimationPlayState*(element: var CssElement, values: varargs[string]) =
    ## Sets the `animation-play-state` CSS property
    ##
    ## Specifies whether the animation is running or paused
    element.properties["animation-play-state"] = values.toJoinedString()
proc setAnimationPlayState*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `animation-play-state` CSS property
    ##
    ## Specifies whether the animation is running or paused
    result = element
    result.properties["animation-play-state"] = values.toJoinedString()

proc animationTimingFunction*(values: varargs[string]): CssAttribute =
    ## Constructs the `animation-timing-function` CSS property
    ##
    ## Specifies the speed curve of an animation
    result = ["animation-timing-function", values.toJoinedString()]
proc setAnimationTimingFunction*(element: var CssElement, values: varargs[string]) =
    ## Sets the `animation-timing-function` CSS property
    ##
    ## Specifies the speed curve of an animation
    element.properties["animation-timing-function"] = values.toJoinedString()
proc setAnimationTimingFunction*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `animation-timing-function` CSS property
    ##
    ## Specifies the speed curve of an animation
    result = element
    result.properties["animation-timing-function"] = values.toJoinedString()

proc aspectRatio*(values: varargs[string]): CssAttribute =
    ## Constructs the `aspect-ratio` CSS property
    ##
    ## Specifies preferred aspect ratio of an element
    result = ["aspect-ratio", values.toJoinedString()]
proc setAspectRatio*(element: var CssElement, values: varargs[string]) =
    ## Sets the `aspect-ratio` CSS property
    ##
    ## Specifies preferred aspect ratio of an element
    element.properties["aspect-ratio"] = values.toJoinedString()
proc setAspectRatio*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `aspect-ratio` CSS property
    ##
    ## Specifies preferred aspect ratio of an element
    result = element
    result.properties["aspect-ratio"] = values.toJoinedString()

proc backdropFilter*(values: varargs[string]): CssAttribute =
    ## Constructs the `backdrop-filter` CSS property
    ##
    ## Defines a graphical effect to the area behind an element
    result = ["backdrop-filter", values.toJoinedString()]
proc setBackdropFilter*(element: var CssElement, values: varargs[string]) =
    ## Sets the `backdrop-filter` CSS property
    ##
    ## Defines a graphical effect to the area behind an element
    element.properties["backdrop-filter"] = values.toJoinedString()
proc setBackdropFilter*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `backdrop-filter` CSS property
    ##
    ## Defines a graphical effect to the area behind an element
    result = element
    result.properties["backdrop-filter"] = values.toJoinedString()

proc backfaceVisibility*(values: varargs[string]): CssAttribute =
    ## Constructs the `backface-visibility` CSS property
    ##
    ## Defines whether or not the back face of an element should be visible when facing the user
    result = ["backface-visibility", values.toJoinedString()]
proc setBackfaceVisibility*(element: var CssElement, values: varargs[string]) =
    ## Sets the `backface-visibility` CSS property
    ##
    ## Defines whether or not the back face of an element should be visible when facing the user
    element.properties["backface-visibility"] = values.toJoinedString()
proc setBackfaceVisibility*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `backface-visibility` CSS property
    ##
    ## Defines whether or not the back face of an element should be visible when facing the user
    result = element
    result.properties["backface-visibility"] = values.toJoinedString()

proc background*(values: varargs[string]): CssAttribute =
    ## Constructs the `background` CSS property
    ##
    ## A shorthand property for all the background-\* properties
    result = ["background", values.toJoinedString()]
proc setBackground*(element: var CssElement, values: varargs[string]) =
    ## Sets the `background` CSS property
    ##
    ## A shorthand property for all the background-\* properties
    element.properties["background"] = values.toJoinedString()
proc setBackground*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `background` CSS property
    ##
    ## A shorthand property for all the background-\* properties
    result = element
    result.properties["background"] = values.toJoinedString()

proc backgroundAttachment*(values: varargs[string]): CssAttribute =
    ## Constructs the `background-attachment` CSS property
    ##
    ## Sets whether a background image scrolls with the rest of the page, or is fixed
    result = ["background-attachment", values.toJoinedString()]
proc setBackgroundAttachment*(element: var CssElement, values: varargs[string]) =
    ## Sets the `background-attachment` CSS property
    ##
    ## Sets whether a background image scrolls with the rest of the page, or is fixed
    element.properties["background-attachment"] = values.toJoinedString()
proc setBackgroundAttachment*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `background-attachment` CSS property
    ##
    ## Sets whether a background image scrolls with the rest of the page, or is fixed
    result = element
    result.properties["background-attachment"] = values.toJoinedString()

proc backgroundBlendMode*(values: varargs[string]): CssAttribute =
    ## Constructs the `background-blend-mode` CSS property
    ##
    ## Specifies the blending mode of each background layer (color/image)
    result = ["background-blend-mode", values.toJoinedString()]
proc setBackgroundBlendMode*(element: var CssElement, values: varargs[string]) =
    ## Sets the `background-blend-mode` CSS property
    ##
    ## Specifies the blending mode of each background layer (color/image)
    element.properties["background-blend-mode"] = values.toJoinedString()
proc setBackgroundBlendMode*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `background-blend-mode` CSS property
    ##
    ## Specifies the blending mode of each background layer (color/image)
    result = element
    result.properties["background-blend-mode"] = values.toJoinedString()

proc backgroundClip*(values: varargs[string]): CssAttribute =
    ## Constructs the `background-clip` CSS property
    ##
    ## Defines how far the background (color or image) should extend within an element
    result = ["background-clip", values.toJoinedString()]
proc setBackgroundClip*(element: var CssElement, values: varargs[string]) =
    ## Sets the `background-clip` CSS property
    ##
    ## Defines how far the background (color or image) should extend within an element
    element.properties["background-clip"] = values.toJoinedString()
proc setBackgroundClip*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `background-clip` CSS property
    ##
    ## Defines how far the background (color or image) should extend within an element
    result = element
    result.properties["background-clip"] = values.toJoinedString()

proc backgroundColor*(values: varargs[string]): CssAttribute =
    ## Constructs the `background-color` CSS property
    ##
    ## Specifies the background color of an element
    result = ["background-color", values.toJoinedString()]
proc setBackgroundColor*(element: var CssElement, values: varargs[string]) =
    ## Sets the `background-color` CSS property
    ##
    ## Specifies the background color of an element
    element.properties["background-color"] = values.toJoinedString()
proc setBackgroundColor*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `background-color` CSS property
    ##
    ## Specifies the background color of an element
    result = element
    result.properties["background-color"] = values.toJoinedString()

proc backgroundColour*(values: varargs[string]): CssAttribute =
    ## Constructs the `background-color` CSS property
    ##
    ## Specifies the background color of an element
    result = ["background-color", values.toJoinedString()]
proc setBackgroundColour*(element: var CssElement, values: varargs[string]) =
    ## Sets the `background-color` CSS property
    ##
    ## Specifies the background color of an element
    element.properties["background-color"] = values.toJoinedString()
proc setBackgroundColour*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `background-color` CSS property
    ##
    ## Specifies the background color of an element
    result = element
    result.properties["background-color"] = values.toJoinedString()

proc backgroundImage*(values: varargs[string]): CssAttribute =
    ## Constructs the `background-image` CSS property
    ##
    ## Specifies one or more background images for an element
    result = ["background-image", values.toJoinedString()]
proc setBackgroundImage*(element: var CssElement, values: varargs[string]) =
    ## Sets the `background-image` CSS property
    ##
    ## Specifies one or more background images for an element
    element.properties["background-image"] = values.toJoinedString()
proc setBackgroundImage*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `background-image` CSS property
    ##
    ## Specifies one or more background images for an element
    result = element
    result.properties["background-image"] = values.toJoinedString()

proc backgroundOrigin*(values: varargs[string]): CssAttribute =
    ## Constructs the `background-origin` CSS property
    ##
    ## Specifies the origin position of a background image
    result = ["background-origin", values.toJoinedString()]
proc setBackgroundOrigin*(element: var CssElement, values: varargs[string]) =
    ## Sets the `background-origin` CSS property
    ##
    ## Specifies the origin position of a background image
    element.properties["background-origin"] = values.toJoinedString()
proc setBackgroundOrigin*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `background-origin` CSS property
    ##
    ## Specifies the origin position of a background image
    result = element
    result.properties["background-origin"] = values.toJoinedString()

proc backgroundPosition*(values: varargs[string]): CssAttribute =
    ## Constructs the `background-position` CSS property
    ##
    ## Specifies the position of a background image
    result = ["background-position", values.toJoinedString()]
proc setBackgroundPosition*(element: var CssElement, values: varargs[string]) =
    ## Sets the `background-position` CSS property
    ##
    ## Specifies the position of a background image
    element.properties["background-position"] = values.toJoinedString()
proc setBackgroundPosition*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `background-position` CSS property
    ##
    ## Specifies the position of a background image
    result = element
    result.properties["background-position"] = values.toJoinedString()

proc backgroundPositionX*(values: varargs[string]): CssAttribute =
    ## Constructs the `background-position-x` CSS property
    ##
    ## Specifies the position of a background image on x-axis
    result = ["background-position-x", values.toJoinedString()]
proc setBackgroundPositionX*(element: var CssElement, values: varargs[string]) =
    ## Sets the `background-position-x` CSS property
    ##
    ## Specifies the position of a background image on x-axis
    element.properties["background-position-x"] = values.toJoinedString()
proc setBackgroundPositionX*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `background-position-x` CSS property
    ##
    ## Specifies the position of a background image on x-axis
    result = element
    result.properties["background-position-x"] = values.toJoinedString()

proc backgroundPositionY*(values: varargs[string]): CssAttribute =
    ## Constructs the `background-position-y` CSS property
    ##
    ## Specifies the position of a background image on y-axis
    result = ["background-position-y", values.toJoinedString()]
proc setBackgroundPositionY*(element: var CssElement, values: varargs[string]) =
    ## Sets the `background-position-y` CSS property
    ##
    ## Specifies the position of a background image on y-axis
    element.properties["background-position-y"] = values.toJoinedString()
proc setBackgroundPositionY*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `background-position-y` CSS property
    ##
    ## Specifies the position of a background image on y-axis
    result = element
    result.properties["background-position-y"] = values.toJoinedString()

proc backgroundRepeat*(values: varargs[string]): CssAttribute =
    ## Constructs the `background-repeat` CSS property
    ##
    ## Sets if/how a background image will be repeated
    result = ["background-repeat", values.toJoinedString()]
proc setBackgroundRepeat*(element: var CssElement, values: varargs[string]) =
    ## Sets the `background-repeat` CSS property
    ##
    ## Sets if/how a background image will be repeated
    element.properties["background-repeat"] = values.toJoinedString()
proc setBackgroundRepeat*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `background-repeat` CSS property
    ##
    ## Sets if/how a background image will be repeated
    result = element
    result.properties["background-repeat"] = values.toJoinedString()

proc backgroundSize*(values: varargs[string]): CssAttribute =
    ## Constructs the `background-size` CSS property
    ##
    ## Specifies the size of the background images
    result = ["background-size", values.toJoinedString()]
proc setBackgroundSize*(element: var CssElement, values: varargs[string]) =
    ## Sets the `background-size` CSS property
    ##
    ## Specifies the size of the background images
    element.properties["background-size"] = values.toJoinedString()
proc setBackgroundSize*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `background-size` CSS property
    ##
    ## Specifies the size of the background images
    result = element
    result.properties["background-size"] = values.toJoinedString()

proc blockSize*(values: varargs[string]): CssAttribute =
    ## Constructs the `block-size` CSS property
    ##
    ## Specifies the size of an element in block direction
    result = ["block-size", values.toJoinedString()]
proc setBlockSize*(element: var CssElement, values: varargs[string]) =
    ## Sets the `block-size` CSS property
    ##
    ## Specifies the size of an element in block direction
    element.properties["block-size"] = values.toJoinedString()
proc setBlockSize*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `block-size` CSS property
    ##
    ## Specifies the size of an element in block direction
    result = element
    result.properties["block-size"] = values.toJoinedString()

proc border*(values: varargs[string]): CssAttribute =
    ## Constructs the `border` CSS property
    ##
    ## A shorthand property for border-width, border-style and border-color
    result = ["border", values.toJoinedString()]
proc setBorder*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border` CSS property
    ##
    ## A shorthand property for border-width, border-style and border-color
    element.properties["border"] = values.toJoinedString()
proc setBorder*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border` CSS property
    ##
    ## A shorthand property for border-width, border-style and border-color
    result = element
    result.properties["border"] = values.toJoinedString()

proc borderBlock*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-block` CSS property
    ##
    ## A shorthand property for border-block-width, border-block-style and border-block-color
    result = ["border-block", values.toJoinedString()]
proc setBorderBlock*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-block` CSS property
    ##
    ## A shorthand property for border-block-width, border-block-style and border-block-color
    element.properties["border-block"] = values.toJoinedString()
proc setBorderBlock*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-block` CSS property
    ##
    ## A shorthand property for border-block-width, border-block-style and border-block-color
    result = element
    result.properties["border-block"] = values.toJoinedString()

proc borderBlockColor*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-block-color` CSS property
    ##
    ## Sets the color of the borders at start and end in the block direction
    result = ["border-block-color", values.toJoinedString()]
proc setBorderBlockColor*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-block-color` CSS property
    ##
    ## Sets the color of the borders at start and end in the block direction
    element.properties["border-block-color"] = values.toJoinedString()
proc setBorderBlockColor*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-block-color` CSS property
    ##
    ## Sets the color of the borders at start and end in the block direction
    result = element
    result.properties["border-block-color"] = values.toJoinedString()

proc borderBlockColour*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-block-color` CSS property
    ##
    ## Sets the color of the borders at start and end in the block direction
    result = ["border-block-color", values.toJoinedString()]
proc setBorderBlockColour*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-block-color` CSS property
    ##
    ## Sets the color of the borders at start and end in the block direction
    element.properties["border-block-color"] = values.toJoinedString()
proc setBorderBlockColour*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-block-color` CSS property
    ##
    ## Sets the color of the borders at start and end in the block direction
    result = element
    result.properties["border-block-color"] = values.toJoinedString()

proc borderBlockEnd*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-block-end` CSS property
    ##
    ## A shorthand property for border-block-end-width, border-block-end-style and border-block-end-color
    result = ["border-block-end", values.toJoinedString()]
proc setBorderBlockEnd*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-block-end` CSS property
    ##
    ## A shorthand property for border-block-end-width, border-block-end-style and border-block-end-color
    element.properties["border-block-end"] = values.toJoinedString()
proc setBorderBlockEnd*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-block-end` CSS property
    ##
    ## A shorthand property for border-block-end-width, border-block-end-style and border-block-end-color
    result = element
    result.properties["border-block-end"] = values.toJoinedString()

proc borderBlockEndColor*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-block-end-color` CSS property
    ##
    ## Sets the color of the border at the end in the block direction
    result = ["border-block-end-color", values.toJoinedString()]
proc setBorderBlockEndColor*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-block-end-color` CSS property
    ##
    ## Sets the color of the border at the end in the block direction
    element.properties["border-block-end-color"] = values.toJoinedString()
proc setBorderBlockEndColor*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-block-end-color` CSS property
    ##
    ## Sets the color of the border at the end in the block direction
    result = element
    result.properties["border-block-end-color"] = values.toJoinedString()

proc borderBlockEndColour*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-block-end-color` CSS property
    ##
    ## Sets the color of the border at the end in the block direction
    result = ["border-block-end-color", values.toJoinedString()]
proc setBorderBlockEndColour*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-block-end-color` CSS property
    ##
    ## Sets the color of the border at the end in the block direction
    element.properties["border-block-end-color"] = values.toJoinedString()
proc setBorderBlockEndColour*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-block-end-color` CSS property
    ##
    ## Sets the color of the border at the end in the block direction
    result = element
    result.properties["border-block-end-color"] = values.toJoinedString()

proc borderBlockEndStyle*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-block-end-style` CSS property
    ##
    ## Sets the style of the border at the end in the block direction
    result = ["border-block-end-style", values.toJoinedString()]
proc setBorderBlockEndStyle*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-block-end-style` CSS property
    ##
    ## Sets the style of the border at the end in the block direction
    element.properties["border-block-end-style"] = values.toJoinedString()
proc setBorderBlockEndStyle*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-block-end-style` CSS property
    ##
    ## Sets the style of the border at the end in the block direction
    result = element
    result.properties["border-block-end-style"] = values.toJoinedString()

proc borderBlockEndWidth*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-block-end-width` CSS property
    ##
    ## Sets the width of the border at the end in the block direction
    result = ["border-block-end-width", values.toJoinedString()]
proc setBorderBlockEndWidth*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-block-end-width` CSS property
    ##
    ## Sets the width of the border at the end in the block direction
    element.properties["border-block-end-width"] = values.toJoinedString()
proc setBorderBlockEndWidth*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-block-end-width` CSS property
    ##
    ## Sets the width of the border at the end in the block direction
    result = element
    result.properties["border-block-end-width"] = values.toJoinedString()

proc borderBlockStart*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-block-start` CSS property
    ##
    ## A shorthand property for border-block-start-width, border-block-start-style and border-block-start-color
    result = ["border-block-start", values.toJoinedString()]
proc setBorderBlockStart*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-block-start` CSS property
    ##
    ## A shorthand property for border-block-start-width, border-block-start-style and border-block-start-color
    element.properties["border-block-start"] = values.toJoinedString()
proc setBorderBlockStart*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-block-start` CSS property
    ##
    ## A shorthand property for border-block-start-width, border-block-start-style and border-block-start-color
    result = element
    result.properties["border-block-start"] = values.toJoinedString()

proc borderBlockStartColor*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-block-start-color` CSS property
    ##
    ## Sets the color of the border at the start in the block direction
    result = ["border-block-start-color", values.toJoinedString()]
proc setBorderBlockStartColor*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-block-start-color` CSS property
    ##
    ## Sets the color of the border at the start in the block direction
    element.properties["border-block-start-color"] = values.toJoinedString()
proc setBorderBlockStartColor*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-block-start-color` CSS property
    ##
    ## Sets the color of the border at the start in the block direction
    result = element
    result.properties["border-block-start-color"] = values.toJoinedString()

proc borderBlockStartColour*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-block-start-color` CSS property
    ##
    ## Sets the color of the border at the start in the block direction
    result = ["border-block-start-color", values.toJoinedString()]
proc setBorderBlockStartColour*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-block-start-color` CSS property
    ##
    ## Sets the color of the border at the start in the block direction
    element.properties["border-block-start-color"] = values.toJoinedString()
proc setBorderBlockStartColour*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-block-start-color` CSS property
    ##
    ## Sets the color of the border at the start in the block direction
    result = element
    result.properties["border-block-start-color"] = values.toJoinedString()

proc borderBlockStartStyle*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-block-start-style` CSS property
    ##
    ## Sets the style of the border at the start in the block direction
    result = ["border-block-start-style", values.toJoinedString()]
proc setBorderBlockStartStyle*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-block-start-style` CSS property
    ##
    ## Sets the style of the border at the start in the block direction
    element.properties["border-block-start-style"] = values.toJoinedString()
proc setBorderBlockStartStyle*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-block-start-style` CSS property
    ##
    ## Sets the style of the border at the start in the block direction
    result = element
    result.properties["border-block-start-style"] = values.toJoinedString()

proc borderBlockStartWidth*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-block-start-width` CSS property
    ##
    ## Sets the width of the border at the start in the block direction
    result = ["border-block-start-width", values.toJoinedString()]
proc setBorderBlockStartWidth*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-block-start-width` CSS property
    ##
    ## Sets the width of the border at the start in the block direction
    element.properties["border-block-start-width"] = values.toJoinedString()
proc setBorderBlockStartWidth*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-block-start-width` CSS property
    ##
    ## Sets the width of the border at the start in the block direction
    result = element
    result.properties["border-block-start-width"] = values.toJoinedString()

proc borderBlockStyle*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-block-style` CSS property
    ##
    ## Sets the style of the borders at start and end in the block direction
    result = ["border-block-style", values.toJoinedString()]
proc setBorderBlockStyle*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-block-style` CSS property
    ##
    ## Sets the style of the borders at start and end in the block direction
    element.properties["border-block-style"] = values.toJoinedString()
proc setBorderBlockStyle*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-block-style` CSS property
    ##
    ## Sets the style of the borders at start and end in the block direction
    result = element
    result.properties["border-block-style"] = values.toJoinedString()

proc borderBlockWidth*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-block-width` CSS property
    ##
    ## Sets the width of the borders at start and end in the block direction
    result = ["border-block-width", values.toJoinedString()]
proc setBorderBlockWidth*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-block-width` CSS property
    ##
    ## Sets the width of the borders at start and end in the block direction
    element.properties["border-block-width"] = values.toJoinedString()
proc setBorderBlockWidth*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-block-width` CSS property
    ##
    ## Sets the width of the borders at start and end in the block direction
    result = element
    result.properties["border-block-width"] = values.toJoinedString()

proc borderBottom*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-bottom` CSS property
    ##
    ## A shorthand property for border-bottom-width, border-bottom-style and border-bottom-color
    result = ["border-bottom", values.toJoinedString()]
proc setBorderBottom*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-bottom` CSS property
    ##
    ## A shorthand property for border-bottom-width, border-bottom-style and border-bottom-color
    element.properties["border-bottom"] = values.toJoinedString()
proc setBorderBottom*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-bottom` CSS property
    ##
    ## A shorthand property for border-bottom-width, border-bottom-style and border-bottom-color
    result = element
    result.properties["border-bottom"] = values.toJoinedString()

proc borderBottomColor*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-bottom-color` CSS property
    ##
    ## Sets the color of the bottom border
    result = ["border-bottom-color", values.toJoinedString()]
proc setBorderBottomColor*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-bottom-color` CSS property
    ##
    ## Sets the color of the bottom border
    element.properties["border-bottom-color"] = values.toJoinedString()
proc setBorderBottomColor*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-bottom-color` CSS property
    ##
    ## Sets the color of the bottom border
    result = element
    result.properties["border-bottom-color"] = values.toJoinedString()

proc borderBottomColour*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-bottom-color` CSS property
    ##
    ## Sets the color of the bottom border
    result = ["border-bottom-color", values.toJoinedString()]
proc setBorderBottomColour*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-bottom-color` CSS property
    ##
    ## Sets the color of the bottom border
    element.properties["border-bottom-color"] = values.toJoinedString()
proc setBorderBottomColour*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-bottom-color` CSS property
    ##
    ## Sets the color of the bottom border
    result = element
    result.properties["border-bottom-color"] = values.toJoinedString()

proc borderBottomLeftRadius*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-bottom-left-radius` CSS property
    ##
    ## Defines the radius of the border of the bottom-left corner
    result = ["border-bottom-left-radius", values.toJoinedString()]
proc setBorderBottomLeftRadius*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-bottom-left-radius` CSS property
    ##
    ## Defines the radius of the border of the bottom-left corner
    element.properties["border-bottom-left-radius"] = values.toJoinedString()
proc setBorderBottomLeftRadius*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-bottom-left-radius` CSS property
    ##
    ## Defines the radius of the border of the bottom-left corner
    result = element
    result.properties["border-bottom-left-radius"] = values.toJoinedString()

proc borderBottomRightRadius*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-bottom-right-radius` CSS property
    ##
    ## Defines the radius of the border of the bottom-right corner
    result = ["border-bottom-right-radius", values.toJoinedString()]
proc setBorderBottomRightRadius*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-bottom-right-radius` CSS property
    ##
    ## Defines the radius of the border of the bottom-right corner
    element.properties["border-bottom-right-radius"] = values.toJoinedString()
proc setBorderBottomRightRadius*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-bottom-right-radius` CSS property
    ##
    ## Defines the radius of the border of the bottom-right corner
    result = element
    result.properties["border-bottom-right-radius"] = values.toJoinedString()

proc borderBottomStyle*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-bottom-style` CSS property
    ##
    ## Sets the style of the bottom border
    result = ["border-bottom-style", values.toJoinedString()]
proc setBorderBottomStyle*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-bottom-style` CSS property
    ##
    ## Sets the style of the bottom border
    element.properties["border-bottom-style"] = values.toJoinedString()
proc setBorderBottomStyle*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-bottom-style` CSS property
    ##
    ## Sets the style of the bottom border
    result = element
    result.properties["border-bottom-style"] = values.toJoinedString()

proc borderBottomWidth*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-bottom-width` CSS property
    ##
    ## Sets the width of the bottom border
    result = ["border-bottom-width", values.toJoinedString()]
proc setBorderBottomWidth*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-bottom-width` CSS property
    ##
    ## Sets the width of the bottom border
    element.properties["border-bottom-width"] = values.toJoinedString()
proc setBorderBottomWidth*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-bottom-width` CSS property
    ##
    ## Sets the width of the bottom border
    result = element
    result.properties["border-bottom-width"] = values.toJoinedString()

proc borderCollapse*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-collapse` CSS property
    ##
    ## Sets whether table borders should collapse into a single border or be separated
    result = ["border-collapse", values.toJoinedString()]
proc setBorderCollapse*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-collapse` CSS property
    ##
    ## Sets whether table borders should collapse into a single border or be separated
    element.properties["border-collapse"] = values.toJoinedString()
proc setBorderCollapse*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-collapse` CSS property
    ##
    ## Sets whether table borders should collapse into a single border or be separated
    result = element
    result.properties["border-collapse"] = values.toJoinedString()

proc borderColor*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-color` CSS property
    ##
    ## Sets the color of the four borders
    result = ["border-color", values.toJoinedString()]
proc setBorderColor*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-color` CSS property
    ##
    ## Sets the color of the four borders
    element.properties["border-color"] = values.toJoinedString()
proc setBorderColor*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-color` CSS property
    ##
    ## Sets the color of the four borders
    result = element
    result.properties["border-color"] = values.toJoinedString()

proc borderColour*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-color` CSS property
    ##
    ## Sets the color of the four borders
    result = ["border-color", values.toJoinedString()]
proc setBorderColour*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-color` CSS property
    ##
    ## Sets the color of the four borders
    element.properties["border-color"] = values.toJoinedString()
proc setBorderColour*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-color` CSS property
    ##
    ## Sets the color of the four borders
    result = element
    result.properties["border-color"] = values.toJoinedString()

proc borderEndEndRadius*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-end-end-radius` CSS property
    ##
    ## Sets the radius of the corner between the block-end and the inline-end sides of the element
    result = ["border-end-end-radius", values.toJoinedString()]
proc setBorderEndEndRadius*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-end-end-radius` CSS property
    ##
    ## Sets the radius of the corner between the block-end and the inline-end sides of the element
    element.properties["border-end-end-radius"] = values.toJoinedString()
proc setBorderEndEndRadius*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-end-end-radius` CSS property
    ##
    ## Sets the radius of the corner between the block-end and the inline-end sides of the element
    result = element
    result.properties["border-end-end-radius"] = values.toJoinedString()

proc borderEndStartRadius*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-end-start-radius` CSS property
    ##
    ## Sets the radius of the corner between the block-end and the inline-start sides of the element
    result = ["border-end-start-radius", values.toJoinedString()]
proc setBorderEndStartRadius*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-end-start-radius` CSS property
    ##
    ## Sets the radius of the corner between the block-end and the inline-start sides of the element
    element.properties["border-end-start-radius"] = values.toJoinedString()
proc setBorderEndStartRadius*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-end-start-radius` CSS property
    ##
    ## Sets the radius of the corner between the block-end and the inline-start sides of the element
    result = element
    result.properties["border-end-start-radius"] = values.toJoinedString()

proc borderImage*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-image` CSS property
    ##
    ## A shorthand property for all the border-image-\* properties
    result = ["border-image", values.toJoinedString()]
proc setBorderImage*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-image` CSS property
    ##
    ## A shorthand property for all the border-image-\* properties
    element.properties["border-image"] = values.toJoinedString()
proc setBorderImage*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-image` CSS property
    ##
    ## A shorthand property for all the border-image-\* properties
    result = element
    result.properties["border-image"] = values.toJoinedString()

proc borderImageOutset*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-image-outset` CSS property
    ##
    ## Specifies the amount by which the border image area extends beyond the border box
    result = ["border-image-outset", values.toJoinedString()]
proc setBorderImageOutset*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-image-outset` CSS property
    ##
    ## Specifies the amount by which the border image area extends beyond the border box
    element.properties["border-image-outset"] = values.toJoinedString()
proc setBorderImageOutset*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-image-outset` CSS property
    ##
    ## Specifies the amount by which the border image area extends beyond the border box
    result = element
    result.properties["border-image-outset"] = values.toJoinedString()

proc borderImageRepeat*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-image-repeat` CSS property
    ##
    ## Specifies whether the border image should be repeated, rounded or stretched
    result = ["border-image-repeat", values.toJoinedString()]
proc setBorderImageRepeat*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-image-repeat` CSS property
    ##
    ## Specifies whether the border image should be repeated, rounded or stretched
    element.properties["border-image-repeat"] = values.toJoinedString()
proc setBorderImageRepeat*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-image-repeat` CSS property
    ##
    ## Specifies whether the border image should be repeated, rounded or stretched
    result = element
    result.properties["border-image-repeat"] = values.toJoinedString()

proc borderImageSlice*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-image-slice` CSS property
    ##
    ## Specifies how to slice the border image
    result = ["border-image-slice", values.toJoinedString()]
proc setBorderImageSlice*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-image-slice` CSS property
    ##
    ## Specifies how to slice the border image
    element.properties["border-image-slice"] = values.toJoinedString()
proc setBorderImageSlice*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-image-slice` CSS property
    ##
    ## Specifies how to slice the border image
    result = element
    result.properties["border-image-slice"] = values.toJoinedString()

proc borderImageSource*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-image-source` CSS property
    ##
    ## Specifies the path to the image to be used as a border
    result = ["border-image-source", values.toJoinedString()]
proc setBorderImageSource*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-image-source` CSS property
    ##
    ## Specifies the path to the image to be used as a border
    element.properties["border-image-source"] = values.toJoinedString()
proc setBorderImageSource*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-image-source` CSS property
    ##
    ## Specifies the path to the image to be used as a border
    result = element
    result.properties["border-image-source"] = values.toJoinedString()

proc borderImageWidth*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-image-width` CSS property
    ##
    ## Specifies the width of the border image
    result = ["border-image-width", values.toJoinedString()]
proc setBorderImageWidth*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-image-width` CSS property
    ##
    ## Specifies the width of the border image
    element.properties["border-image-width"] = values.toJoinedString()
proc setBorderImageWidth*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-image-width` CSS property
    ##
    ## Specifies the width of the border image
    result = element
    result.properties["border-image-width"] = values.toJoinedString()

proc borderInline*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-inline` CSS property
    ##
    ## A shorthand property for border-inline-width, border-inline-style and border-inline-color
    result = ["border-inline", values.toJoinedString()]
proc setBorderInline*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-inline` CSS property
    ##
    ## A shorthand property for border-inline-width, border-inline-style and border-inline-color
    element.properties["border-inline"] = values.toJoinedString()
proc setBorderInline*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-inline` CSS property
    ##
    ## A shorthand property for border-inline-width, border-inline-style and border-inline-color
    result = element
    result.properties["border-inline"] = values.toJoinedString()

proc borderInlineColor*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-inline-color` CSS property
    ##
    ## Sets the color of the borders at start and end in the inline direction
    result = ["border-inline-color", values.toJoinedString()]
proc setBorderInlineColor*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-inline-color` CSS property
    ##
    ## Sets the color of the borders at start and end in the inline direction
    element.properties["border-inline-color"] = values.toJoinedString()
proc setBorderInlineColor*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-inline-color` CSS property
    ##
    ## Sets the color of the borders at start and end in the inline direction
    result = element
    result.properties["border-inline-color"] = values.toJoinedString()

proc borderInlineColour*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-inline-color` CSS property
    ##
    ## Sets the color of the borders at start and end in the inline direction
    result = ["border-inline-color", values.toJoinedString()]
proc setBorderInlineColour*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-inline-color` CSS property
    ##
    ## Sets the color of the borders at start and end in the inline direction
    element.properties["border-inline-color"] = values.toJoinedString()
proc setBorderInlineColour*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-inline-color` CSS property
    ##
    ## Sets the color of the borders at start and end in the inline direction
    result = element
    result.properties["border-inline-color"] = values.toJoinedString()

proc borderInlineEnd*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-inline-end` CSS property
    ##
    ## A shorthand property for border-inline-end-width, border-inline-end-style and border-inline-end-color
    result = ["border-inline-end", values.toJoinedString()]
proc setBorderInlineEnd*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-inline-end` CSS property
    ##
    ## A shorthand property for border-inline-end-width, border-inline-end-style and border-inline-end-color
    element.properties["border-inline-end"] = values.toJoinedString()
proc setBorderInlineEnd*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-inline-end` CSS property
    ##
    ## A shorthand property for border-inline-end-width, border-inline-end-style and border-inline-end-color
    result = element
    result.properties["border-inline-end"] = values.toJoinedString()

proc borderInlineEndColor*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-inline-end-color` CSS property
    ##
    ## Sets the color of the border at the end in the inline direction
    result = ["border-inline-end-color", values.toJoinedString()]
proc setBorderInlineEndColor*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-inline-end-color` CSS property
    ##
    ## Sets the color of the border at the end in the inline direction
    element.properties["border-inline-end-color"] = values.toJoinedString()
proc setBorderInlineEndColor*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-inline-end-color` CSS property
    ##
    ## Sets the color of the border at the end in the inline direction
    result = element
    result.properties["border-inline-end-color"] = values.toJoinedString()

proc borderInlineEndColour*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-inline-end-color` CSS property
    ##
    ## Sets the color of the border at the end in the inline direction
    result = ["border-inline-end-color", values.toJoinedString()]
proc setBorderInlineEndColour*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-inline-end-color` CSS property
    ##
    ## Sets the color of the border at the end in the inline direction
    element.properties["border-inline-end-color"] = values.toJoinedString()
proc setBorderInlineEndColour*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-inline-end-color` CSS property
    ##
    ## Sets the color of the border at the end in the inline direction
    result = element
    result.properties["border-inline-end-color"] = values.toJoinedString()

proc borderInlineEndStyle*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-inline-end-style` CSS property
    ##
    ## Sets the style of the border at the end in the inline direction
    result = ["border-inline-end-style", values.toJoinedString()]
proc setBorderInlineEndStyle*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-inline-end-style` CSS property
    ##
    ## Sets the style of the border at the end in the inline direction
    element.properties["border-inline-end-style"] = values.toJoinedString()
proc setBorderInlineEndStyle*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-inline-end-style` CSS property
    ##
    ## Sets the style of the border at the end in the inline direction
    result = element
    result.properties["border-inline-end-style"] = values.toJoinedString()

proc borderInlineEndWidth*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-inline-end-width` CSS property
    ##
    ## Sets the width of the border at the end in the inline direction
    result = ["border-inline-end-width", values.toJoinedString()]
proc setBorderInlineEndWidth*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-inline-end-width` CSS property
    ##
    ## Sets the width of the border at the end in the inline direction
    element.properties["border-inline-end-width"] = values.toJoinedString()
proc setBorderInlineEndWidth*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-inline-end-width` CSS property
    ##
    ## Sets the width of the border at the end in the inline direction
    result = element
    result.properties["border-inline-end-width"] = values.toJoinedString()

proc borderInlineStart*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-inline-start` CSS property
    ##
    ## A shorthand property for border-inline-start-width, border-inline-start-style and border-inline-start-color
    result = ["border-inline-start", values.toJoinedString()]
proc setBorderInlineStart*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-inline-start` CSS property
    ##
    ## A shorthand property for border-inline-start-width, border-inline-start-style and border-inline-start-color
    element.properties["border-inline-start"] = values.toJoinedString()
proc setBorderInlineStart*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-inline-start` CSS property
    ##
    ## A shorthand property for border-inline-start-width, border-inline-start-style and border-inline-start-color
    result = element
    result.properties["border-inline-start"] = values.toJoinedString()

proc borderInlineStartColor*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-inline-start-color` CSS property
    ##
    ## Sets the color of the border at the start in the inline direction
    result = ["border-inline-start-color", values.toJoinedString()]
proc setBorderInlineStartColor*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-inline-start-color` CSS property
    ##
    ## Sets the color of the border at the start in the inline direction
    element.properties["border-inline-start-color"] = values.toJoinedString()
proc setBorderInlineStartColor*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-inline-start-color` CSS property
    ##
    ## Sets the color of the border at the start in the inline direction
    result = element
    result.properties["border-inline-start-color"] = values.toJoinedString()

proc borderInlineStartColour*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-inline-start-color` CSS property
    ##
    ## Sets the color of the border at the start in the inline direction
    result = ["border-inline-start-color", values.toJoinedString()]
proc setBorderInlineStartColour*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-inline-start-color` CSS property
    ##
    ## Sets the color of the border at the start in the inline direction
    element.properties["border-inline-start-color"] = values.toJoinedString()
proc setBorderInlineStartColour*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-inline-start-color` CSS property
    ##
    ## Sets the color of the border at the start in the inline direction
    result = element
    result.properties["border-inline-start-color"] = values.toJoinedString()

proc borderInlineStartStyle*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-inline-start-style` CSS property
    ##
    ## Sets the style of the border at the start in the inline direction
    result = ["border-inline-start-style", values.toJoinedString()]
proc setBorderInlineStartStyle*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-inline-start-style` CSS property
    ##
    ## Sets the style of the border at the start in the inline direction
    element.properties["border-inline-start-style"] = values.toJoinedString()
proc setBorderInlineStartStyle*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-inline-start-style` CSS property
    ##
    ## Sets the style of the border at the start in the inline direction
    result = element
    result.properties["border-inline-start-style"] = values.toJoinedString()

proc borderInlineStartWidth*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-inline-start-width` CSS property
    ##
    ## Sets the width of the border at the start in the inline direction
    result = ["border-inline-start-width", values.toJoinedString()]
proc setBorderInlineStartWidth*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-inline-start-width` CSS property
    ##
    ## Sets the width of the border at the start in the inline direction
    element.properties["border-inline-start-width"] = values.toJoinedString()
proc setBorderInlineStartWidth*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-inline-start-width` CSS property
    ##
    ## Sets the width of the border at the start in the inline direction
    result = element
    result.properties["border-inline-start-width"] = values.toJoinedString()

proc borderInlineStyle*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-inline-style` CSS property
    ##
    ## Sets the style of the borders at start and end in the inline direction
    result = ["border-inline-style", values.toJoinedString()]
proc setBorderInlineStyle*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-inline-style` CSS property
    ##
    ## Sets the style of the borders at start and end in the inline direction
    element.properties["border-inline-style"] = values.toJoinedString()
proc setBorderInlineStyle*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-inline-style` CSS property
    ##
    ## Sets the style of the borders at start and end in the inline direction
    result = element
    result.properties["border-inline-style"] = values.toJoinedString()

proc borderInlineWidth*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-inline-width` CSS property
    ##
    ## Sets the width of the borders at start and end in the inline direction
    result = ["border-inline-width", values.toJoinedString()]
proc setBorderInlineWidth*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-inline-width` CSS property
    ##
    ## Sets the width of the borders at start and end in the inline direction
    element.properties["border-inline-width"] = values.toJoinedString()
proc setBorderInlineWidth*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-inline-width` CSS property
    ##
    ## Sets the width of the borders at start and end in the inline direction
    result = element
    result.properties["border-inline-width"] = values.toJoinedString()

proc borderLeft*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-left` CSS property
    ##
    ## A shorthand property for all the border-left-\* properties
    result = ["border-left", values.toJoinedString()]
proc setBorderLeft*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-left` CSS property
    ##
    ## A shorthand property for all the border-left-\* properties
    element.properties["border-left"] = values.toJoinedString()
proc setBorderLeft*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-left` CSS property
    ##
    ## A shorthand property for all the border-left-\* properties
    result = element
    result.properties["border-left"] = values.toJoinedString()

proc borderLeftColor*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-left-color` CSS property
    ##
    ## Sets the color of the left border
    result = ["border-left-color", values.toJoinedString()]
proc setBorderLeftColor*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-left-color` CSS property
    ##
    ## Sets the color of the left border
    element.properties["border-left-color"] = values.toJoinedString()
proc setBorderLeftColor*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-left-color` CSS property
    ##
    ## Sets the color of the left border
    result = element
    result.properties["border-left-color"] = values.toJoinedString()

proc borderLeftColour*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-left-color` CSS property
    ##
    ## Sets the color of the left border
    result = ["border-left-color", values.toJoinedString()]
proc setBorderLeftColour*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-left-color` CSS property
    ##
    ## Sets the color of the left border
    element.properties["border-left-color"] = values.toJoinedString()
proc setBorderLeftColour*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-left-color` CSS property
    ##
    ## Sets the color of the left border
    result = element
    result.properties["border-left-color"] = values.toJoinedString()

proc borderLeftStyle*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-left-style` CSS property
    ##
    ## Sets the style of the left border
    result = ["border-left-style", values.toJoinedString()]
proc setBorderLeftStyle*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-left-style` CSS property
    ##
    ## Sets the style of the left border
    element.properties["border-left-style"] = values.toJoinedString()
proc setBorderLeftStyle*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-left-style` CSS property
    ##
    ## Sets the style of the left border
    result = element
    result.properties["border-left-style"] = values.toJoinedString()

proc borderLeftWidth*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-left-width` CSS property
    ##
    ## Sets the width of the left border
    result = ["border-left-width", values.toJoinedString()]
proc setBorderLeftWidth*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-left-width` CSS property
    ##
    ## Sets the width of the left border
    element.properties["border-left-width"] = values.toJoinedString()
proc setBorderLeftWidth*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-left-width` CSS property
    ##
    ## Sets the width of the left border
    result = element
    result.properties["border-left-width"] = values.toJoinedString()

proc borderRadius*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-radius` CSS property
    ##
    ## A shorthand property for the four border-\*-radius properties
    result = ["border-radius", values.toJoinedString()]
proc setBorderRadius*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-radius` CSS property
    ##
    ## A shorthand property for the four border-\*-radius properties
    element.properties["border-radius"] = values.toJoinedString()
proc setBorderRadius*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-radius` CSS property
    ##
    ## A shorthand property for the four border-\*-radius properties
    result = element
    result.properties["border-radius"] = values.toJoinedString()

proc borderRight*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-right` CSS property
    ##
    ## A shorthand property for all the border-right-\* properties
    result = ["border-right", values.toJoinedString()]
proc setBorderRight*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-right` CSS property
    ##
    ## A shorthand property for all the border-right-\* properties
    element.properties["border-right"] = values.toJoinedString()
proc setBorderRight*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-right` CSS property
    ##
    ## A shorthand property for all the border-right-\* properties
    result = element
    result.properties["border-right"] = values.toJoinedString()

proc borderRightColor*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-right-color` CSS property
    ##
    ## Sets the color of the right border
    result = ["border-right-color", values.toJoinedString()]
proc setBorderRightColor*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-right-color` CSS property
    ##
    ## Sets the color of the right border
    element.properties["border-right-color"] = values.toJoinedString()
proc setBorderRightColor*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-right-color` CSS property
    ##
    ## Sets the color of the right border
    result = element
    result.properties["border-right-color"] = values.toJoinedString()

proc borderRightColour*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-right-color` CSS property
    ##
    ## Sets the color of the right border
    result = ["border-right-color", values.toJoinedString()]
proc setBorderRightColour*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-right-color` CSS property
    ##
    ## Sets the color of the right border
    element.properties["border-right-color"] = values.toJoinedString()
proc setBorderRightColour*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-right-color` CSS property
    ##
    ## Sets the color of the right border
    result = element
    result.properties["border-right-color"] = values.toJoinedString()

proc borderRightStyle*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-right-style` CSS property
    ##
    ## Sets the style of the right border
    result = ["border-right-style", values.toJoinedString()]
proc setBorderRightStyle*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-right-style` CSS property
    ##
    ## Sets the style of the right border
    element.properties["border-right-style"] = values.toJoinedString()
proc setBorderRightStyle*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-right-style` CSS property
    ##
    ## Sets the style of the right border
    result = element
    result.properties["border-right-style"] = values.toJoinedString()

proc borderRightWidth*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-right-width` CSS property
    ##
    ## Sets the width of the right border
    result = ["border-right-width", values.toJoinedString()]
proc setBorderRightWidth*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-right-width` CSS property
    ##
    ## Sets the width of the right border
    element.properties["border-right-width"] = values.toJoinedString()
proc setBorderRightWidth*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-right-width` CSS property
    ##
    ## Sets the width of the right border
    result = element
    result.properties["border-right-width"] = values.toJoinedString()

proc borderSpacing*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-spacing` CSS property
    ##
    ## Sets the distance between the borders of adjacent cells
    result = ["border-spacing", values.toJoinedString()]
proc setBorderSpacing*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-spacing` CSS property
    ##
    ## Sets the distance between the borders of adjacent cells
    element.properties["border-spacing"] = values.toJoinedString()
proc setBorderSpacing*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-spacing` CSS property
    ##
    ## Sets the distance between the borders of adjacent cells
    result = element
    result.properties["border-spacing"] = values.toJoinedString()

proc borderStartEndRadius*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-start-end-radius` CSS property
    ##
    ## Sets the radius of the corner between the block-start and the inline-end sides of the element
    result = ["border-start-end-radius", values.toJoinedString()]
proc setBorderStartEndRadius*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-start-end-radius` CSS property
    ##
    ## Sets the radius of the corner between the block-start and the inline-end sides of the element
    element.properties["border-start-end-radius"] = values.toJoinedString()
proc setBorderStartEndRadius*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-start-end-radius` CSS property
    ##
    ## Sets the radius of the corner between the block-start and the inline-end sides of the element
    result = element
    result.properties["border-start-end-radius"] = values.toJoinedString()

proc borderStartStartRadius*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-start-start-radius` CSS property
    ##
    ## Sets the radius of the corner between the block-start and the inline-start sides of the element
    result = ["border-start-start-radius", values.toJoinedString()]
proc setBorderStartStartRadius*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-start-start-radius` CSS property
    ##
    ## Sets the radius of the corner between the block-start and the inline-start sides of the element
    element.properties["border-start-start-radius"] = values.toJoinedString()
proc setBorderStartStartRadius*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-start-start-radius` CSS property
    ##
    ## Sets the radius of the corner between the block-start and the inline-start sides of the element
    result = element
    result.properties["border-start-start-radius"] = values.toJoinedString()

proc borderStyle*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-style` CSS property
    ##
    ## Sets the style of the four borders
    result = ["border-style", values.toJoinedString()]
proc setBorderStyle*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-style` CSS property
    ##
    ## Sets the style of the four borders
    element.properties["border-style"] = values.toJoinedString()
proc setBorderStyle*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-style` CSS property
    ##
    ## Sets the style of the four borders
    result = element
    result.properties["border-style"] = values.toJoinedString()

proc borderTop*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-top` CSS property
    ##
    ## A shorthand property for border-top-width, border-top-style and border-top-color
    result = ["border-top", values.toJoinedString()]
proc setBorderTop*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-top` CSS property
    ##
    ## A shorthand property for border-top-width, border-top-style and border-top-color
    element.properties["border-top"] = values.toJoinedString()
proc setBorderTop*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-top` CSS property
    ##
    ## A shorthand property for border-top-width, border-top-style and border-top-color
    result = element
    result.properties["border-top"] = values.toJoinedString()

proc borderTopColor*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-top-color` CSS property
    ##
    ## Sets the color of the top border
    result = ["border-top-color", values.toJoinedString()]
proc setBorderTopColor*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-top-color` CSS property
    ##
    ## Sets the color of the top border
    element.properties["border-top-color"] = values.toJoinedString()
proc setBorderTopColor*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-top-color` CSS property
    ##
    ## Sets the color of the top border
    result = element
    result.properties["border-top-color"] = values.toJoinedString()

proc borderTopColour*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-top-color` CSS property
    ##
    ## Sets the color of the top border
    result = ["border-top-color", values.toJoinedString()]
proc setBorderTopColour*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-top-color` CSS property
    ##
    ## Sets the color of the top border
    element.properties["border-top-color"] = values.toJoinedString()
proc setBorderTopColour*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-top-color` CSS property
    ##
    ## Sets the color of the top border
    result = element
    result.properties["border-top-color"] = values.toJoinedString()

proc borderTopLeftRadius*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-top-left-radius` CSS property
    ##
    ## Defines the radius of the border of the top-left corner
    result = ["border-top-left-radius", values.toJoinedString()]
proc setBorderTopLeftRadius*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-top-left-radius` CSS property
    ##
    ## Defines the radius of the border of the top-left corner
    element.properties["border-top-left-radius"] = values.toJoinedString()
proc setBorderTopLeftRadius*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-top-left-radius` CSS property
    ##
    ## Defines the radius of the border of the top-left corner
    result = element
    result.properties["border-top-left-radius"] = values.toJoinedString()

proc borderTopRightRadius*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-top-right-radius` CSS property
    ##
    ## Defines the radius of the border of the top-right corner
    result = ["border-top-right-radius", values.toJoinedString()]
proc setBorderTopRightRadius*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-top-right-radius` CSS property
    ##
    ## Defines the radius of the border of the top-right corner
    element.properties["border-top-right-radius"] = values.toJoinedString()
proc setBorderTopRightRadius*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-top-right-radius` CSS property
    ##
    ## Defines the radius of the border of the top-right corner
    result = element
    result.properties["border-top-right-radius"] = values.toJoinedString()

proc borderTopStyle*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-top-style` CSS property
    ##
    ## Sets the style of the top border
    result = ["border-top-style", values.toJoinedString()]
proc setBorderTopStyle*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-top-style` CSS property
    ##
    ## Sets the style of the top border
    element.properties["border-top-style"] = values.toJoinedString()
proc setBorderTopStyle*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-top-style` CSS property
    ##
    ## Sets the style of the top border
    result = element
    result.properties["border-top-style"] = values.toJoinedString()

proc borderTopWidth*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-top-width` CSS property
    ##
    ## Sets the width of the top border
    result = ["border-top-width", values.toJoinedString()]
proc setBorderTopWidth*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-top-width` CSS property
    ##
    ## Sets the width of the top border
    element.properties["border-top-width"] = values.toJoinedString()
proc setBorderTopWidth*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-top-width` CSS property
    ##
    ## Sets the width of the top border
    result = element
    result.properties["border-top-width"] = values.toJoinedString()

proc borderWidth*(values: varargs[string]): CssAttribute =
    ## Constructs the `border-width` CSS property
    ##
    ## Sets the width of the four borders
    result = ["border-width", values.toJoinedString()]
proc setBorderWidth*(element: var CssElement, values: varargs[string]) =
    ## Sets the `border-width` CSS property
    ##
    ## Sets the width of the four borders
    element.properties["border-width"] = values.toJoinedString()
proc setBorderWidth*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `border-width` CSS property
    ##
    ## Sets the width of the four borders
    result = element
    result.properties["border-width"] = values.toJoinedString()

proc bottom*(values: varargs[string]): CssAttribute =
    ## Constructs the `bottom` CSS property
    ##
    ## Sets the elements position, from the bottom of its parent element
    result = ["bottom", values.toJoinedString()]
proc setBottom*(element: var CssElement, values: varargs[string]) =
    ## Sets the `bottom` CSS property
    ##
    ## Sets the elements position, from the bottom of its parent element
    element.properties["bottom"] = values.toJoinedString()
proc setBottom*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `bottom` CSS property
    ##
    ## Sets the elements position, from the bottom of its parent element
    result = element
    result.properties["bottom"] = values.toJoinedString()

proc boxDecorationBreak*(values: varargs[string]): CssAttribute =
    ## Constructs the `box-decoration-break` CSS property
    ##
    ## Sets the behavior of the background and border of an element at page-break, or, for in-line elements, at line-break.
    result = ["box-decoration-break", values.toJoinedString()]
proc setBoxDecorationBreak*(element: var CssElement, values: varargs[string]) =
    ## Sets the `box-decoration-break` CSS property
    ##
    ## Sets the behavior of the background and border of an element at page-break, or, for in-line elements, at line-break.
    element.properties["box-decoration-break"] = values.toJoinedString()
proc setBoxDecorationBreak*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `box-decoration-break` CSS property
    ##
    ## Sets the behavior of the background and border of an element at page-break, or, for in-line elements, at line-break.
    result = element
    result.properties["box-decoration-break"] = values.toJoinedString()

proc boxReflect*(values: varargs[string]): CssAttribute =
    ## Constructs the `box-reflect` CSS property
    ##
    ## The box-reflect property is used to create a reflection of an element.
    result = ["box-reflect", values.toJoinedString()]
proc setBoxReflect*(element: var CssElement, values: varargs[string]) =
    ## Sets the `box-reflect` CSS property
    ##
    ## The box-reflect property is used to create a reflection of an element.
    element.properties["box-reflect"] = values.toJoinedString()
proc setBoxReflect*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `box-reflect` CSS property
    ##
    ## The box-reflect property is used to create a reflection of an element.
    result = element
    result.properties["box-reflect"] = values.toJoinedString()

proc boxShadow*(values: varargs[string]): CssAttribute =
    ## Constructs the `box-shadow` CSS property
    ##
    ## Attaches one or more shadows to an element
    result = ["box-shadow", values.toJoinedString()]
proc setBoxShadow*(element: var CssElement, values: varargs[string]) =
    ## Sets the `box-shadow` CSS property
    ##
    ## Attaches one or more shadows to an element
    element.properties["box-shadow"] = values.toJoinedString()
proc setBoxShadow*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `box-shadow` CSS property
    ##
    ## Attaches one or more shadows to an element
    result = element
    result.properties["box-shadow"] = values.toJoinedString()

proc boxSizing*(values: varargs[string]): CssAttribute =
    ## Constructs the `box-sizing` CSS property
    ##
    ## Defines how the width and height of an element are calculated: should they include padding and borders, or not
    result = ["box-sizing", values.toJoinedString()]
proc setBoxSizing*(element: var CssElement, values: varargs[string]) =
    ## Sets the `box-sizing` CSS property
    ##
    ## Defines how the width and height of an element are calculated: should they include padding and borders, or not
    element.properties["box-sizing"] = values.toJoinedString()
proc setBoxSizing*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `box-sizing` CSS property
    ##
    ## Defines how the width and height of an element are calculated: should they include padding and borders, or not
    result = element
    result.properties["box-sizing"] = values.toJoinedString()

proc breakAfter*(values: varargs[string]): CssAttribute =
    ## Constructs the `break-after` CSS property
    ##
    ## Specifies whether or not a page-, column-, or region-break should occur after the specified element
    result = ["break-after", values.toJoinedString()]
proc setBreakAfter*(element: var CssElement, values: varargs[string]) =
    ## Sets the `break-after` CSS property
    ##
    ## Specifies whether or not a page-, column-, or region-break should occur after the specified element
    element.properties["break-after"] = values.toJoinedString()
proc setBreakAfter*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `break-after` CSS property
    ##
    ## Specifies whether or not a page-, column-, or region-break should occur after the specified element
    result = element
    result.properties["break-after"] = values.toJoinedString()

proc breakBefore*(values: varargs[string]): CssAttribute =
    ## Constructs the `break-before` CSS property
    ##
    ## Specifies whether or not a page-, column-, or region-break should occur before the specified element
    result = ["break-before", values.toJoinedString()]
proc setBreakBefore*(element: var CssElement, values: varargs[string]) =
    ## Sets the `break-before` CSS property
    ##
    ## Specifies whether or not a page-, column-, or region-break should occur before the specified element
    element.properties["break-before"] = values.toJoinedString()
proc setBreakBefore*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `break-before` CSS property
    ##
    ## Specifies whether or not a page-, column-, or region-break should occur before the specified element
    result = element
    result.properties["break-before"] = values.toJoinedString()

proc breakInside*(values: varargs[string]): CssAttribute =
    ## Constructs the `break-inside` CSS property
    ##
    ## Specifies whether or not a page-, column-, or region-break should occur inside the specified element
    result = ["break-inside", values.toJoinedString()]
proc setBreakInside*(element: var CssElement, values: varargs[string]) =
    ## Sets the `break-inside` CSS property
    ##
    ## Specifies whether or not a page-, column-, or region-break should occur inside the specified element
    element.properties["break-inside"] = values.toJoinedString()
proc setBreakInside*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `break-inside` CSS property
    ##
    ## Specifies whether or not a page-, column-, or region-break should occur inside the specified element
    result = element
    result.properties["break-inside"] = values.toJoinedString()

proc captionSide*(values: varargs[string]): CssAttribute =
    ## Constructs the `caption-side` CSS property
    ##
    ## Specifies the placement of a table caption
    result = ["caption-side", values.toJoinedString()]
proc setCaptionSide*(element: var CssElement, values: varargs[string]) =
    ## Sets the `caption-side` CSS property
    ##
    ## Specifies the placement of a table caption
    element.properties["caption-side"] = values.toJoinedString()
proc setCaptionSide*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `caption-side` CSS property
    ##
    ## Specifies the placement of a table caption
    result = element
    result.properties["caption-side"] = values.toJoinedString()

proc caretColor*(values: varargs[string]): CssAttribute =
    ## Constructs the `caret-color` CSS property
    ##
    ## Specifies the color of the cursor (caret) in inputs, textareas, or any element that is editable
    result = ["caret-color", values.toJoinedString()]
proc setCaretColor*(element: var CssElement, values: varargs[string]) =
    ## Sets the `caret-color` CSS property
    ##
    ## Specifies the color of the cursor (caret) in inputs, textareas, or any element that is editable
    element.properties["caret-color"] = values.toJoinedString()
proc setCaretColor*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `caret-color` CSS property
    ##
    ## Specifies the color of the cursor (caret) in inputs, textareas, or any element that is editable
    result = element
    result.properties["caret-color"] = values.toJoinedString()

proc caretColour*(values: varargs[string]): CssAttribute =
    ## Constructs the `caret-color` CSS property
    ##
    ## Specifies the color of the cursor (caret) in inputs, textareas, or any element that is editable
    result = ["caret-color", values.toJoinedString()]
proc setCaretColour*(element: var CssElement, values: varargs[string]) =
    ## Sets the `caret-color` CSS property
    ##
    ## Specifies the color of the cursor (caret) in inputs, textareas, or any element that is editable
    element.properties["caret-color"] = values.toJoinedString()
proc setCaretColour*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `caret-color` CSS property
    ##
    ## Specifies the color of the cursor (caret) in inputs, textareas, or any element that is editable
    result = element
    result.properties["caret-color"] = values.toJoinedString()

proc cssAtCharset*(values: varargs[string]): CssAttribute =
    ## Constructs the `@charset` CSS property
    ##
    ## Specifies the character encoding used in the style sheet
    result = ["@charset", values.toJoinedString()]
proc setCssAtCharset*(element: var CssElement, values: varargs[string]) =
    ## Sets the `@charset` CSS property
    ##
    ## Specifies the character encoding used in the style sheet
    element.properties["@charset"] = values.toJoinedString()
proc setCssAtCharset*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `@charset` CSS property
    ##
    ## Specifies the character encoding used in the style sheet
    result = element
    result.properties["@charset"] = values.toJoinedString()

proc clear*(values: varargs[string]): CssAttribute =
    ## Constructs the `clear` CSS property
    ##
    ## Specifies what should happen with the element that is next to a floating element
    result = ["clear", values.toJoinedString()]
proc setClear*(element: var CssElement, values: varargs[string]) =
    ## Sets the `clear` CSS property
    ##
    ## Specifies what should happen with the element that is next to a floating element
    element.properties["clear"] = values.toJoinedString()
proc setClear*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `clear` CSS property
    ##
    ## Specifies what should happen with the element that is next to a floating element
    result = element
    result.properties["clear"] = values.toJoinedString()

proc clip*(values: varargs[string]): CssAttribute {.deprecated: "use `clip-path` instead".} =
    ## Constructs the `clip` CSS property
    ##
    ## Deprecated in favor of clip-path. Clips an absolutely positioned element
    result = ["clip", values.toJoinedString()]
proc setClip*(element: var CssElement, values: varargs[string]) {.deprecated: "use `clip-path` instead".} =
    ## Sets the `clip` CSS property
    ##
    ## Deprecated in favor of clip-path. Clips an absolutely positioned element
    element.properties["clip"] = values.toJoinedString()
proc setClip*(element: CssElement, values: varargs[string]): CssElement {.deprecated: "use `clip-path` instead".} =
    ## Sets the `clip` CSS property
    ##
    ## Deprecated in favor of clip-path. Clips an absolutely positioned element
    result = element
    result.properties["clip"] = values.toJoinedString()

proc clipPath*(values: varargs[string]): CssAttribute =
    ## Constructs the `clip-path` CSS property
    ##
    ## Clips an element to a basic shape or to an SVG source
    result = ["clip-path", values.toJoinedString()]
proc setClipPath*(element: var CssElement, values: varargs[string]) =
    ## Sets the `clip-path` CSS property
    ##
    ## Clips an element to a basic shape or to an SVG source
    element.properties["clip-path"] = values.toJoinedString()
proc setClipPath*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `clip-path` CSS property
    ##
    ## Clips an element to a basic shape or to an SVG source
    result = element
    result.properties["clip-path"] = values.toJoinedString()

proc color*(values: varargs[string]): CssAttribute =
    ## Constructs the `color` CSS property
    ##
    ## Sets the color of text
    result = ["color", values.toJoinedString()]
proc setColor*(element: var CssElement, values: varargs[string]) =
    ## Sets the `color` CSS property
    ##
    ## Sets the color of text
    element.properties["color"] = values.toJoinedString()
proc setColor*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `color` CSS property
    ##
    ## Sets the color of text
    result = element
    result.properties["color"] = values.toJoinedString()

proc colour*(values: varargs[string]): CssAttribute =
    ## Constructs the `color` CSS property
    ##
    ## Sets the color of text
    result = ["color", values.toJoinedString()]
proc setColour*(element: var CssElement, values: varargs[string]) =
    ## Sets the `color` CSS property
    ##
    ## Sets the color of text
    element.properties["color"] = values.toJoinedString()
proc setColour*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `color` CSS property
    ##
    ## Sets the color of text
    result = element
    result.properties["color"] = values.toJoinedString()

proc colorScheme*(values: varargs[string]): CssAttribute =
    ## Constructs the `color-scheme` CSS property
    ##
    ## Indicates which operating system color scheme an element should render with
    result = ["color-scheme", values.toJoinedString()]
proc setColorScheme*(element: var CssElement, values: varargs[string]) =
    ## Sets the `color-scheme` CSS property
    ##
    ## Indicates which operating system color scheme an element should render with
    element.properties["color-scheme"] = values.toJoinedString()
proc setColorScheme*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `color-scheme` CSS property
    ##
    ## Indicates which operating system color scheme an element should render with
    result = element
    result.properties["color-scheme"] = values.toJoinedString()

proc colourScheme*(values: varargs[string]): CssAttribute =
    ## Constructs the `color-scheme` CSS property
    ##
    ## Indicates which operating system color scheme an element should render with
    result = ["color-scheme", values.toJoinedString()]
proc setColourScheme*(element: var CssElement, values: varargs[string]) =
    ## Sets the `color-scheme` CSS property
    ##
    ## Indicates which operating system color scheme an element should render with
    element.properties["color-scheme"] = values.toJoinedString()
proc setColourScheme*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `color-scheme` CSS property
    ##
    ## Indicates which operating system color scheme an element should render with
    result = element
    result.properties["color-scheme"] = values.toJoinedString()

proc columnCount*(values: varargs[string]): CssAttribute =
    ## Constructs the `column-count` CSS property
    ##
    ## Specifies the number of columns an element should be divided into
    result = ["column-count", values.toJoinedString()]
proc setColumnCount*(element: var CssElement, values: varargs[string]) =
    ## Sets the `column-count` CSS property
    ##
    ## Specifies the number of columns an element should be divided into
    element.properties["column-count"] = values.toJoinedString()
proc setColumnCount*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `column-count` CSS property
    ##
    ## Specifies the number of columns an element should be divided into
    result = element
    result.properties["column-count"] = values.toJoinedString()

proc columnFill*(values: varargs[string]): CssAttribute =
    ## Constructs the `column-fill` CSS property
    ##
    ## Specifies how to fill columns, balanced or not
    result = ["column-fill", values.toJoinedString()]
proc setColumnFill*(element: var CssElement, values: varargs[string]) =
    ## Sets the `column-fill` CSS property
    ##
    ## Specifies how to fill columns, balanced or not
    element.properties["column-fill"] = values.toJoinedString()
proc setColumnFill*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `column-fill` CSS property
    ##
    ## Specifies how to fill columns, balanced or not
    result = element
    result.properties["column-fill"] = values.toJoinedString()

proc columnGap*(values: varargs[string]): CssAttribute =
    ## Constructs the `column-gap` CSS property
    ##
    ## Specifies the gap between the columns
    result = ["column-gap", values.toJoinedString()]
proc setColumnGap*(element: var CssElement, values: varargs[string]) =
    ## Sets the `column-gap` CSS property
    ##
    ## Specifies the gap between the columns
    element.properties["column-gap"] = values.toJoinedString()
proc setColumnGap*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `column-gap` CSS property
    ##
    ## Specifies the gap between the columns
    result = element
    result.properties["column-gap"] = values.toJoinedString()

proc columnRule*(values: varargs[string]): CssAttribute =
    ## Constructs the `column-rule` CSS property
    ##
    ## A shorthand property for all the column-rule-\* properties
    result = ["column-rule", values.toJoinedString()]
proc setColumnRule*(element: var CssElement, values: varargs[string]) =
    ## Sets the `column-rule` CSS property
    ##
    ## A shorthand property for all the column-rule-\* properties
    element.properties["column-rule"] = values.toJoinedString()
proc setColumnRule*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `column-rule` CSS property
    ##
    ## A shorthand property for all the column-rule-\* properties
    result = element
    result.properties["column-rule"] = values.toJoinedString()

proc columnRuleColor*(values: varargs[string]): CssAttribute =
    ## Constructs the `column-rule-color` CSS property
    ##
    ## Specifies the color of the rule between columns
    result = ["column-rule-color", values.toJoinedString()]
proc setColumnRuleColor*(element: var CssElement, values: varargs[string]) =
    ## Sets the `column-rule-color` CSS property
    ##
    ## Specifies the color of the rule between columns
    element.properties["column-rule-color"] = values.toJoinedString()
proc setColumnRuleColor*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `column-rule-color` CSS property
    ##
    ## Specifies the color of the rule between columns
    result = element
    result.properties["column-rule-color"] = values.toJoinedString()

proc columnRuleColour*(values: varargs[string]): CssAttribute =
    ## Constructs the `column-rule-color` CSS property
    ##
    ## Specifies the color of the rule between columns
    result = ["column-rule-color", values.toJoinedString()]
proc setColumnRuleColour*(element: var CssElement, values: varargs[string]) =
    ## Sets the `column-rule-color` CSS property
    ##
    ## Specifies the color of the rule between columns
    element.properties["column-rule-color"] = values.toJoinedString()
proc setColumnRuleColour*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `column-rule-color` CSS property
    ##
    ## Specifies the color of the rule between columns
    result = element
    result.properties["column-rule-color"] = values.toJoinedString()

proc columnRuleStyle*(values: varargs[string]): CssAttribute =
    ## Constructs the `column-rule-style` CSS property
    ##
    ## Specifies the style of the rule between columns
    result = ["column-rule-style", values.toJoinedString()]
proc setColumnRuleStyle*(element: var CssElement, values: varargs[string]) =
    ## Sets the `column-rule-style` CSS property
    ##
    ## Specifies the style of the rule between columns
    element.properties["column-rule-style"] = values.toJoinedString()
proc setColumnRuleStyle*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `column-rule-style` CSS property
    ##
    ## Specifies the style of the rule between columns
    result = element
    result.properties["column-rule-style"] = values.toJoinedString()

proc columnRuleWidth*(values: varargs[string]): CssAttribute =
    ## Constructs the `column-rule-width` CSS property
    ##
    ## Specifies the width of the rule between columns
    result = ["column-rule-width", values.toJoinedString()]
proc setColumnRuleWidth*(element: var CssElement, values: varargs[string]) =
    ## Sets the `column-rule-width` CSS property
    ##
    ## Specifies the width of the rule between columns
    element.properties["column-rule-width"] = values.toJoinedString()
proc setColumnRuleWidth*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `column-rule-width` CSS property
    ##
    ## Specifies the width of the rule between columns
    result = element
    result.properties["column-rule-width"] = values.toJoinedString()

proc columnSpan*(values: varargs[string]): CssAttribute =
    ## Constructs the `column-span` CSS property
    ##
    ## Specifies how many columns an element should span across
    result = ["column-span", values.toJoinedString()]
proc setColumnSpan*(element: var CssElement, values: varargs[string]) =
    ## Sets the `column-span` CSS property
    ##
    ## Specifies how many columns an element should span across
    element.properties["column-span"] = values.toJoinedString()
proc setColumnSpan*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `column-span` CSS property
    ##
    ## Specifies how many columns an element should span across
    result = element
    result.properties["column-span"] = values.toJoinedString()

proc columnWidth*(values: varargs[string]): CssAttribute =
    ## Constructs the `column-width` CSS property
    ##
    ## Specifies the column width
    result = ["column-width", values.toJoinedString()]
proc setColumnWidth*(element: var CssElement, values: varargs[string]) =
    ## Sets the `column-width` CSS property
    ##
    ## Specifies the column width
    element.properties["column-width"] = values.toJoinedString()
proc setColumnWidth*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `column-width` CSS property
    ##
    ## Specifies the column width
    result = element
    result.properties["column-width"] = values.toJoinedString()

proc columns*(values: varargs[string]): CssAttribute =
    ## Constructs the `columns` CSS property
    ##
    ## A shorthand property for column-width and column-count
    result = ["columns", values.toJoinedString()]
proc setColumns*(element: var CssElement, values: varargs[string]) =
    ## Sets the `columns` CSS property
    ##
    ## A shorthand property for column-width and column-count
    element.properties["columns"] = values.toJoinedString()
proc setColumns*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `columns` CSS property
    ##
    ## A shorthand property for column-width and column-count
    result = element
    result.properties["columns"] = values.toJoinedString()

proc content*(values: varargs[string]): CssAttribute =
    ## Constructs the `content` CSS property
    ##
    ## Used with the :before and :after pseudo-elements, to insert generated content
    result = ["content", values.toJoinedString()]
proc setContent*(element: var CssElement, values: varargs[string]) =
    ## Sets the `content` CSS property
    ##
    ## Used with the :before and :after pseudo-elements, to insert generated content
    element.properties["content"] = values.toJoinedString()
proc setContent*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `content` CSS property
    ##
    ## Used with the :before and :after pseudo-elements, to insert generated content
    result = element
    result.properties["content"] = values.toJoinedString()

proc counterIncrement*(values: varargs[string]): CssAttribute =
    ## Constructs the `counter-increment` CSS property
    ##
    ## Increases or decreases the value of one or more CSS counters
    result = ["counter-increment", values.toJoinedString()]
proc setCounterIncrement*(element: var CssElement, values: varargs[string]) =
    ## Sets the `counter-increment` CSS property
    ##
    ## Increases or decreases the value of one or more CSS counters
    element.properties["counter-increment"] = values.toJoinedString()
proc setCounterIncrement*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `counter-increment` CSS property
    ##
    ## Increases or decreases the value of one or more CSS counters
    result = element
    result.properties["counter-increment"] = values.toJoinedString()

proc counterReset*(values: varargs[string]): CssAttribute =
    ## Constructs the `counter-reset` CSS property
    ##
    ## Creates or resets one or more CSS counters
    result = ["counter-reset", values.toJoinedString()]
proc setCounterReset*(element: var CssElement, values: varargs[string]) =
    ## Sets the `counter-reset` CSS property
    ##
    ## Creates or resets one or more CSS counters
    element.properties["counter-reset"] = values.toJoinedString()
proc setCounterReset*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `counter-reset` CSS property
    ##
    ## Creates or resets one or more CSS counters
    result = element
    result.properties["counter-reset"] = values.toJoinedString()

proc counterSet*(values: varargs[string]): CssAttribute =
    ## Constructs the `counter-set` CSS property
    ##
    ## Creates or sets one or more CSS counters
    result = ["counter-set", values.toJoinedString()]
proc setCounterSet*(element: var CssElement, values: varargs[string]) =
    ## Sets the `counter-set` CSS property
    ##
    ## Creates or sets one or more CSS counters
    element.properties["counter-set"] = values.toJoinedString()
proc setCounterSet*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `counter-set` CSS property
    ##
    ## Creates or sets one or more CSS counters
    result = element
    result.properties["counter-set"] = values.toJoinedString()

proc cursor*(values: varargs[string]): CssAttribute =
    ## Constructs the `cursor` CSS property
    ##
    ## Specifies the mouse cursor to be displayed when pointing over an element
    result = ["cursor", values.toJoinedString()]
proc setCursor*(element: var CssElement, values: varargs[string]) =
    ## Sets the `cursor` CSS property
    ##
    ## Specifies the mouse cursor to be displayed when pointing over an element
    element.properties["cursor"] = values.toJoinedString()
proc setCursor*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `cursor` CSS property
    ##
    ## Specifies the mouse cursor to be displayed when pointing over an element
    result = element
    result.properties["cursor"] = values.toJoinedString()

proc direction*(values: varargs[string]): CssAttribute =
    ## Constructs the `direction` CSS property
    ##
    ## Specifies the text direction/writing direction
    result = ["direction", values.toJoinedString()]
proc setDirection*(element: var CssElement, values: varargs[string]) =
    ## Sets the `direction` CSS property
    ##
    ## Specifies the text direction/writing direction
    element.properties["direction"] = values.toJoinedString()
proc setDirection*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `direction` CSS property
    ##
    ## Specifies the text direction/writing direction
    result = element
    result.properties["direction"] = values.toJoinedString()

proc display*(values: varargs[string]): CssAttribute =
    ## Constructs the `display` CSS property
    ##
    ## Specifies how a certain HTML element should be displayed
    result = ["display", values.toJoinedString()]
proc setDisplay*(element: var CssElement, values: varargs[string]) =
    ## Sets the `display` CSS property
    ##
    ## Specifies how a certain HTML element should be displayed
    element.properties["display"] = values.toJoinedString()
proc setDisplay*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `display` CSS property
    ##
    ## Specifies how a certain HTML element should be displayed
    result = element
    result.properties["display"] = values.toJoinedString()

proc emptyCells*(values: varargs[string]): CssAttribute =
    ## Constructs the `empty-cells` CSS property
    ##
    ## Specifies whether or not to display borders and background on empty cells in a table
    result = ["empty-cells", values.toJoinedString()]
proc setEmptyCells*(element: var CssElement, values: varargs[string]) =
    ## Sets the `empty-cells` CSS property
    ##
    ## Specifies whether or not to display borders and background on empty cells in a table
    element.properties["empty-cells"] = values.toJoinedString()
proc setEmptyCells*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `empty-cells` CSS property
    ##
    ## Specifies whether or not to display borders and background on empty cells in a table
    result = element
    result.properties["empty-cells"] = values.toJoinedString()

proc filter*(values: varargs[string]): CssAttribute =
    ## Constructs the `filter` CSS property
    ##
    ## Defines effects (e.g. blurring or color shifting) on an element before the element is displayed
    result = ["filter", values.toJoinedString()]
proc setFilter*(element: var CssElement, values: varargs[string]) =
    ## Sets the `filter` CSS property
    ##
    ## Defines effects (e.g. blurring or color shifting) on an element before the element is displayed
    element.properties["filter"] = values.toJoinedString()
proc setFilter*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `filter` CSS property
    ##
    ## Defines effects (e.g. blurring or color shifting) on an element before the element is displayed
    result = element
    result.properties["filter"] = values.toJoinedString()

proc flex*(values: varargs[string]): CssAttribute =
    ## Constructs the `flex` CSS property
    ##
    ## A shorthand property for the flex-grow, flex-shrink, and the flex-basis properties
    result = ["flex", values.toJoinedString()]
proc setFlex*(element: var CssElement, values: varargs[string]) =
    ## Sets the `flex` CSS property
    ##
    ## A shorthand property for the flex-grow, flex-shrink, and the flex-basis properties
    element.properties["flex"] = values.toJoinedString()
proc setFlex*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `flex` CSS property
    ##
    ## A shorthand property for the flex-grow, flex-shrink, and the flex-basis properties
    result = element
    result.properties["flex"] = values.toJoinedString()

proc flexBasis*(values: varargs[string]): CssAttribute =
    ## Constructs the `flex-basis` CSS property
    ##
    ## Specifies the initial length of a flexible item
    result = ["flex-basis", values.toJoinedString()]
proc setFlexBasis*(element: var CssElement, values: varargs[string]) =
    ## Sets the `flex-basis` CSS property
    ##
    ## Specifies the initial length of a flexible item
    element.properties["flex-basis"] = values.toJoinedString()
proc setFlexBasis*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `flex-basis` CSS property
    ##
    ## Specifies the initial length of a flexible item
    result = element
    result.properties["flex-basis"] = values.toJoinedString()

proc flexDirection*(values: varargs[string]): CssAttribute =
    ## Constructs the `flex-direction` CSS property
    ##
    ## Specifies the direction of the flexible items
    result = ["flex-direction", values.toJoinedString()]
proc setFlexDirection*(element: var CssElement, values: varargs[string]) =
    ## Sets the `flex-direction` CSS property
    ##
    ## Specifies the direction of the flexible items
    element.properties["flex-direction"] = values.toJoinedString()
proc setFlexDirection*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `flex-direction` CSS property
    ##
    ## Specifies the direction of the flexible items
    result = element
    result.properties["flex-direction"] = values.toJoinedString()

proc flexFlow*(values: varargs[string]): CssAttribute =
    ## Constructs the `flex-flow` CSS property
    ##
    ## A shorthand property for the flex-direction and the flex-wrap properties
    result = ["flex-flow", values.toJoinedString()]
proc setFlexFlow*(element: var CssElement, values: varargs[string]) =
    ## Sets the `flex-flow` CSS property
    ##
    ## A shorthand property for the flex-direction and the flex-wrap properties
    element.properties["flex-flow"] = values.toJoinedString()
proc setFlexFlow*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `flex-flow` CSS property
    ##
    ## A shorthand property for the flex-direction and the flex-wrap properties
    result = element
    result.properties["flex-flow"] = values.toJoinedString()

proc flexGrow*(values: varargs[string]): CssAttribute =
    ## Constructs the `flex-grow` CSS property
    ##
    ## Specifies how much the item will grow relative to the rest
    result = ["flex-grow", values.toJoinedString()]
proc setFlexGrow*(element: var CssElement, values: varargs[string]) =
    ## Sets the `flex-grow` CSS property
    ##
    ## Specifies how much the item will grow relative to the rest
    element.properties["flex-grow"] = values.toJoinedString()
proc setFlexGrow*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `flex-grow` CSS property
    ##
    ## Specifies how much the item will grow relative to the rest
    result = element
    result.properties["flex-grow"] = values.toJoinedString()

proc flexShrink*(values: varargs[string]): CssAttribute =
    ## Constructs the `flex-shrink` CSS property
    ##
    ## Specifies how the item will shrink relative to the rest
    result = ["flex-shrink", values.toJoinedString()]
proc setFlexShrink*(element: var CssElement, values: varargs[string]) =
    ## Sets the `flex-shrink` CSS property
    ##
    ## Specifies how the item will shrink relative to the rest
    element.properties["flex-shrink"] = values.toJoinedString()
proc setFlexShrink*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `flex-shrink` CSS property
    ##
    ## Specifies how the item will shrink relative to the rest
    result = element
    result.properties["flex-shrink"] = values.toJoinedString()

proc flexWrap*(values: varargs[string]): CssAttribute =
    ## Constructs the `flex-wrap` CSS property
    ##
    ## Specifies whether the flexible items should wrap or not
    result = ["flex-wrap", values.toJoinedString()]
proc setFlexWrap*(element: var CssElement, values: varargs[string]) =
    ## Sets the `flex-wrap` CSS property
    ##
    ## Specifies whether the flexible items should wrap or not
    element.properties["flex-wrap"] = values.toJoinedString()
proc setFlexWrap*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `flex-wrap` CSS property
    ##
    ## Specifies whether the flexible items should wrap or not
    result = element
    result.properties["flex-wrap"] = values.toJoinedString()

proc cssFloat*(values: varargs[string]): CssAttribute =
    ## Constructs the `float` CSS property
    ##
    ## Specifies whether an element should float to the left, right, or not at all
    result = ["float", values.toJoinedString()]
proc setCssFloat*(element: var CssElement, values: varargs[string]) =
    ## Sets the `float` CSS property
    ##
    ## Specifies whether an element should float to the left, right, or not at all
    element.properties["float"] = values.toJoinedString()
proc setCssFloat*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `float` CSS property
    ##
    ## Specifies whether an element should float to the left, right, or not at all
    result = element
    result.properties["float"] = values.toJoinedString()

proc font*(values: varargs[string]): CssAttribute =
    ## Constructs the `font` CSS property
    ##
    ## A shorthand property for the font-style, font-variant, font-weight, font-size/line-height, and the font-family properties
    result = ["font", values.toJoinedString()]
proc setFont*(element: var CssElement, values: varargs[string]) =
    ## Sets the `font` CSS property
    ##
    ## A shorthand property for the font-style, font-variant, font-weight, font-size/line-height, and the font-family properties
    element.properties["font"] = values.toJoinedString()
proc setFont*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `font` CSS property
    ##
    ## A shorthand property for the font-style, font-variant, font-weight, font-size/line-height, and the font-family properties
    result = element
    result.properties["font"] = values.toJoinedString()

proc cssAtFontFace*(values: varargs[string]): CssAttribute =
    ## Constructs the `@font-face` CSS property
    ##
    ## A rule that allows websites to download and use fonts other than the "web-safe" fonts
    result = ["@font-face", values.toJoinedString()]
proc setCssAtFontFace*(element: var CssElement, values: varargs[string]) =
    ## Sets the `@font-face` CSS property
    ##
    ## A rule that allows websites to download and use fonts other than the "web-safe" fonts
    element.properties["@font-face"] = values.toJoinedString()
proc setCssAtFontFace*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `@font-face` CSS property
    ##
    ## A rule that allows websites to download and use fonts other than the "web-safe" fonts
    result = element
    result.properties["@font-face"] = values.toJoinedString()

proc fontFamily*(values: varargs[string]): CssAttribute =
    ## Constructs the `font-family` CSS property
    ##
    ## Specifies the font family for text
    result = ["font-family", values.toJoinedString()]
proc setFontFamily*(element: var CssElement, values: varargs[string]) =
    ## Sets the `font-family` CSS property
    ##
    ## Specifies the font family for text
    element.properties["font-family"] = values.toJoinedString()
proc setFontFamily*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `font-family` CSS property
    ##
    ## Specifies the font family for text
    result = element
    result.properties["font-family"] = values.toJoinedString()

proc fontFeatureSettings*(values: varargs[string]): CssAttribute =
    ## Constructs the `font-feature-settings` CSS property
    ##
    ## Allows control over advanced typographic features in OpenType fonts
    result = ["font-feature-settings", values.toJoinedString()]
proc setFontFeatureSettings*(element: var CssElement, values: varargs[string]) =
    ## Sets the `font-feature-settings` CSS property
    ##
    ## Allows control over advanced typographic features in OpenType fonts
    element.properties["font-feature-settings"] = values.toJoinedString()
proc setFontFeatureSettings*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `font-feature-settings` CSS property
    ##
    ## Allows control over advanced typographic features in OpenType fonts
    result = element
    result.properties["font-feature-settings"] = values.toJoinedString()

proc cssAtFontFeatureValues*(values: varargs[string]): CssAttribute =
    ## Constructs the `@font-feature-values` CSS property
    ##
    ## Allows authors to use a common name in font-variant-alternate for feature activated differently in OpenType
    result = ["@font-feature-values", values.toJoinedString()]
proc setCssAtFontFeatureValues*(element: var CssElement, values: varargs[string]) =
    ## Sets the `@font-feature-values` CSS property
    ##
    ## Allows authors to use a common name in font-variant-alternate for feature activated differently in OpenType
    element.properties["@font-feature-values"] = values.toJoinedString()
proc setCssAtFontFeatureValues*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `@font-feature-values` CSS property
    ##
    ## Allows authors to use a common name in font-variant-alternate for feature activated differently in OpenType
    result = element
    result.properties["@font-feature-values"] = values.toJoinedString()

proc fontKerning*(values: varargs[string]): CssAttribute =
    ## Constructs the `font-kerning` CSS property
    ##
    ## Controls the usage of the kerning information (how letters are spaced)
    result = ["font-kerning", values.toJoinedString()]
proc setFontKerning*(element: var CssElement, values: varargs[string]) =
    ## Sets the `font-kerning` CSS property
    ##
    ## Controls the usage of the kerning information (how letters are spaced)
    element.properties["font-kerning"] = values.toJoinedString()
proc setFontKerning*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `font-kerning` CSS property
    ##
    ## Controls the usage of the kerning information (how letters are spaced)
    result = element
    result.properties["font-kerning"] = values.toJoinedString()

proc fontLanguageOverride*(values: varargs[string]): CssAttribute =
    ## Constructs the `font-language-override` CSS property
    ##
    ## Controls the usage of language-specific glyphs in a typeface
    result = ["font-language-override", values.toJoinedString()]
proc setFontLanguageOverride*(element: var CssElement, values: varargs[string]) =
    ## Sets the `font-language-override` CSS property
    ##
    ## Controls the usage of language-specific glyphs in a typeface
    element.properties["font-language-override"] = values.toJoinedString()
proc setFontLanguageOverride*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `font-language-override` CSS property
    ##
    ## Controls the usage of language-specific glyphs in a typeface
    result = element
    result.properties["font-language-override"] = values.toJoinedString()

proc fontSize*(values: varargs[string]): CssAttribute =
    ## Constructs the `font-size` CSS property
    ##
    ## Specifies the font size of text
    result = ["font-size", values.toJoinedString()]
proc setFontSize*(element: var CssElement, values: varargs[string]) =
    ## Sets the `font-size` CSS property
    ##
    ## Specifies the font size of text
    element.properties["font-size"] = values.toJoinedString()
proc setFontSize*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `font-size` CSS property
    ##
    ## Specifies the font size of text
    result = element
    result.properties["font-size"] = values.toJoinedString()

proc fontSizeAdjust*(values: varargs[string]): CssAttribute =
    ## Constructs the `font-size-adjust` CSS property
    ##
    ## Preserves the readability and size of text when fallback font occurs
    result = ["font-size-adjust", values.toJoinedString()]
proc setFontSizeAdjust*(element: var CssElement, values: varargs[string]) =
    ## Sets the `font-size-adjust` CSS property
    ##
    ## Preserves the readability and size of text when fallback font occurs
    element.properties["font-size-adjust"] = values.toJoinedString()
proc setFontSizeAdjust*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `font-size-adjust` CSS property
    ##
    ## Preserves the readability and size of text when fallback font occurs
    result = element
    result.properties["font-size-adjust"] = values.toJoinedString()

proc fontStretch*(values: varargs[string]): CssAttribute =
    ## Constructs the `font-stretch` CSS property
    ##
    ## Selects a normal, condensed, or expanded face from a font family
    result = ["font-stretch", values.toJoinedString()]
proc setFontStretch*(element: var CssElement, values: varargs[string]) =
    ## Sets the `font-stretch` CSS property
    ##
    ## Selects a normal, condensed, or expanded face from a font family
    element.properties["font-stretch"] = values.toJoinedString()
proc setFontStretch*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `font-stretch` CSS property
    ##
    ## Selects a normal, condensed, or expanded face from a font family
    result = element
    result.properties["font-stretch"] = values.toJoinedString()

proc fontStyle*(values: varargs[string]): CssAttribute =
    ## Constructs the `font-style` CSS property
    ##
    ## Specifies the font style for text
    result = ["font-style", values.toJoinedString()]
proc setFontStyle*(element: var CssElement, values: varargs[string]) =
    ## Sets the `font-style` CSS property
    ##
    ## Specifies the font style for text
    element.properties["font-style"] = values.toJoinedString()
proc setFontStyle*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `font-style` CSS property
    ##
    ## Specifies the font style for text
    result = element
    result.properties["font-style"] = values.toJoinedString()

proc fontSynthesis*(values: varargs[string]): CssAttribute =
    ## Constructs the `font-synthesis` CSS property
    ##
    ## Controls which missing typefaces (bold or italic) may be synthesized by the browser
    result = ["font-synthesis", values.toJoinedString()]
proc setFontSynthesis*(element: var CssElement, values: varargs[string]) =
    ## Sets the `font-synthesis` CSS property
    ##
    ## Controls which missing typefaces (bold or italic) may be synthesized by the browser
    element.properties["font-synthesis"] = values.toJoinedString()
proc setFontSynthesis*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `font-synthesis` CSS property
    ##
    ## Controls which missing typefaces (bold or italic) may be synthesized by the browser
    result = element
    result.properties["font-synthesis"] = values.toJoinedString()

proc fontVariant*(values: varargs[string]): CssAttribute =
    ## Constructs the `font-variant` CSS property
    ##
    ## Specifies whether or not a text should be displayed in a small-caps font
    result = ["font-variant", values.toJoinedString()]
proc setFontVariant*(element: var CssElement, values: varargs[string]) =
    ## Sets the `font-variant` CSS property
    ##
    ## Specifies whether or not a text should be displayed in a small-caps font
    element.properties["font-variant"] = values.toJoinedString()
proc setFontVariant*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `font-variant` CSS property
    ##
    ## Specifies whether or not a text should be displayed in a small-caps font
    result = element
    result.properties["font-variant"] = values.toJoinedString()

proc fontVariantAlternates*(values: varargs[string]): CssAttribute =
    ## Constructs the `font-variant-alternates` CSS property
    ##
    ## Controls the usage of alternate glyphs associated to alternative names defined in @font-feature-values
    result = ["font-variant-alternates", values.toJoinedString()]
proc setFontVariantAlternates*(element: var CssElement, values: varargs[string]) =
    ## Sets the `font-variant-alternates` CSS property
    ##
    ## Controls the usage of alternate glyphs associated to alternative names defined in @font-feature-values
    element.properties["font-variant-alternates"] = values.toJoinedString()
proc setFontVariantAlternates*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `font-variant-alternates` CSS property
    ##
    ## Controls the usage of alternate glyphs associated to alternative names defined in @font-feature-values
    result = element
    result.properties["font-variant-alternates"] = values.toJoinedString()

proc fontVariantCaps*(values: varargs[string]): CssAttribute =
    ## Constructs the `font-variant-caps` CSS property
    ##
    ## Controls the usage of alternate glyphs for capital letters
    result = ["font-variant-caps", values.toJoinedString()]
proc setFontVariantCaps*(element: var CssElement, values: varargs[string]) =
    ## Sets the `font-variant-caps` CSS property
    ##
    ## Controls the usage of alternate glyphs for capital letters
    element.properties["font-variant-caps"] = values.toJoinedString()
proc setFontVariantCaps*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `font-variant-caps` CSS property
    ##
    ## Controls the usage of alternate glyphs for capital letters
    result = element
    result.properties["font-variant-caps"] = values.toJoinedString()

proc fontVariantEastAsian*(values: varargs[string]): CssAttribute =
    ## Constructs the `font-variant-east-asian` CSS property
    ##
    ## Controls the usage of alternate glyphs for East Asian scripts (e.g Japanese and Chinese)
    result = ["font-variant-east-asian", values.toJoinedString()]
proc setFontVariantEastAsian*(element: var CssElement, values: varargs[string]) =
    ## Sets the `font-variant-east-asian` CSS property
    ##
    ## Controls the usage of alternate glyphs for East Asian scripts (e.g Japanese and Chinese)
    element.properties["font-variant-east-asian"] = values.toJoinedString()
proc setFontVariantEastAsian*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `font-variant-east-asian` CSS property
    ##
    ## Controls the usage of alternate glyphs for East Asian scripts (e.g Japanese and Chinese)
    result = element
    result.properties["font-variant-east-asian"] = values.toJoinedString()

proc fontVariantLigatures*(values: varargs[string]): CssAttribute =
    ## Constructs the `font-variant-ligatures` CSS property
    ##
    ## Controls which ligatures and contextual forms are used in textual content of the elements it applies to
    result = ["font-variant-ligatures", values.toJoinedString()]
proc setFontVariantLigatures*(element: var CssElement, values: varargs[string]) =
    ## Sets the `font-variant-ligatures` CSS property
    ##
    ## Controls which ligatures and contextual forms are used in textual content of the elements it applies to
    element.properties["font-variant-ligatures"] = values.toJoinedString()
proc setFontVariantLigatures*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `font-variant-ligatures` CSS property
    ##
    ## Controls which ligatures and contextual forms are used in textual content of the elements it applies to
    result = element
    result.properties["font-variant-ligatures"] = values.toJoinedString()

proc fontVariantNumeric*(values: varargs[string]): CssAttribute =
    ## Constructs the `font-variant-numeric` CSS property
    ##
    ## Controls the usage of alternate glyphs for numbers, fractions, and ordinal markers
    result = ["font-variant-numeric", values.toJoinedString()]
proc setFontVariantNumeric*(element: var CssElement, values: varargs[string]) =
    ## Sets the `font-variant-numeric` CSS property
    ##
    ## Controls the usage of alternate glyphs for numbers, fractions, and ordinal markers
    element.properties["font-variant-numeric"] = values.toJoinedString()
proc setFontVariantNumeric*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `font-variant-numeric` CSS property
    ##
    ## Controls the usage of alternate glyphs for numbers, fractions, and ordinal markers
    result = element
    result.properties["font-variant-numeric"] = values.toJoinedString()

proc fontVariantPosition*(values: varargs[string]): CssAttribute =
    ## Constructs the `font-variant-position` CSS property
    ##
    ## Controls the usage of alternate glyphs of smaller size positioned as superscript or subscript regarding the baseline of the font
    result = ["font-variant-position", values.toJoinedString()]
proc setFontVariantPosition*(element: var CssElement, values: varargs[string]) =
    ## Sets the `font-variant-position` CSS property
    ##
    ## Controls the usage of alternate glyphs of smaller size positioned as superscript or subscript regarding the baseline of the font
    element.properties["font-variant-position"] = values.toJoinedString()
proc setFontVariantPosition*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `font-variant-position` CSS property
    ##
    ## Controls the usage of alternate glyphs of smaller size positioned as superscript or subscript regarding the baseline of the font
    result = element
    result.properties["font-variant-position"] = values.toJoinedString()

proc fontWeight*(values: varargs[string]): CssAttribute =
    ## Constructs the `font-weight` CSS property
    ##
    ## Specifies the weight of a font
    result = ["font-weight", values.toJoinedString()]
proc setFontWeight*(element: var CssElement, values: varargs[string]) =
    ## Sets the `font-weight` CSS property
    ##
    ## Specifies the weight of a font
    element.properties["font-weight"] = values.toJoinedString()
proc setFontWeight*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `font-weight` CSS property
    ##
    ## Specifies the weight of a font
    result = element
    result.properties["font-weight"] = values.toJoinedString()

proc gap*(values: varargs[string]): CssAttribute =
    ## Constructs the `gap` CSS property
    ##
    ## A shorthand property for the row-gap and the column-gap properties
    result = ["gap", values.toJoinedString()]
proc setGap*(element: var CssElement, values: varargs[string]) =
    ## Sets the `gap` CSS property
    ##
    ## A shorthand property for the row-gap and the column-gap properties
    element.properties["gap"] = values.toJoinedString()
proc setGap*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `gap` CSS property
    ##
    ## A shorthand property for the row-gap and the column-gap properties
    result = element
    result.properties["gap"] = values.toJoinedString()

proc grid*(values: varargs[string]): CssAttribute =
    ## Constructs the `grid` CSS property
    ##
    ## A shorthand property for the grid-template-rows, grid-template-columns, grid-template-areas, grid-auto-rows, grid-auto-columns, and the grid-auto-flow properties
    result = ["grid", values.toJoinedString()]
proc setGrid*(element: var CssElement, values: varargs[string]) =
    ## Sets the `grid` CSS property
    ##
    ## A shorthand property for the grid-template-rows, grid-template-columns, grid-template-areas, grid-auto-rows, grid-auto-columns, and the grid-auto-flow properties
    element.properties["grid"] = values.toJoinedString()
proc setGrid*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `grid` CSS property
    ##
    ## A shorthand property for the grid-template-rows, grid-template-columns, grid-template-areas, grid-auto-rows, grid-auto-columns, and the grid-auto-flow properties
    result = element
    result.properties["grid"] = values.toJoinedString()

proc gridArea*(values: varargs[string]): CssAttribute =
    ## Constructs the `grid-area` CSS property
    ##
    ## Either specifies a name for the grid item, or this property is a shorthand property for the grid-row-start, grid-column-start, grid-row-end, and grid-column-end properties
    result = ["grid-area", values.toJoinedString()]
proc setGridArea*(element: var CssElement, values: varargs[string]) =
    ## Sets the `grid-area` CSS property
    ##
    ## Either specifies a name for the grid item, or this property is a shorthand property for the grid-row-start, grid-column-start, grid-row-end, and grid-column-end properties
    element.properties["grid-area"] = values.toJoinedString()
proc setGridArea*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `grid-area` CSS property
    ##
    ## Either specifies a name for the grid item, or this property is a shorthand property for the grid-row-start, grid-column-start, grid-row-end, and grid-column-end properties
    result = element
    result.properties["grid-area"] = values.toJoinedString()

proc gridAutoColumns*(values: varargs[string]): CssAttribute =
    ## Constructs the `grid-auto-columns` CSS property
    ##
    ## Specifies a default column size
    result = ["grid-auto-columns", values.toJoinedString()]
proc setGridAutoColumns*(element: var CssElement, values: varargs[string]) =
    ## Sets the `grid-auto-columns` CSS property
    ##
    ## Specifies a default column size
    element.properties["grid-auto-columns"] = values.toJoinedString()
proc setGridAutoColumns*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `grid-auto-columns` CSS property
    ##
    ## Specifies a default column size
    result = element
    result.properties["grid-auto-columns"] = values.toJoinedString()

proc gridAutoFlow*(values: varargs[string]): CssAttribute =
    ## Constructs the `grid-auto-flow` CSS property
    ##
    ## Specifies how auto-placed items are inserted in the grid
    result = ["grid-auto-flow", values.toJoinedString()]
proc setGridAutoFlow*(element: var CssElement, values: varargs[string]) =
    ## Sets the `grid-auto-flow` CSS property
    ##
    ## Specifies how auto-placed items are inserted in the grid
    element.properties["grid-auto-flow"] = values.toJoinedString()
proc setGridAutoFlow*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `grid-auto-flow` CSS property
    ##
    ## Specifies how auto-placed items are inserted in the grid
    result = element
    result.properties["grid-auto-flow"] = values.toJoinedString()

proc gridAutoRows*(values: varargs[string]): CssAttribute =
    ## Constructs the `grid-auto-rows` CSS property
    ##
    ## Specifies a default row size
    result = ["grid-auto-rows", values.toJoinedString()]
proc setGridAutoRows*(element: var CssElement, values: varargs[string]) =
    ## Sets the `grid-auto-rows` CSS property
    ##
    ## Specifies a default row size
    element.properties["grid-auto-rows"] = values.toJoinedString()
proc setGridAutoRows*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `grid-auto-rows` CSS property
    ##
    ## Specifies a default row size
    result = element
    result.properties["grid-auto-rows"] = values.toJoinedString()

proc gridColumn*(values: varargs[string]): CssAttribute =
    ## Constructs the `grid-column` CSS property
    ##
    ## A shorthand property for the grid-column-start and the grid-column-end properties
    result = ["grid-column", values.toJoinedString()]
proc setGridColumn*(element: var CssElement, values: varargs[string]) =
    ## Sets the `grid-column` CSS property
    ##
    ## A shorthand property for the grid-column-start and the grid-column-end properties
    element.properties["grid-column"] = values.toJoinedString()
proc setGridColumn*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `grid-column` CSS property
    ##
    ## A shorthand property for the grid-column-start and the grid-column-end properties
    result = element
    result.properties["grid-column"] = values.toJoinedString()

proc gridColumnEnd*(values: varargs[string]): CssAttribute =
    ## Constructs the `grid-column-end` CSS property
    ##
    ## Specifies where to end the grid item
    result = ["grid-column-end", values.toJoinedString()]
proc setGridColumnEnd*(element: var CssElement, values: varargs[string]) =
    ## Sets the `grid-column-end` CSS property
    ##
    ## Specifies where to end the grid item
    element.properties["grid-column-end"] = values.toJoinedString()
proc setGridColumnEnd*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `grid-column-end` CSS property
    ##
    ## Specifies where to end the grid item
    result = element
    result.properties["grid-column-end"] = values.toJoinedString()

proc gridColumnStart*(values: varargs[string]): CssAttribute =
    ## Constructs the `grid-column-start` CSS property
    ##
    ## Specifies where to start the grid item
    result = ["grid-column-start", values.toJoinedString()]
proc setGridColumnStart*(element: var CssElement, values: varargs[string]) =
    ## Sets the `grid-column-start` CSS property
    ##
    ## Specifies where to start the grid item
    element.properties["grid-column-start"] = values.toJoinedString()
proc setGridColumnStart*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `grid-column-start` CSS property
    ##
    ## Specifies where to start the grid item
    result = element
    result.properties["grid-column-start"] = values.toJoinedString()

proc gridRow*(values: varargs[string]): CssAttribute =
    ## Constructs the `grid-row` CSS property
    ##
    ## A shorthand property for the grid-row-start and the grid-row-end properties
    result = ["grid-row", values.toJoinedString()]
proc setGridRow*(element: var CssElement, values: varargs[string]) =
    ## Sets the `grid-row` CSS property
    ##
    ## A shorthand property for the grid-row-start and the grid-row-end properties
    element.properties["grid-row"] = values.toJoinedString()
proc setGridRow*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `grid-row` CSS property
    ##
    ## A shorthand property for the grid-row-start and the grid-row-end properties
    result = element
    result.properties["grid-row"] = values.toJoinedString()

proc gridRowEnd*(values: varargs[string]): CssAttribute =
    ## Constructs the `grid-row-end` CSS property
    ##
    ## Specifies where to end the grid item
    result = ["grid-row-end", values.toJoinedString()]
proc setGridRowEnd*(element: var CssElement, values: varargs[string]) =
    ## Sets the `grid-row-end` CSS property
    ##
    ## Specifies where to end the grid item
    element.properties["grid-row-end"] = values.toJoinedString()
proc setGridRowEnd*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `grid-row-end` CSS property
    ##
    ## Specifies where to end the grid item
    result = element
    result.properties["grid-row-end"] = values.toJoinedString()

proc gridRowStart*(values: varargs[string]): CssAttribute =
    ## Constructs the `grid-row-start` CSS property
    ##
    ## Specifies where to start the grid item
    result = ["grid-row-start", values.toJoinedString()]
proc setGridRowStart*(element: var CssElement, values: varargs[string]) =
    ## Sets the `grid-row-start` CSS property
    ##
    ## Specifies where to start the grid item
    element.properties["grid-row-start"] = values.toJoinedString()
proc setGridRowStart*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `grid-row-start` CSS property
    ##
    ## Specifies where to start the grid item
    result = element
    result.properties["grid-row-start"] = values.toJoinedString()

proc gridTemplate*(values: varargs[string]): CssAttribute =
    ## Constructs the `grid-template` CSS property
    ##
    ## A shorthand property for the grid-template-rows, grid-template-columns and grid-areas properties
    result = ["grid-template", values.toJoinedString()]
proc setGridTemplate*(element: var CssElement, values: varargs[string]) =
    ## Sets the `grid-template` CSS property
    ##
    ## A shorthand property for the grid-template-rows, grid-template-columns and grid-areas properties
    element.properties["grid-template"] = values.toJoinedString()
proc setGridTemplate*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `grid-template` CSS property
    ##
    ## A shorthand property for the grid-template-rows, grid-template-columns and grid-areas properties
    result = element
    result.properties["grid-template"] = values.toJoinedString()

proc gridTemplateAreas*(values: varargs[string]): CssAttribute =
    ## Constructs the `grid-template-areas` CSS property
    ##
    ## Specifies how to display columns and rows, using named grid items
    result = ["grid-template-areas", values.toJoinedString()]
proc setGridTemplateAreas*(element: var CssElement, values: varargs[string]) =
    ## Sets the `grid-template-areas` CSS property
    ##
    ## Specifies how to display columns and rows, using named grid items
    element.properties["grid-template-areas"] = values.toJoinedString()
proc setGridTemplateAreas*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `grid-template-areas` CSS property
    ##
    ## Specifies how to display columns and rows, using named grid items
    result = element
    result.properties["grid-template-areas"] = values.toJoinedString()

proc gridTemplateColumns*(values: varargs[string]): CssAttribute =
    ## Constructs the `grid-template-columns` CSS property
    ##
    ## Specifies the size of the columns, and how many columns in a grid layout
    result = ["grid-template-columns", values.toJoinedString()]
proc setGridTemplateColumns*(element: var CssElement, values: varargs[string]) =
    ## Sets the `grid-template-columns` CSS property
    ##
    ## Specifies the size of the columns, and how many columns in a grid layout
    element.properties["grid-template-columns"] = values.toJoinedString()
proc setGridTemplateColumns*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `grid-template-columns` CSS property
    ##
    ## Specifies the size of the columns, and how many columns in a grid layout
    result = element
    result.properties["grid-template-columns"] = values.toJoinedString()

proc gridTemplateRows*(values: varargs[string]): CssAttribute =
    ## Constructs the `grid-template-rows` CSS property
    ##
    ## Specifies the size of the rows in a grid layout
    result = ["grid-template-rows", values.toJoinedString()]
proc setGridTemplateRows*(element: var CssElement, values: varargs[string]) =
    ## Sets the `grid-template-rows` CSS property
    ##
    ## Specifies the size of the rows in a grid layout
    element.properties["grid-template-rows"] = values.toJoinedString()
proc setGridTemplateRows*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `grid-template-rows` CSS property
    ##
    ## Specifies the size of the rows in a grid layout
    result = element
    result.properties["grid-template-rows"] = values.toJoinedString()

proc hangingPunctuation*(values: varargs[string]): CssAttribute =
    ## Constructs the `hanging-punctuation` CSS property
    ##
    ## Specifies whether a punctuation character may be placed outside the line box
    result = ["hanging-punctuation", values.toJoinedString()]
proc setHangingPunctuation*(element: var CssElement, values: varargs[string]) =
    ## Sets the `hanging-punctuation` CSS property
    ##
    ## Specifies whether a punctuation character may be placed outside the line box
    element.properties["hanging-punctuation"] = values.toJoinedString()
proc setHangingPunctuation*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `hanging-punctuation` CSS property
    ##
    ## Specifies whether a punctuation character may be placed outside the line box
    result = element
    result.properties["hanging-punctuation"] = values.toJoinedString()

proc height*(values: varargs[string]): CssAttribute =
    ## Constructs the `height` CSS property
    ##
    ## Sets the height of an element
    result = ["height", values.toJoinedString()]
proc setHeight*(element: var CssElement, values: varargs[string]) =
    ## Sets the `height` CSS property
    ##
    ## Sets the height of an element
    element.properties["height"] = values.toJoinedString()
proc setHeight*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `height` CSS property
    ##
    ## Sets the height of an element
    result = element
    result.properties["height"] = values.toJoinedString()

proc hyphens*(values: varargs[string]): CssAttribute =
    ## Constructs the `hyphens` CSS property
    ##
    ## Sets how to split words to improve the layout of text
    result = ["hyphens", values.toJoinedString()]
proc setHyphens*(element: var CssElement, values: varargs[string]) =
    ## Sets the `hyphens` CSS property
    ##
    ## Sets how to split words to improve the layout of text
    element.properties["hyphens"] = values.toJoinedString()
proc setHyphens*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `hyphens` CSS property
    ##
    ## Sets how to split words to improve the layout of text
    result = element
    result.properties["hyphens"] = values.toJoinedString()

proc hypenateCharacter*(values: varargs[string]): CssAttribute =
    ## Constructs the `hypenate-character` CSS property
    ##
    ## Sets the character used at the end of line, before a hyphenation break
    result = ["hypenate-character", values.toJoinedString()]
proc setHypenateCharacter*(element: var CssElement, values: varargs[string]) =
    ## Sets the `hypenate-character` CSS property
    ##
    ## Sets the character used at the end of line, before a hyphenation break
    element.properties["hypenate-character"] = values.toJoinedString()
proc setHypenateCharacter*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `hypenate-character` CSS property
    ##
    ## Sets the character used at the end of line, before a hyphenation break
    result = element
    result.properties["hypenate-character"] = values.toJoinedString()

proc imageRendering*(values: varargs[string]): CssAttribute =
    ## Constructs the `image-rendering` CSS property
    ##
    ## Specifies the type of algorithm to use for image scaling
    result = ["image-rendering", values.toJoinedString()]
proc setImageRendering*(element: var CssElement, values: varargs[string]) =
    ## Sets the `image-rendering` CSS property
    ##
    ## Specifies the type of algorithm to use for image scaling
    element.properties["image-rendering"] = values.toJoinedString()
proc setImageRendering*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `image-rendering` CSS property
    ##
    ## Specifies the type of algorithm to use for image scaling
    result = element
    result.properties["image-rendering"] = values.toJoinedString()

proc cssAtImport*(values: varargs[string]): CssAttribute =
    ## Constructs the `@import` CSS property
    ##
    ## Allows you to import a style sheet into another style sheet
    result = ["@import", values.toJoinedString()]
proc setCssAtImport*(element: var CssElement, values: varargs[string]) =
    ## Sets the `@import` CSS property
    ##
    ## Allows you to import a style sheet into another style sheet
    element.properties["@import"] = values.toJoinedString()
proc setCssAtImport*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `@import` CSS property
    ##
    ## Allows you to import a style sheet into another style sheet
    result = element
    result.properties["@import"] = values.toJoinedString()

proc initialLetter*(values: varargs[string]): CssAttribute =
    ## Constructs the `initial-letter` CSS property
    ##
    ## Specifies the size of the initial-letter and optionally the number of lines the initial letter should sink (down in the text)
    result = ["initial-letter", values.toJoinedString()]
proc setInitialLetter*(element: var CssElement, values: varargs[string]) =
    ## Sets the `initial-letter` CSS property
    ##
    ## Specifies the size of the initial-letter and optionally the number of lines the initial letter should sink (down in the text)
    element.properties["initial-letter"] = values.toJoinedString()
proc setInitialLetter*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `initial-letter` CSS property
    ##
    ## Specifies the size of the initial-letter and optionally the number of lines the initial letter should sink (down in the text)
    result = element
    result.properties["initial-letter"] = values.toJoinedString()

proc inlineSize*(values: varargs[string]): CssAttribute =
    ## Constructs the `inline-size` CSS property
    ##
    ## Specifies the size of an element in the inline direction
    result = ["inline-size", values.toJoinedString()]
proc setInlineSize*(element: var CssElement, values: varargs[string]) =
    ## Sets the `inline-size` CSS property
    ##
    ## Specifies the size of an element in the inline direction
    element.properties["inline-size"] = values.toJoinedString()
proc setInlineSize*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `inline-size` CSS property
    ##
    ## Specifies the size of an element in the inline direction
    result = element
    result.properties["inline-size"] = values.toJoinedString()

proc inset*(values: varargs[string]): CssAttribute =
    ## Constructs the `inset` CSS property
    ##
    ## Specifies the distance between an element and the parent element
    result = ["inset", values.toJoinedString()]
proc setInset*(element: var CssElement, values: varargs[string]) =
    ## Sets the `inset` CSS property
    ##
    ## Specifies the distance between an element and the parent element
    element.properties["inset"] = values.toJoinedString()
proc setInset*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `inset` CSS property
    ##
    ## Specifies the distance between an element and the parent element
    result = element
    result.properties["inset"] = values.toJoinedString()

proc insetBlock*(values: varargs[string]): CssAttribute =
    ## Constructs the `inset-block` CSS property
    ##
    ## Specifies the distance between an element and the parent element in the block direction
    result = ["inset-block", values.toJoinedString()]
proc setInsetBlock*(element: var CssElement, values: varargs[string]) =
    ## Sets the `inset-block` CSS property
    ##
    ## Specifies the distance between an element and the parent element in the block direction
    element.properties["inset-block"] = values.toJoinedString()
proc setInsetBlock*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `inset-block` CSS property
    ##
    ## Specifies the distance between an element and the parent element in the block direction
    result = element
    result.properties["inset-block"] = values.toJoinedString()

proc insetBlockEnd*(values: varargs[string]): CssAttribute =
    ## Constructs the `inset-block-end` CSS property
    ##
    ## Specifies the distance between the end of an element and the parent element in the block direction
    result = ["inset-block-end", values.toJoinedString()]
proc setInsetBlockEnd*(element: var CssElement, values: varargs[string]) =
    ## Sets the `inset-block-end` CSS property
    ##
    ## Specifies the distance between the end of an element and the parent element in the block direction
    element.properties["inset-block-end"] = values.toJoinedString()
proc setInsetBlockEnd*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `inset-block-end` CSS property
    ##
    ## Specifies the distance between the end of an element and the parent element in the block direction
    result = element
    result.properties["inset-block-end"] = values.toJoinedString()

proc insetBlockStart*(values: varargs[string]): CssAttribute =
    ## Constructs the `inset-block-start` CSS property
    ##
    ## Specifies the distance between the start of an element and the parent element in the block direction
    result = ["inset-block-start", values.toJoinedString()]
proc setInsetBlockStart*(element: var CssElement, values: varargs[string]) =
    ## Sets the `inset-block-start` CSS property
    ##
    ## Specifies the distance between the start of an element and the parent element in the block direction
    element.properties["inset-block-start"] = values.toJoinedString()
proc setInsetBlockStart*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `inset-block-start` CSS property
    ##
    ## Specifies the distance between the start of an element and the parent element in the block direction
    result = element
    result.properties["inset-block-start"] = values.toJoinedString()

proc insetInline*(values: varargs[string]): CssAttribute =
    ## Constructs the `inset-inline` CSS property
    ##
    ## Specifies the distance between an element and the parent element in the inline direction
    result = ["inset-inline", values.toJoinedString()]
proc setInsetInline*(element: var CssElement, values: varargs[string]) =
    ## Sets the `inset-inline` CSS property
    ##
    ## Specifies the distance between an element and the parent element in the inline direction
    element.properties["inset-inline"] = values.toJoinedString()
proc setInsetInline*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `inset-inline` CSS property
    ##
    ## Specifies the distance between an element and the parent element in the inline direction
    result = element
    result.properties["inset-inline"] = values.toJoinedString()

proc insetInlineEnd*(values: varargs[string]): CssAttribute =
    ## Constructs the `inset-inline-end` CSS property
    ##
    ## Specifies the distance between the end of an element and the parent element in the inline direction
    result = ["inset-inline-end", values.toJoinedString()]
proc setInsetInlineEnd*(element: var CssElement, values: varargs[string]) =
    ## Sets the `inset-inline-end` CSS property
    ##
    ## Specifies the distance between the end of an element and the parent element in the inline direction
    element.properties["inset-inline-end"] = values.toJoinedString()
proc setInsetInlineEnd*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `inset-inline-end` CSS property
    ##
    ## Specifies the distance between the end of an element and the parent element in the inline direction
    result = element
    result.properties["inset-inline-end"] = values.toJoinedString()

proc insetInlineStart*(values: varargs[string]): CssAttribute =
    ## Constructs the `inset-inline-start` CSS property
    ##
    ## Specifies the distance between the start of an element and the parent element in the inline direction
    result = ["inset-inline-start", values.toJoinedString()]
proc setInsetInlineStart*(element: var CssElement, values: varargs[string]) =
    ## Sets the `inset-inline-start` CSS property
    ##
    ## Specifies the distance between the start of an element and the parent element in the inline direction
    element.properties["inset-inline-start"] = values.toJoinedString()
proc setInsetInlineStart*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `inset-inline-start` CSS property
    ##
    ## Specifies the distance between the start of an element and the parent element in the inline direction
    result = element
    result.properties["inset-inline-start"] = values.toJoinedString()

proc isolation*(values: varargs[string]): CssAttribute =
    ## Constructs the `isolation` CSS property
    ##
    ## Defines whether an element must create a new stacking content
    result = ["isolation", values.toJoinedString()]
proc setIsolation*(element: var CssElement, values: varargs[string]) =
    ## Sets the `isolation` CSS property
    ##
    ## Defines whether an element must create a new stacking content
    element.properties["isolation"] = values.toJoinedString()
proc setIsolation*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `isolation` CSS property
    ##
    ## Defines whether an element must create a new stacking content
    result = element
    result.properties["isolation"] = values.toJoinedString()

proc justifyContent*(values: varargs[string]): CssAttribute =
    ## Constructs the `justify-content` CSS property
    ##
    ## Specifies the alignment between the items inside a flexible container when the items do not use all available space
    result = ["justify-content", values.toJoinedString()]
proc setJustifyContent*(element: var CssElement, values: varargs[string]) =
    ## Sets the `justify-content` CSS property
    ##
    ## Specifies the alignment between the items inside a flexible container when the items do not use all available space
    element.properties["justify-content"] = values.toJoinedString()
proc setJustifyContent*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `justify-content` CSS property
    ##
    ## Specifies the alignment between the items inside a flexible container when the items do not use all available space
    result = element
    result.properties["justify-content"] = values.toJoinedString()

proc justifyItems*(values: varargs[string]): CssAttribute =
    ## Constructs the `justify-items` CSS property
    ##
    ## Is set on the grid container. Specifies the alignment of grid items in the inline direction
    result = ["justify-items", values.toJoinedString()]
proc setJustifyItems*(element: var CssElement, values: varargs[string]) =
    ## Sets the `justify-items` CSS property
    ##
    ## Is set on the grid container. Specifies the alignment of grid items in the inline direction
    element.properties["justify-items"] = values.toJoinedString()
proc setJustifyItems*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `justify-items` CSS property
    ##
    ## Is set on the grid container. Specifies the alignment of grid items in the inline direction
    result = element
    result.properties["justify-items"] = values.toJoinedString()

proc justifySelf*(values: varargs[string]): CssAttribute =
    ## Constructs the `justify-self` CSS property
    ##
    ## Is set on the grid item. Specifies the alignment of the grid item in the inline direction
    result = ["justify-self", values.toJoinedString()]
proc setJustifySelf*(element: var CssElement, values: varargs[string]) =
    ## Sets the `justify-self` CSS property
    ##
    ## Is set on the grid item. Specifies the alignment of the grid item in the inline direction
    element.properties["justify-self"] = values.toJoinedString()
proc setJustifySelf*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `justify-self` CSS property
    ##
    ## Is set on the grid item. Specifies the alignment of the grid item in the inline direction
    result = element
    result.properties["justify-self"] = values.toJoinedString()

proc cssAtKeyframes*(values: varargs[string]): CssAttribute =
    ## Constructs the `@keyframes` CSS property
    ##
    ## Specifies the animation code
    result = ["@keyframes", values.toJoinedString()]
proc setCssAtKeyframes*(element: var CssElement, values: varargs[string]) =
    ## Sets the `@keyframes` CSS property
    ##
    ## Specifies the animation code
    element.properties["@keyframes"] = values.toJoinedString()
proc setCssAtKeyframes*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `@keyframes` CSS property
    ##
    ## Specifies the animation code
    result = element
    result.properties["@keyframes"] = values.toJoinedString()

proc left*(values: varargs[string]): CssAttribute =
    ## Constructs the `left` CSS property
    ##
    ## Specifies the left position of a positioned element
    result = ["left", values.toJoinedString()]
proc setLeft*(element: var CssElement, values: varargs[string]) =
    ## Sets the `left` CSS property
    ##
    ## Specifies the left position of a positioned element
    element.properties["left"] = values.toJoinedString()
proc setLeft*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `left` CSS property
    ##
    ## Specifies the left position of a positioned element
    result = element
    result.properties["left"] = values.toJoinedString()

proc letterSpacing*(values: varargs[string]): CssAttribute =
    ## Constructs the `letter-spacing` CSS property
    ##
    ## Increases or decreases the space between characters in a text
    result = ["letter-spacing", values.toJoinedString()]
proc setLetterSpacing*(element: var CssElement, values: varargs[string]) =
    ## Sets the `letter-spacing` CSS property
    ##
    ## Increases or decreases the space between characters in a text
    element.properties["letter-spacing"] = values.toJoinedString()
proc setLetterSpacing*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `letter-spacing` CSS property
    ##
    ## Increases or decreases the space between characters in a text
    result = element
    result.properties["letter-spacing"] = values.toJoinedString()

proc lineBreak*(values: varargs[string]): CssAttribute =
    ## Constructs the `line-break` CSS property
    ##
    ## Specifies how/if to break lines
    result = ["line-break", values.toJoinedString()]
proc setLineBreak*(element: var CssElement, values: varargs[string]) =
    ## Sets the `line-break` CSS property
    ##
    ## Specifies how/if to break lines
    element.properties["line-break"] = values.toJoinedString()
proc setLineBreak*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `line-break` CSS property
    ##
    ## Specifies how/if to break lines
    result = element
    result.properties["line-break"] = values.toJoinedString()

proc lineHeight*(values: varargs[string]): CssAttribute =
    ## Constructs the `line-height` CSS property
    ##
    ## Sets the line height
    result = ["line-height", values.toJoinedString()]
proc setLineHeight*(element: var CssElement, values: varargs[string]) =
    ## Sets the `line-height` CSS property
    ##
    ## Sets the line height
    element.properties["line-height"] = values.toJoinedString()
proc setLineHeight*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `line-height` CSS property
    ##
    ## Sets the line height
    result = element
    result.properties["line-height"] = values.toJoinedString()

proc listStyle*(values: varargs[string]): CssAttribute =
    ## Constructs the `list-style` CSS property
    ##
    ## Sets all the properties for a list in one declaration
    result = ["list-style", values.toJoinedString()]
proc setListStyle*(element: var CssElement, values: varargs[string]) =
    ## Sets the `list-style` CSS property
    ##
    ## Sets all the properties for a list in one declaration
    element.properties["list-style"] = values.toJoinedString()
proc setListStyle*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `list-style` CSS property
    ##
    ## Sets all the properties for a list in one declaration
    result = element
    result.properties["list-style"] = values.toJoinedString()

proc listStyleImage*(values: varargs[string]): CssAttribute =
    ## Constructs the `list-style-image` CSS property
    ##
    ## Specifies an image as the list-item marker
    result = ["list-style-image", values.toJoinedString()]
proc setListStyleImage*(element: var CssElement, values: varargs[string]) =
    ## Sets the `list-style-image` CSS property
    ##
    ## Specifies an image as the list-item marker
    element.properties["list-style-image"] = values.toJoinedString()
proc setListStyleImage*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `list-style-image` CSS property
    ##
    ## Specifies an image as the list-item marker
    result = element
    result.properties["list-style-image"] = values.toJoinedString()

proc listStylePosition*(values: varargs[string]): CssAttribute =
    ## Constructs the `list-style-position` CSS property
    ##
    ## Specifies the position of the list-item markers (bullet points)
    result = ["list-style-position", values.toJoinedString()]
proc setListStylePosition*(element: var CssElement, values: varargs[string]) =
    ## Sets the `list-style-position` CSS property
    ##
    ## Specifies the position of the list-item markers (bullet points)
    element.properties["list-style-position"] = values.toJoinedString()
proc setListStylePosition*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `list-style-position` CSS property
    ##
    ## Specifies the position of the list-item markers (bullet points)
    result = element
    result.properties["list-style-position"] = values.toJoinedString()

proc listStyleType*(values: varargs[string]): CssAttribute =
    ## Constructs the `list-style-type` CSS property
    ##
    ## Specifies the type of list-item marker
    result = ["list-style-type", values.toJoinedString()]
proc setListStyleType*(element: var CssElement, values: varargs[string]) =
    ## Sets the `list-style-type` CSS property
    ##
    ## Specifies the type of list-item marker
    element.properties["list-style-type"] = values.toJoinedString()
proc setListStyleType*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `list-style-type` CSS property
    ##
    ## Specifies the type of list-item marker
    result = element
    result.properties["list-style-type"] = values.toJoinedString()

proc margin*(values: varargs[string]): CssAttribute =
    ## Constructs the `margin` CSS property
    ##
    ## Sets all the margin properties in one declaration
    result = ["margin", values.toJoinedString()]
proc setMargin*(element: var CssElement, values: varargs[string]) =
    ## Sets the `margin` CSS property
    ##
    ## Sets all the margin properties in one declaration
    element.properties["margin"] = values.toJoinedString()
proc setMargin*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `margin` CSS property
    ##
    ## Sets all the margin properties in one declaration
    result = element
    result.properties["margin"] = values.toJoinedString()

proc marginBlock*(values: varargs[string]): CssAttribute =
    ## Constructs the `margin-block` CSS property
    ##
    ## Specifies the margin in the block direction
    result = ["margin-block", values.toJoinedString()]
proc setMarginBlock*(element: var CssElement, values: varargs[string]) =
    ## Sets the `margin-block` CSS property
    ##
    ## Specifies the margin in the block direction
    element.properties["margin-block"] = values.toJoinedString()
proc setMarginBlock*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `margin-block` CSS property
    ##
    ## Specifies the margin in the block direction
    result = element
    result.properties["margin-block"] = values.toJoinedString()

proc marginBlockEnd*(values: varargs[string]): CssAttribute =
    ## Constructs the `margin-block-end` CSS property
    ##
    ## Specifies the margin at the end in the block direction
    result = ["margin-block-end", values.toJoinedString()]
proc setMarginBlockEnd*(element: var CssElement, values: varargs[string]) =
    ## Sets the `margin-block-end` CSS property
    ##
    ## Specifies the margin at the end in the block direction
    element.properties["margin-block-end"] = values.toJoinedString()
proc setMarginBlockEnd*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `margin-block-end` CSS property
    ##
    ## Specifies the margin at the end in the block direction
    result = element
    result.properties["margin-block-end"] = values.toJoinedString()

proc marginBlockStart*(values: varargs[string]): CssAttribute =
    ## Constructs the `margin-block-start` CSS property
    ##
    ## Specifies the margin at the start in the block direction
    result = ["margin-block-start", values.toJoinedString()]
proc setMarginBlockStart*(element: var CssElement, values: varargs[string]) =
    ## Sets the `margin-block-start` CSS property
    ##
    ## Specifies the margin at the start in the block direction
    element.properties["margin-block-start"] = values.toJoinedString()
proc setMarginBlockStart*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `margin-block-start` CSS property
    ##
    ## Specifies the margin at the start in the block direction
    result = element
    result.properties["margin-block-start"] = values.toJoinedString()

proc marginBottom*(values: varargs[string]): CssAttribute =
    ## Constructs the `margin-bottom` CSS property
    ##
    ## Sets the bottom margin of an element
    result = ["margin-bottom", values.toJoinedString()]
proc setMarginBottom*(element: var CssElement, values: varargs[string]) =
    ## Sets the `margin-bottom` CSS property
    ##
    ## Sets the bottom margin of an element
    element.properties["margin-bottom"] = values.toJoinedString()
proc setMarginBottom*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `margin-bottom` CSS property
    ##
    ## Sets the bottom margin of an element
    result = element
    result.properties["margin-bottom"] = values.toJoinedString()

proc marginInline*(values: varargs[string]): CssAttribute =
    ## Constructs the `margin-inline` CSS property
    ##
    ## Specifies the margin in the inline direction
    result = ["margin-inline", values.toJoinedString()]
proc setMarginInline*(element: var CssElement, values: varargs[string]) =
    ## Sets the `margin-inline` CSS property
    ##
    ## Specifies the margin in the inline direction
    element.properties["margin-inline"] = values.toJoinedString()
proc setMarginInline*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `margin-inline` CSS property
    ##
    ## Specifies the margin in the inline direction
    result = element
    result.properties["margin-inline"] = values.toJoinedString()

proc marginInlineEnd*(values: varargs[string]): CssAttribute =
    ## Constructs the `margin-inline-end` CSS property
    ##
    ## Specifies the margin at the end in the inline direction
    result = ["margin-inline-end", values.toJoinedString()]
proc setMarginInlineEnd*(element: var CssElement, values: varargs[string]) =
    ## Sets the `margin-inline-end` CSS property
    ##
    ## Specifies the margin at the end in the inline direction
    element.properties["margin-inline-end"] = values.toJoinedString()
proc setMarginInlineEnd*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `margin-inline-end` CSS property
    ##
    ## Specifies the margin at the end in the inline direction
    result = element
    result.properties["margin-inline-end"] = values.toJoinedString()

proc marginInlineStart*(values: varargs[string]): CssAttribute =
    ## Constructs the `margin-inline-start` CSS property
    ##
    ## Specifies the margin at the start in the inline direction
    result = ["margin-inline-start", values.toJoinedString()]
proc setMarginInlineStart*(element: var CssElement, values: varargs[string]) =
    ## Sets the `margin-inline-start` CSS property
    ##
    ## Specifies the margin at the start in the inline direction
    element.properties["margin-inline-start"] = values.toJoinedString()
proc setMarginInlineStart*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `margin-inline-start` CSS property
    ##
    ## Specifies the margin at the start in the inline direction
    result = element
    result.properties["margin-inline-start"] = values.toJoinedString()

proc marginLeft*(values: varargs[string]): CssAttribute =
    ## Constructs the `margin-left` CSS property
    ##
    ## Sets the left margin of an element
    result = ["margin-left", values.toJoinedString()]
proc setMarginLeft*(element: var CssElement, values: varargs[string]) =
    ## Sets the `margin-left` CSS property
    ##
    ## Sets the left margin of an element
    element.properties["margin-left"] = values.toJoinedString()
proc setMarginLeft*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `margin-left` CSS property
    ##
    ## Sets the left margin of an element
    result = element
    result.properties["margin-left"] = values.toJoinedString()

proc marginRight*(values: varargs[string]): CssAttribute =
    ## Constructs the `margin-right` CSS property
    ##
    ## Sets the right margin of an element
    result = ["margin-right", values.toJoinedString()]
proc setMarginRight*(element: var CssElement, values: varargs[string]) =
    ## Sets the `margin-right` CSS property
    ##
    ## Sets the right margin of an element
    element.properties["margin-right"] = values.toJoinedString()
proc setMarginRight*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `margin-right` CSS property
    ##
    ## Sets the right margin of an element
    result = element
    result.properties["margin-right"] = values.toJoinedString()

proc marginTop*(values: varargs[string]): CssAttribute =
    ## Constructs the `margin-top` CSS property
    ##
    ## Sets the top margin of an element
    result = ["margin-top", values.toJoinedString()]
proc setMarginTop*(element: var CssElement, values: varargs[string]) =
    ## Sets the `margin-top` CSS property
    ##
    ## Sets the top margin of an element
    element.properties["margin-top"] = values.toJoinedString()
proc setMarginTop*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `margin-top` CSS property
    ##
    ## Sets the top margin of an element
    result = element
    result.properties["margin-top"] = values.toJoinedString()

proc marker*(values: varargs[string]): CssAttribute =
    ## Constructs the `marker` CSS property
    ##
    ## Points to a marker that will be drawn on all vertices of an element's path (the first, middle, and last)
    result = ["marker", values.toJoinedString()]
proc setMarker*(element: var CssElement, values: varargs[string]) =
    ## Sets the `marker` CSS property
    ##
    ## Points to a marker that will be drawn on all vertices of an element's path (the first, middle, and last)
    element.properties["marker"] = values.toJoinedString()
proc setMarker*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `marker` CSS property
    ##
    ## Points to a marker that will be drawn on all vertices of an element's path (the first, middle, and last)
    result = element
    result.properties["marker"] = values.toJoinedString()

proc markerEnd*(values: varargs[string]): CssAttribute =
    ## Constructs the `marker-end` CSS property
    ##
    ## Points to a marker that will be drawn on the last vertex of an element's path
    result = ["marker-end", values.toJoinedString()]
proc setMarkerEnd*(element: var CssElement, values: varargs[string]) =
    ## Sets the `marker-end` CSS property
    ##
    ## Points to a marker that will be drawn on the last vertex of an element's path
    element.properties["marker-end"] = values.toJoinedString()
proc setMarkerEnd*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `marker-end` CSS property
    ##
    ## Points to a marker that will be drawn on the last vertex of an element's path
    result = element
    result.properties["marker-end"] = values.toJoinedString()

proc markerMid*(values: varargs[string]): CssAttribute =
    ## Constructs the `marker-mid` CSS property
    ##
    ## Points to a marker that will be drawn on all the middle vertices of an element's path
    result = ["marker-mid", values.toJoinedString()]
proc setMarkerMid*(element: var CssElement, values: varargs[string]) =
    ## Sets the `marker-mid` CSS property
    ##
    ## Points to a marker that will be drawn on all the middle vertices of an element's path
    element.properties["marker-mid"] = values.toJoinedString()
proc setMarkerMid*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `marker-mid` CSS property
    ##
    ## Points to a marker that will be drawn on all the middle vertices of an element's path
    result = element
    result.properties["marker-mid"] = values.toJoinedString()

proc markerStart*(values: varargs[string]): CssAttribute =
    ## Constructs the `marker-start` CSS property
    ##
    ## Points to a marker that will be drawn on the first vertex of an element's path
    result = ["marker-start", values.toJoinedString()]
proc setMarkerStart*(element: var CssElement, values: varargs[string]) =
    ## Sets the `marker-start` CSS property
    ##
    ## Points to a marker that will be drawn on the first vertex of an element's path
    element.properties["marker-start"] = values.toJoinedString()
proc setMarkerStart*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `marker-start` CSS property
    ##
    ## Points to a marker that will be drawn on the first vertex of an element's path
    result = element
    result.properties["marker-start"] = values.toJoinedString()

proc mask*(values: varargs[string]): CssAttribute =
    ## Constructs the `mask` CSS property
    ##
    ## A shorthand property for mask-image, mask-mode, mask-repeat, mask-position, mask-clip, mask-origin, mask-size and mask-composite
    result = ["mask", values.toJoinedString()]
proc setMask*(element: var CssElement, values: varargs[string]) =
    ## Sets the `mask` CSS property
    ##
    ## A shorthand property for mask-image, mask-mode, mask-repeat, mask-position, mask-clip, mask-origin, mask-size and mask-composite
    element.properties["mask"] = values.toJoinedString()
proc setMask*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `mask` CSS property
    ##
    ## A shorthand property for mask-image, mask-mode, mask-repeat, mask-position, mask-clip, mask-origin, mask-size and mask-composite
    result = element
    result.properties["mask"] = values.toJoinedString()

proc maskClip*(values: varargs[string]): CssAttribute =
    ## Constructs the `mask-clip` CSS property
    ##
    ## Specifies which area is affected by a mask image
    result = ["mask-clip", values.toJoinedString()]
proc setMaskClip*(element: var CssElement, values: varargs[string]) =
    ## Sets the `mask-clip` CSS property
    ##
    ## Specifies which area is affected by a mask image
    element.properties["mask-clip"] = values.toJoinedString()
proc setMaskClip*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `mask-clip` CSS property
    ##
    ## Specifies which area is affected by a mask image
    result = element
    result.properties["mask-clip"] = values.toJoinedString()

proc maskComposite*(values: varargs[string]): CssAttribute =
    ## Constructs the `mask-composite` CSS property
    ##
    ## Specifies a compositing operation used on the current mask layer with the mask layers below it
    result = ["mask-composite", values.toJoinedString()]
proc setMaskComposite*(element: var CssElement, values: varargs[string]) =
    ## Sets the `mask-composite` CSS property
    ##
    ## Specifies a compositing operation used on the current mask layer with the mask layers below it
    element.properties["mask-composite"] = values.toJoinedString()
proc setMaskComposite*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `mask-composite` CSS property
    ##
    ## Specifies a compositing operation used on the current mask layer with the mask layers below it
    result = element
    result.properties["mask-composite"] = values.toJoinedString()

proc maskImage*(values: varargs[string]): CssAttribute =
    ## Constructs the `mask-image` CSS property
    ##
    ## Specifies an image to be used as a mask layer for an element
    result = ["mask-image", values.toJoinedString()]
proc setMaskImage*(element: var CssElement, values: varargs[string]) =
    ## Sets the `mask-image` CSS property
    ##
    ## Specifies an image to be used as a mask layer for an element
    element.properties["mask-image"] = values.toJoinedString()
proc setMaskImage*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `mask-image` CSS property
    ##
    ## Specifies an image to be used as a mask layer for an element
    result = element
    result.properties["mask-image"] = values.toJoinedString()

proc maskMode*(values: varargs[string]): CssAttribute =
    ## Constructs the `mask-mode` CSS property
    ##
    ## Specifies whether the mask layer image is treated as a luminance mask or as an alpha mask
    result = ["mask-mode", values.toJoinedString()]
proc setMaskMode*(element: var CssElement, values: varargs[string]) =
    ## Sets the `mask-mode` CSS property
    ##
    ## Specifies whether the mask layer image is treated as a luminance mask or as an alpha mask
    element.properties["mask-mode"] = values.toJoinedString()
proc setMaskMode*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `mask-mode` CSS property
    ##
    ## Specifies whether the mask layer image is treated as a luminance mask or as an alpha mask
    result = element
    result.properties["mask-mode"] = values.toJoinedString()

proc maskOrigin*(values: varargs[string]): CssAttribute =
    ## Constructs the `mask-origin` CSS property
    ##
    ## Specifies the origin position (the mask position area) of a mask layer image
    result = ["mask-origin", values.toJoinedString()]
proc setMaskOrigin*(element: var CssElement, values: varargs[string]) =
    ## Sets the `mask-origin` CSS property
    ##
    ## Specifies the origin position (the mask position area) of a mask layer image
    element.properties["mask-origin"] = values.toJoinedString()
proc setMaskOrigin*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `mask-origin` CSS property
    ##
    ## Specifies the origin position (the mask position area) of a mask layer image
    result = element
    result.properties["mask-origin"] = values.toJoinedString()

proc maskPosition*(values: varargs[string]): CssAttribute =
    ## Constructs the `mask-position` CSS property
    ##
    ## Sets the starting position of a mask layer image (relative to the mask position area)
    result = ["mask-position", values.toJoinedString()]
proc setMaskPosition*(element: var CssElement, values: varargs[string]) =
    ## Sets the `mask-position` CSS property
    ##
    ## Sets the starting position of a mask layer image (relative to the mask position area)
    element.properties["mask-position"] = values.toJoinedString()
proc setMaskPosition*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `mask-position` CSS property
    ##
    ## Sets the starting position of a mask layer image (relative to the mask position area)
    result = element
    result.properties["mask-position"] = values.toJoinedString()

proc maskRepeat*(values: varargs[string]): CssAttribute =
    ## Constructs the `mask-repeat` CSS property
    ##
    ## Specifies how the mask layer image is repeated
    result = ["mask-repeat", values.toJoinedString()]
proc setMaskRepeat*(element: var CssElement, values: varargs[string]) =
    ## Sets the `mask-repeat` CSS property
    ##
    ## Specifies how the mask layer image is repeated
    element.properties["mask-repeat"] = values.toJoinedString()
proc setMaskRepeat*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `mask-repeat` CSS property
    ##
    ## Specifies how the mask layer image is repeated
    result = element
    result.properties["mask-repeat"] = values.toJoinedString()

proc maskSize*(values: varargs[string]): CssAttribute =
    ## Constructs the `mask-size` CSS property
    ##
    ## Specifies the size of a mask layer image
    result = ["mask-size", values.toJoinedString()]
proc setMaskSize*(element: var CssElement, values: varargs[string]) =
    ## Sets the `mask-size` CSS property
    ##
    ## Specifies the size of a mask layer image
    element.properties["mask-size"] = values.toJoinedString()
proc setMaskSize*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `mask-size` CSS property
    ##
    ## Specifies the size of a mask layer image
    result = element
    result.properties["mask-size"] = values.toJoinedString()

proc maskType*(values: varargs[string]): CssAttribute =
    ## Constructs the `mask-type` CSS property
    ##
    ## Specifies whether an SVG <mask> element is treated as a luminance mask or as an alpha mask
    result = ["mask-type", values.toJoinedString()]
proc setMaskType*(element: var CssElement, values: varargs[string]) =
    ## Sets the `mask-type` CSS property
    ##
    ## Specifies whether an SVG <mask> element is treated as a luminance mask or as an alpha mask
    element.properties["mask-type"] = values.toJoinedString()
proc setMaskType*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `mask-type` CSS property
    ##
    ## Specifies whether an SVG <mask> element is treated as a luminance mask or as an alpha mask
    result = element
    result.properties["mask-type"] = values.toJoinedString()

proc maxHeight*(values: varargs[string]): CssAttribute =
    ## Constructs the `max-height` CSS property
    ##
    ## Sets the maximum height of an element
    result = ["max-height", values.toJoinedString()]
proc setMaxHeight*(element: var CssElement, values: varargs[string]) =
    ## Sets the `max-height` CSS property
    ##
    ## Sets the maximum height of an element
    element.properties["max-height"] = values.toJoinedString()
proc setMaxHeight*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `max-height` CSS property
    ##
    ## Sets the maximum height of an element
    result = element
    result.properties["max-height"] = values.toJoinedString()

proc maxWidth*(values: varargs[string]): CssAttribute =
    ## Constructs the `max-width` CSS property
    ##
    ## Sets the maximum width of an element
    result = ["max-width", values.toJoinedString()]
proc setMaxWidth*(element: var CssElement, values: varargs[string]) =
    ## Sets the `max-width` CSS property
    ##
    ## Sets the maximum width of an element
    element.properties["max-width"] = values.toJoinedString()
proc setMaxWidth*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `max-width` CSS property
    ##
    ## Sets the maximum width of an element
    result = element
    result.properties["max-width"] = values.toJoinedString()

proc cssAtMedia*(values: varargs[string]): CssAttribute =
    ## Constructs the `@media` CSS property
    ##
    ## Sets the style rules for different media types/devices/sizes
    result = ["@media", values.toJoinedString()]
proc setCssAtMedia*(element: var CssElement, values: varargs[string]) =
    ## Sets the `@media` CSS property
    ##
    ## Sets the style rules for different media types/devices/sizes
    element.properties["@media"] = values.toJoinedString()
proc setCssAtMedia*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `@media` CSS property
    ##
    ## Sets the style rules for different media types/devices/sizes
    result = element
    result.properties["@media"] = values.toJoinedString()

proc maxBlockSize*(values: varargs[string]): CssAttribute =
    ## Constructs the `max-block-size` CSS property
    ##
    ## Sets the maximum size of an element in the block direction
    result = ["max-block-size", values.toJoinedString()]
proc setMaxBlockSize*(element: var CssElement, values: varargs[string]) =
    ## Sets the `max-block-size` CSS property
    ##
    ## Sets the maximum size of an element in the block direction
    element.properties["max-block-size"] = values.toJoinedString()
proc setMaxBlockSize*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `max-block-size` CSS property
    ##
    ## Sets the maximum size of an element in the block direction
    result = element
    result.properties["max-block-size"] = values.toJoinedString()

proc maxInlineSize*(values: varargs[string]): CssAttribute =
    ## Constructs the `max-inline-size` CSS property
    ##
    ## Sets the maximum size of an element in the inline direction
    result = ["max-inline-size", values.toJoinedString()]
proc setMaxInlineSize*(element: var CssElement, values: varargs[string]) =
    ## Sets the `max-inline-size` CSS property
    ##
    ## Sets the maximum size of an element in the inline direction
    element.properties["max-inline-size"] = values.toJoinedString()
proc setMaxInlineSize*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `max-inline-size` CSS property
    ##
    ## Sets the maximum size of an element in the inline direction
    result = element
    result.properties["max-inline-size"] = values.toJoinedString()

proc minBlockSize*(values: varargs[string]): CssAttribute =
    ## Constructs the `min-block-size` CSS property
    ##
    ## Sets the minimum size of an element in the block direction
    result = ["min-block-size", values.toJoinedString()]
proc setMinBlockSize*(element: var CssElement, values: varargs[string]) =
    ## Sets the `min-block-size` CSS property
    ##
    ## Sets the minimum size of an element in the block direction
    element.properties["min-block-size"] = values.toJoinedString()
proc setMinBlockSize*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `min-block-size` CSS property
    ##
    ## Sets the minimum size of an element in the block direction
    result = element
    result.properties["min-block-size"] = values.toJoinedString()

proc minInlineSize*(values: varargs[string]): CssAttribute =
    ## Constructs the `min-inline-size` CSS property
    ##
    ## Sets the minimum size of an element in the inline direction
    result = ["min-inline-size", values.toJoinedString()]
proc setMinInlineSize*(element: var CssElement, values: varargs[string]) =
    ## Sets the `min-inline-size` CSS property
    ##
    ## Sets the minimum size of an element in the inline direction
    element.properties["min-inline-size"] = values.toJoinedString()
proc setMinInlineSize*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `min-inline-size` CSS property
    ##
    ## Sets the minimum size of an element in the inline direction
    result = element
    result.properties["min-inline-size"] = values.toJoinedString()

proc minHeight*(values: varargs[string]): CssAttribute =
    ## Constructs the `min-height` CSS property
    ##
    ## Sets the minimum height of an element
    result = ["min-height", values.toJoinedString()]
proc setMinHeight*(element: var CssElement, values: varargs[string]) =
    ## Sets the `min-height` CSS property
    ##
    ## Sets the minimum height of an element
    element.properties["min-height"] = values.toJoinedString()
proc setMinHeight*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `min-height` CSS property
    ##
    ## Sets the minimum height of an element
    result = element
    result.properties["min-height"] = values.toJoinedString()

proc minWidth*(values: varargs[string]): CssAttribute =
    ## Constructs the `min-width` CSS property
    ##
    ## Sets the minimum width of an element
    result = ["min-width", values.toJoinedString()]
proc setMinWidth*(element: var CssElement, values: varargs[string]) =
    ## Sets the `min-width` CSS property
    ##
    ## Sets the minimum width of an element
    element.properties["min-width"] = values.toJoinedString()
proc setMinWidth*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `min-width` CSS property
    ##
    ## Sets the minimum width of an element
    result = element
    result.properties["min-width"] = values.toJoinedString()

proc mixBlendMode*(values: varargs[string]): CssAttribute =
    ## Constructs the `mix-blend-mode` CSS property
    ##
    ## Specifies how an element's content should blend with its direct parent background
    result = ["mix-blend-mode", values.toJoinedString()]
proc setMixBlendMode*(element: var CssElement, values: varargs[string]) =
    ## Sets the `mix-blend-mode` CSS property
    ##
    ## Specifies how an element's content should blend with its direct parent background
    element.properties["mix-blend-mode"] = values.toJoinedString()
proc setMixBlendMode*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `mix-blend-mode` CSS property
    ##
    ## Specifies how an element's content should blend with its direct parent background
    result = element
    result.properties["mix-blend-mode"] = values.toJoinedString()

proc objectFit*(values: varargs[string]): CssAttribute =
    ## Constructs the `object-fit` CSS property
    ##
    ## Specifies how the contents of a replaced element should be fitted to the box established by its used height and width
    result = ["object-fit", values.toJoinedString()]
proc setObjectFit*(element: var CssElement, values: varargs[string]) =
    ## Sets the `object-fit` CSS property
    ##
    ## Specifies how the contents of a replaced element should be fitted to the box established by its used height and width
    element.properties["object-fit"] = values.toJoinedString()
proc setObjectFit*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `object-fit` CSS property
    ##
    ## Specifies how the contents of a replaced element should be fitted to the box established by its used height and width
    result = element
    result.properties["object-fit"] = values.toJoinedString()

proc objectPosition*(values: varargs[string]): CssAttribute =
    ## Constructs the `object-position` CSS property
    ##
    ## Specifies the alignment of the replaced element inside its box
    result = ["object-position", values.toJoinedString()]
proc setObjectPosition*(element: var CssElement, values: varargs[string]) =
    ## Sets the `object-position` CSS property
    ##
    ## Specifies the alignment of the replaced element inside its box
    element.properties["object-position"] = values.toJoinedString()
proc setObjectPosition*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `object-position` CSS property
    ##
    ## Specifies the alignment of the replaced element inside its box
    result = element
    result.properties["object-position"] = values.toJoinedString()

proc offset*(values: varargs[string]): CssAttribute =
    ## Constructs the `offset` CSS property
    ##
    ## A shorthand property for the offset-anchor, offset-distance, offset-path, offset-position, and the offset-rotate properties
    result = ["offset", values.toJoinedString()]
proc setOffset*(element: var CssElement, values: varargs[string]) =
    ## Sets the `offset` CSS property
    ##
    ## A shorthand property for the offset-anchor, offset-distance, offset-path, offset-position, and the offset-rotate properties
    element.properties["offset"] = values.toJoinedString()
proc setOffset*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `offset` CSS property
    ##
    ## A shorthand property for the offset-anchor, offset-distance, offset-path, offset-position, and the offset-rotate properties
    result = element
    result.properties["offset"] = values.toJoinedString()

proc offsetAnchor*(values: varargs[string]): CssAttribute =
    ## Constructs the `offset-anchor` CSS property
    ##
    ## Specifies a point on an element that is fixed to the path it is animated along
    result = ["offset-anchor", values.toJoinedString()]
proc setOffsetAnchor*(element: var CssElement, values: varargs[string]) =
    ## Sets the `offset-anchor` CSS property
    ##
    ## Specifies a point on an element that is fixed to the path it is animated along
    element.properties["offset-anchor"] = values.toJoinedString()
proc setOffsetAnchor*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `offset-anchor` CSS property
    ##
    ## Specifies a point on an element that is fixed to the path it is animated along
    result = element
    result.properties["offset-anchor"] = values.toJoinedString()

proc offsetDistance*(values: varargs[string]): CssAttribute =
    ## Constructs the `offset-distance` CSS property
    ##
    ## Specifies the position along a path where an animated element is placed
    result = ["offset-distance", values.toJoinedString()]
proc setOffsetDistance*(element: var CssElement, values: varargs[string]) =
    ## Sets the `offset-distance` CSS property
    ##
    ## Specifies the position along a path where an animated element is placed
    element.properties["offset-distance"] = values.toJoinedString()
proc setOffsetDistance*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `offset-distance` CSS property
    ##
    ## Specifies the position along a path where an animated element is placed
    result = element
    result.properties["offset-distance"] = values.toJoinedString()

proc offsetPath*(values: varargs[string]): CssAttribute =
    ## Constructs the `offset-path` CSS property
    ##
    ## Specifies the path an element is animated along
    result = ["offset-path", values.toJoinedString()]
proc setOffsetPath*(element: var CssElement, values: varargs[string]) =
    ## Sets the `offset-path` CSS property
    ##
    ## Specifies the path an element is animated along
    element.properties["offset-path"] = values.toJoinedString()
proc setOffsetPath*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `offset-path` CSS property
    ##
    ## Specifies the path an element is animated along
    result = element
    result.properties["offset-path"] = values.toJoinedString()

proc offsetPosition*(values: varargs[string]): CssAttribute =
    ## Constructs the `offset-position` CSS property
    ##
    ## Specifies the initial position of an element along a path
    result = ["offset-position", values.toJoinedString()]
proc setOffsetPosition*(element: var CssElement, values: varargs[string]) =
    ## Sets the `offset-position` CSS property
    ##
    ## Specifies the initial position of an element along a path
    element.properties["offset-position"] = values.toJoinedString()
proc setOffsetPosition*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `offset-position` CSS property
    ##
    ## Specifies the initial position of an element along a path
    result = element
    result.properties["offset-position"] = values.toJoinedString()

proc offsetRotate*(values: varargs[string]): CssAttribute =
    ## Constructs the `offset-rotate` CSS property
    ##
    ## Specifies rotation of an element as it is animated along a path
    result = ["offset-rotate", values.toJoinedString()]
proc setOffsetRotate*(element: var CssElement, values: varargs[string]) =
    ## Sets the `offset-rotate` CSS property
    ##
    ## Specifies rotation of an element as it is animated along a path
    element.properties["offset-rotate"] = values.toJoinedString()
proc setOffsetRotate*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `offset-rotate` CSS property
    ##
    ## Specifies rotation of an element as it is animated along a path
    result = element
    result.properties["offset-rotate"] = values.toJoinedString()

proc opacity*(values: varargs[string]): CssAttribute =
    ## Constructs the `opacity` CSS property
    ##
    ## Sets the opacity level for an element
    result = ["opacity", values.toJoinedString()]
proc setOpacity*(element: var CssElement, values: varargs[string]) =
    ## Sets the `opacity` CSS property
    ##
    ## Sets the opacity level for an element
    element.properties["opacity"] = values.toJoinedString()
proc setOpacity*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `opacity` CSS property
    ##
    ## Sets the opacity level for an element
    result = element
    result.properties["opacity"] = values.toJoinedString()

proc order*(values: varargs[string]): CssAttribute =
    ## Constructs the `order` CSS property
    ##
    ## Sets the order of the flexible item, relative to the rest
    result = ["order", values.toJoinedString()]
proc setOrder*(element: var CssElement, values: varargs[string]) =
    ## Sets the `order` CSS property
    ##
    ## Sets the order of the flexible item, relative to the rest
    element.properties["order"] = values.toJoinedString()
proc setOrder*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `order` CSS property
    ##
    ## Sets the order of the flexible item, relative to the rest
    result = element
    result.properties["order"] = values.toJoinedString()

proc orphans*(values: varargs[string]): CssAttribute =
    ## Constructs the `orphans` CSS property
    ##
    ## Sets the minimum number of lines that must be left at the bottom of a page or column
    result = ["orphans", values.toJoinedString()]
proc setOrphans*(element: var CssElement, values: varargs[string]) =
    ## Sets the `orphans` CSS property
    ##
    ## Sets the minimum number of lines that must be left at the bottom of a page or column
    element.properties["orphans"] = values.toJoinedString()
proc setOrphans*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `orphans` CSS property
    ##
    ## Sets the minimum number of lines that must be left at the bottom of a page or column
    result = element
    result.properties["orphans"] = values.toJoinedString()

proc outline*(values: varargs[string]): CssAttribute =
    ## Constructs the `outline` CSS property
    ##
    ## A shorthand property for the outline-width, outline-style, and the outline-color properties
    result = ["outline", values.toJoinedString()]
proc setOutline*(element: var CssElement, values: varargs[string]) =
    ## Sets the `outline` CSS property
    ##
    ## A shorthand property for the outline-width, outline-style, and the outline-color properties
    element.properties["outline"] = values.toJoinedString()
proc setOutline*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `outline` CSS property
    ##
    ## A shorthand property for the outline-width, outline-style, and the outline-color properties
    result = element
    result.properties["outline"] = values.toJoinedString()

proc outlineColor*(values: varargs[string]): CssAttribute =
    ## Constructs the `outline-color` CSS property
    ##
    ## Sets the color of an outline
    result = ["outline-color", values.toJoinedString()]
proc setOutlineColor*(element: var CssElement, values: varargs[string]) =
    ## Sets the `outline-color` CSS property
    ##
    ## Sets the color of an outline
    element.properties["outline-color"] = values.toJoinedString()
proc setOutlineColor*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `outline-color` CSS property
    ##
    ## Sets the color of an outline
    result = element
    result.properties["outline-color"] = values.toJoinedString()

proc outlineColour*(values: varargs[string]): CssAttribute =
    ## Constructs the `outline-color` CSS property
    ##
    ## Sets the color of an outline
    result = ["outline-color", values.toJoinedString()]
proc setOutlineColour*(element: var CssElement, values: varargs[string]) =
    ## Sets the `outline-color` CSS property
    ##
    ## Sets the color of an outline
    element.properties["outline-color"] = values.toJoinedString()
proc setOutlineColour*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `outline-color` CSS property
    ##
    ## Sets the color of an outline
    result = element
    result.properties["outline-color"] = values.toJoinedString()

proc outlineOffset*(values: varargs[string]): CssAttribute =
    ## Constructs the `outline-offset` CSS property
    ##
    ## Offsets an outline, and draws it beyond the border edge
    result = ["outline-offset", values.toJoinedString()]
proc setOutlineOffset*(element: var CssElement, values: varargs[string]) =
    ## Sets the `outline-offset` CSS property
    ##
    ## Offsets an outline, and draws it beyond the border edge
    element.properties["outline-offset"] = values.toJoinedString()
proc setOutlineOffset*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `outline-offset` CSS property
    ##
    ## Offsets an outline, and draws it beyond the border edge
    result = element
    result.properties["outline-offset"] = values.toJoinedString()

proc outlineStyle*(values: varargs[string]): CssAttribute =
    ## Constructs the `outline-style` CSS property
    ##
    ## Sets the style of an outline
    result = ["outline-style", values.toJoinedString()]
proc setOutlineStyle*(element: var CssElement, values: varargs[string]) =
    ## Sets the `outline-style` CSS property
    ##
    ## Sets the style of an outline
    element.properties["outline-style"] = values.toJoinedString()
proc setOutlineStyle*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `outline-style` CSS property
    ##
    ## Sets the style of an outline
    result = element
    result.properties["outline-style"] = values.toJoinedString()

proc outlineWidth*(values: varargs[string]): CssAttribute =
    ## Constructs the `outline-width` CSS property
    ##
    ## Sets the width of an outline
    result = ["outline-width", values.toJoinedString()]
proc setOutlineWidth*(element: var CssElement, values: varargs[string]) =
    ## Sets the `outline-width` CSS property
    ##
    ## Sets the width of an outline
    element.properties["outline-width"] = values.toJoinedString()
proc setOutlineWidth*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `outline-width` CSS property
    ##
    ## Sets the width of an outline
    result = element
    result.properties["outline-width"] = values.toJoinedString()

proc overflow*(values: varargs[string]): CssAttribute =
    ## Constructs the `overflow` CSS property
    ##
    ## Specifies what happens if content overflows an element's box
    result = ["overflow", values.toJoinedString()]
proc setOverflow*(element: var CssElement, values: varargs[string]) =
    ## Sets the `overflow` CSS property
    ##
    ## Specifies what happens if content overflows an element's box
    element.properties["overflow"] = values.toJoinedString()
proc setOverflow*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `overflow` CSS property
    ##
    ## Specifies what happens if content overflows an element's box
    result = element
    result.properties["overflow"] = values.toJoinedString()

proc overflowAnchor*(values: varargs[string]): CssAttribute =
    ## Constructs the `overflow-anchor` CSS property
    ##
    ## Specifies whether or not content in viewable area in a scrollable contianer should be pushed down when new content is loaded above
    result = ["overflow-anchor", values.toJoinedString()]
proc setOverflowAnchor*(element: var CssElement, values: varargs[string]) =
    ## Sets the `overflow-anchor` CSS property
    ##
    ## Specifies whether or not content in viewable area in a scrollable contianer should be pushed down when new content is loaded above
    element.properties["overflow-anchor"] = values.toJoinedString()
proc setOverflowAnchor*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `overflow-anchor` CSS property
    ##
    ## Specifies whether or not content in viewable area in a scrollable contianer should be pushed down when new content is loaded above
    result = element
    result.properties["overflow-anchor"] = values.toJoinedString()

proc overflowWrap*(values: varargs[string]): CssAttribute =
    ## Constructs the `overflow-wrap` CSS property
    ##
    ## Specifies whether or not the browser can break lines with long words, if they overflow the container
    result = ["overflow-wrap", values.toJoinedString()]
proc setOverflowWrap*(element: var CssElement, values: varargs[string]) =
    ## Sets the `overflow-wrap` CSS property
    ##
    ## Specifies whether or not the browser can break lines with long words, if they overflow the container
    element.properties["overflow-wrap"] = values.toJoinedString()
proc setOverflowWrap*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `overflow-wrap` CSS property
    ##
    ## Specifies whether or not the browser can break lines with long words, if they overflow the container
    result = element
    result.properties["overflow-wrap"] = values.toJoinedString()

proc overflowX*(values: varargs[string]): CssAttribute =
    ## Constructs the `overflow-x` CSS property
    ##
    ## Specifies whether or not to clip the left/right edges of the content, if it overflows the element's content area
    result = ["overflow-x", values.toJoinedString()]
proc setOverflowX*(element: var CssElement, values: varargs[string]) =
    ## Sets the `overflow-x` CSS property
    ##
    ## Specifies whether or not to clip the left/right edges of the content, if it overflows the element's content area
    element.properties["overflow-x"] = values.toJoinedString()
proc setOverflowX*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `overflow-x` CSS property
    ##
    ## Specifies whether or not to clip the left/right edges of the content, if it overflows the element's content area
    result = element
    result.properties["overflow-x"] = values.toJoinedString()

proc overflowY*(values: varargs[string]): CssAttribute =
    ## Constructs the `overflow-y` CSS property
    ##
    ## Specifies whether or not to clip the top/bottom edges of the content, if it overflows the element's content area
    result = ["overflow-y", values.toJoinedString()]
proc setOverflowY*(element: var CssElement, values: varargs[string]) =
    ## Sets the `overflow-y` CSS property
    ##
    ## Specifies whether or not to clip the top/bottom edges of the content, if it overflows the element's content area
    element.properties["overflow-y"] = values.toJoinedString()
proc setOverflowY*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `overflow-y` CSS property
    ##
    ## Specifies whether or not to clip the top/bottom edges of the content, if it overflows the element's content area
    result = element
    result.properties["overflow-y"] = values.toJoinedString()

proc overscrollBehavior*(values: varargs[string]): CssAttribute =
    ## Constructs the `overscroll-behavior` CSS property
    ##
    ## Specifies whether to have scroll chaining or overscroll affordance in x- and y-directions
    result = ["overscroll-behavior", values.toJoinedString()]
proc setOverscrollBehavior*(element: var CssElement, values: varargs[string]) =
    ## Sets the `overscroll-behavior` CSS property
    ##
    ## Specifies whether to have scroll chaining or overscroll affordance in x- and y-directions
    element.properties["overscroll-behavior"] = values.toJoinedString()
proc setOverscrollBehavior*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `overscroll-behavior` CSS property
    ##
    ## Specifies whether to have scroll chaining or overscroll affordance in x- and y-directions
    result = element
    result.properties["overscroll-behavior"] = values.toJoinedString()

proc overscrollBehaviorBlock*(values: varargs[string]): CssAttribute =
    ## Constructs the `overscroll-behavior-block` CSS property
    ##
    ## Specifies whether to have scroll chaining or overscroll affordance in the block direction
    result = ["overscroll-behavior-block", values.toJoinedString()]
proc setOverscrollBehaviorBlock*(element: var CssElement, values: varargs[string]) =
    ## Sets the `overscroll-behavior-block` CSS property
    ##
    ## Specifies whether to have scroll chaining or overscroll affordance in the block direction
    element.properties["overscroll-behavior-block"] = values.toJoinedString()
proc setOverscrollBehaviorBlock*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `overscroll-behavior-block` CSS property
    ##
    ## Specifies whether to have scroll chaining or overscroll affordance in the block direction
    result = element
    result.properties["overscroll-behavior-block"] = values.toJoinedString()

proc overscrollBehaviorInline*(values: varargs[string]): CssAttribute =
    ## Constructs the `overscroll-behavior-inline` CSS property
    ##
    ## Specifies whether to have scroll chaining or overscroll affordance in the inline direction
    result = ["overscroll-behavior-inline", values.toJoinedString()]
proc setOverscrollBehaviorInline*(element: var CssElement, values: varargs[string]) =
    ## Sets the `overscroll-behavior-inline` CSS property
    ##
    ## Specifies whether to have scroll chaining or overscroll affordance in the inline direction
    element.properties["overscroll-behavior-inline"] = values.toJoinedString()
proc setOverscrollBehaviorInline*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `overscroll-behavior-inline` CSS property
    ##
    ## Specifies whether to have scroll chaining or overscroll affordance in the inline direction
    result = element
    result.properties["overscroll-behavior-inline"] = values.toJoinedString()

proc overscrollBehaviorX*(values: varargs[string]): CssAttribute =
    ## Constructs the `overscroll-behavior-x` CSS property
    ##
    ## Specifies whether to have scroll chaining or overscroll affordance in x-direction
    result = ["overscroll-behavior-x", values.toJoinedString()]
proc setOverscrollBehaviorX*(element: var CssElement, values: varargs[string]) =
    ## Sets the `overscroll-behavior-x` CSS property
    ##
    ## Specifies whether to have scroll chaining or overscroll affordance in x-direction
    element.properties["overscroll-behavior-x"] = values.toJoinedString()
proc setOverscrollBehaviorX*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `overscroll-behavior-x` CSS property
    ##
    ## Specifies whether to have scroll chaining or overscroll affordance in x-direction
    result = element
    result.properties["overscroll-behavior-x"] = values.toJoinedString()

proc overscrollBehaviorY*(values: varargs[string]): CssAttribute =
    ## Constructs the `overscroll-behavior-y` CSS property
    ##
    ## Specifies whether to have scroll chaining or overscroll affordance in y-directions
    result = ["overscroll-behavior-y", values.toJoinedString()]
proc setOverscrollBehaviorY*(element: var CssElement, values: varargs[string]) =
    ## Sets the `overscroll-behavior-y` CSS property
    ##
    ## Specifies whether to have scroll chaining or overscroll affordance in y-directions
    element.properties["overscroll-behavior-y"] = values.toJoinedString()
proc setOverscrollBehaviorY*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `overscroll-behavior-y` CSS property
    ##
    ## Specifies whether to have scroll chaining or overscroll affordance in y-directions
    result = element
    result.properties["overscroll-behavior-y"] = values.toJoinedString()

proc padding*(values: varargs[string]): CssAttribute =
    ## Constructs the `padding` CSS property
    ##
    ## A shorthand property for all the padding-\* properties
    result = ["padding", values.toJoinedString()]
proc setPadding*(element: var CssElement, values: varargs[string]) =
    ## Sets the `padding` CSS property
    ##
    ## A shorthand property for all the padding-\* properties
    element.properties["padding"] = values.toJoinedString()
proc setPadding*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `padding` CSS property
    ##
    ## A shorthand property for all the padding-\* properties
    result = element
    result.properties["padding"] = values.toJoinedString()

proc paddingBlock*(values: varargs[string]): CssAttribute =
    ## Constructs the `padding-block` CSS property
    ##
    ## Specifies the padding in the block direction
    result = ["padding-block", values.toJoinedString()]
proc setPaddingBlock*(element: var CssElement, values: varargs[string]) =
    ## Sets the `padding-block` CSS property
    ##
    ## Specifies the padding in the block direction
    element.properties["padding-block"] = values.toJoinedString()
proc setPaddingBlock*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `padding-block` CSS property
    ##
    ## Specifies the padding in the block direction
    result = element
    result.properties["padding-block"] = values.toJoinedString()

proc paddingBlockEnd*(values: varargs[string]): CssAttribute =
    ## Constructs the `padding-block-end` CSS property
    ##
    ## Specifies the padding at the end in the block direction
    result = ["padding-block-end", values.toJoinedString()]
proc setPaddingBlockEnd*(element: var CssElement, values: varargs[string]) =
    ## Sets the `padding-block-end` CSS property
    ##
    ## Specifies the padding at the end in the block direction
    element.properties["padding-block-end"] = values.toJoinedString()
proc setPaddingBlockEnd*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `padding-block-end` CSS property
    ##
    ## Specifies the padding at the end in the block direction
    result = element
    result.properties["padding-block-end"] = values.toJoinedString()

proc paddingBlockStart*(values: varargs[string]): CssAttribute =
    ## Constructs the `padding-block-start` CSS property
    ##
    ## Specifies the padding at the start in the block direction
    result = ["padding-block-start", values.toJoinedString()]
proc setPaddingBlockStart*(element: var CssElement, values: varargs[string]) =
    ## Sets the `padding-block-start` CSS property
    ##
    ## Specifies the padding at the start in the block direction
    element.properties["padding-block-start"] = values.toJoinedString()
proc setPaddingBlockStart*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `padding-block-start` CSS property
    ##
    ## Specifies the padding at the start in the block direction
    result = element
    result.properties["padding-block-start"] = values.toJoinedString()

proc paddingBottom*(values: varargs[string]): CssAttribute =
    ## Constructs the `padding-bottom` CSS property
    ##
    ## Sets the bottom padding of an element
    result = ["padding-bottom", values.toJoinedString()]
proc setPaddingBottom*(element: var CssElement, values: varargs[string]) =
    ## Sets the `padding-bottom` CSS property
    ##
    ## Sets the bottom padding of an element
    element.properties["padding-bottom"] = values.toJoinedString()
proc setPaddingBottom*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `padding-bottom` CSS property
    ##
    ## Sets the bottom padding of an element
    result = element
    result.properties["padding-bottom"] = values.toJoinedString()

proc paddingInline*(values: varargs[string]): CssAttribute =
    ## Constructs the `padding-inline` CSS property
    ##
    ## Specifies the padding in the inline direction
    result = ["padding-inline", values.toJoinedString()]
proc setPaddingInline*(element: var CssElement, values: varargs[string]) =
    ## Sets the `padding-inline` CSS property
    ##
    ## Specifies the padding in the inline direction
    element.properties["padding-inline"] = values.toJoinedString()
proc setPaddingInline*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `padding-inline` CSS property
    ##
    ## Specifies the padding in the inline direction
    result = element
    result.properties["padding-inline"] = values.toJoinedString()

proc paddingInlineEnd*(values: varargs[string]): CssAttribute =
    ## Constructs the `padding-inline-end` CSS property
    ##
    ## Specifies the padding at the end in the inline direction
    result = ["padding-inline-end", values.toJoinedString()]
proc setPaddingInlineEnd*(element: var CssElement, values: varargs[string]) =
    ## Sets the `padding-inline-end` CSS property
    ##
    ## Specifies the padding at the end in the inline direction
    element.properties["padding-inline-end"] = values.toJoinedString()
proc setPaddingInlineEnd*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `padding-inline-end` CSS property
    ##
    ## Specifies the padding at the end in the inline direction
    result = element
    result.properties["padding-inline-end"] = values.toJoinedString()

proc paddingInlineStart*(values: varargs[string]): CssAttribute =
    ## Constructs the `padding-inline-start` CSS property
    ##
    ## Specifies the padding at the start in the inline direction
    result = ["padding-inline-start", values.toJoinedString()]
proc setPaddingInlineStart*(element: var CssElement, values: varargs[string]) =
    ## Sets the `padding-inline-start` CSS property
    ##
    ## Specifies the padding at the start in the inline direction
    element.properties["padding-inline-start"] = values.toJoinedString()
proc setPaddingInlineStart*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `padding-inline-start` CSS property
    ##
    ## Specifies the padding at the start in the inline direction
    result = element
    result.properties["padding-inline-start"] = values.toJoinedString()

proc paddingLeft*(values: varargs[string]): CssAttribute =
    ## Constructs the `padding-left` CSS property
    ##
    ## Sets the left padding of an element
    result = ["padding-left", values.toJoinedString()]
proc setPaddingLeft*(element: var CssElement, values: varargs[string]) =
    ## Sets the `padding-left` CSS property
    ##
    ## Sets the left padding of an element
    element.properties["padding-left"] = values.toJoinedString()
proc setPaddingLeft*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `padding-left` CSS property
    ##
    ## Sets the left padding of an element
    result = element
    result.properties["padding-left"] = values.toJoinedString()

proc paddingRight*(values: varargs[string]): CssAttribute =
    ## Constructs the `padding-right` CSS property
    ##
    ## Sets the right padding of an element
    result = ["padding-right", values.toJoinedString()]
proc setPaddingRight*(element: var CssElement, values: varargs[string]) =
    ## Sets the `padding-right` CSS property
    ##
    ## Sets the right padding of an element
    element.properties["padding-right"] = values.toJoinedString()
proc setPaddingRight*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `padding-right` CSS property
    ##
    ## Sets the right padding of an element
    result = element
    result.properties["padding-right"] = values.toJoinedString()

proc paddingTop*(values: varargs[string]): CssAttribute =
    ## Constructs the `padding-top` CSS property
    ##
    ## Sets the top padding of an element
    result = ["padding-top", values.toJoinedString()]
proc setPaddingTop*(element: var CssElement, values: varargs[string]) =
    ## Sets the `padding-top` CSS property
    ##
    ## Sets the top padding of an element
    element.properties["padding-top"] = values.toJoinedString()
proc setPaddingTop*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `padding-top` CSS property
    ##
    ## Sets the top padding of an element
    result = element
    result.properties["padding-top"] = values.toJoinedString()

proc pageBreakAfter*(values: varargs[string]): CssAttribute =
    ## Constructs the `page-break-after` CSS property
    ##
    ## Sets the page-break behavior after an element. Replaced by break-after property
    result = ["page-break-after", values.toJoinedString()]
proc setPageBreakAfter*(element: var CssElement, values: varargs[string]) =
    ## Sets the `page-break-after` CSS property
    ##
    ## Sets the page-break behavior after an element. Replaced by break-after property
    element.properties["page-break-after"] = values.toJoinedString()
proc setPageBreakAfter*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `page-break-after` CSS property
    ##
    ## Sets the page-break behavior after an element. Replaced by break-after property
    result = element
    result.properties["page-break-after"] = values.toJoinedString()

proc pageBreakBefore*(values: varargs[string]): CssAttribute =
    ## Constructs the `page-break-before` CSS property
    ##
    ## Sets the page-break behavior before an element. Replaced by break-before property
    result = ["page-break-before", values.toJoinedString()]
proc setPageBreakBefore*(element: var CssElement, values: varargs[string]) =
    ## Sets the `page-break-before` CSS property
    ##
    ## Sets the page-break behavior before an element. Replaced by break-before property
    element.properties["page-break-before"] = values.toJoinedString()
proc setPageBreakBefore*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `page-break-before` CSS property
    ##
    ## Sets the page-break behavior before an element. Replaced by break-before property
    result = element
    result.properties["page-break-before"] = values.toJoinedString()

proc pageBreakInside*(values: varargs[string]): CssAttribute =
    ## Constructs the `page-break-inside` CSS property
    ##
    ## Sets the page-break behavior inside an element. Replaced by break-inside property
    result = ["page-break-inside", values.toJoinedString()]
proc setPageBreakInside*(element: var CssElement, values: varargs[string]) =
    ## Sets the `page-break-inside` CSS property
    ##
    ## Sets the page-break behavior inside an element. Replaced by break-inside property
    element.properties["page-break-inside"] = values.toJoinedString()
proc setPageBreakInside*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `page-break-inside` CSS property
    ##
    ## Sets the page-break behavior inside an element. Replaced by break-inside property
    result = element
    result.properties["page-break-inside"] = values.toJoinedString()

proc paintOrder*(values: varargs[string]): CssAttribute =
    ## Constructs the `paint-order` CSS property
    ##
    ## Sets the order of how an SVG element or text is painted.
    result = ["paint-order", values.toJoinedString()]
proc setPaintOrder*(element: var CssElement, values: varargs[string]) =
    ## Sets the `paint-order` CSS property
    ##
    ## Sets the order of how an SVG element or text is painted.
    element.properties["paint-order"] = values.toJoinedString()
proc setPaintOrder*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `paint-order` CSS property
    ##
    ## Sets the order of how an SVG element or text is painted.
    result = element
    result.properties["paint-order"] = values.toJoinedString()

proc perspective*(values: varargs[string]): CssAttribute =
    ## Constructs the `perspective` CSS property
    ##
    ## Gives a 3D-positioned element some perspective
    result = ["perspective", values.toJoinedString()]
proc setPerspective*(element: var CssElement, values: varargs[string]) =
    ## Sets the `perspective` CSS property
    ##
    ## Gives a 3D-positioned element some perspective
    element.properties["perspective"] = values.toJoinedString()
proc setPerspective*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `perspective` CSS property
    ##
    ## Gives a 3D-positioned element some perspective
    result = element
    result.properties["perspective"] = values.toJoinedString()

proc perspectiveOrigin*(values: varargs[string]): CssAttribute =
    ## Constructs the `perspective-origin` CSS property
    ##
    ## Defines at which position the user is looking at the 3D-positioned element
    result = ["perspective-origin", values.toJoinedString()]
proc setPerspectiveOrigin*(element: var CssElement, values: varargs[string]) =
    ## Sets the `perspective-origin` CSS property
    ##
    ## Defines at which position the user is looking at the 3D-positioned element
    element.properties["perspective-origin"] = values.toJoinedString()
proc setPerspectiveOrigin*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `perspective-origin` CSS property
    ##
    ## Defines at which position the user is looking at the 3D-positioned element
    result = element
    result.properties["perspective-origin"] = values.toJoinedString()

proc placeContent*(values: varargs[string]): CssAttribute =
    ## Constructs the `place-content` CSS property
    ##
    ## Specifies align-content and justify-content property values for flexbox and grid layouts
    result = ["place-content", values.toJoinedString()]
proc setPlaceContent*(element: var CssElement, values: varargs[string]) =
    ## Sets the `place-content` CSS property
    ##
    ## Specifies align-content and justify-content property values for flexbox and grid layouts
    element.properties["place-content"] = values.toJoinedString()
proc setPlaceContent*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `place-content` CSS property
    ##
    ## Specifies align-content and justify-content property values for flexbox and grid layouts
    result = element
    result.properties["place-content"] = values.toJoinedString()

proc placeItems*(values: varargs[string]): CssAttribute =
    ## Constructs the `place-items` CSS property
    ##
    ## Specifies align-items and justify-items property values for grid layouts
    result = ["place-items", values.toJoinedString()]
proc setPlaceItems*(element: var CssElement, values: varargs[string]) =
    ## Sets the `place-items` CSS property
    ##
    ## Specifies align-items and justify-items property values for grid layouts
    element.properties["place-items"] = values.toJoinedString()
proc setPlaceItems*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `place-items` CSS property
    ##
    ## Specifies align-items and justify-items property values for grid layouts
    result = element
    result.properties["place-items"] = values.toJoinedString()

proc placeSelf*(values: varargs[string]): CssAttribute =
    ## Constructs the `place-self` CSS property
    ##
    ## Specifies align-self and justify-self property values for grid layouts
    result = ["place-self", values.toJoinedString()]
proc setPlaceSelf*(element: var CssElement, values: varargs[string]) =
    ## Sets the `place-self` CSS property
    ##
    ## Specifies align-self and justify-self property values for grid layouts
    element.properties["place-self"] = values.toJoinedString()
proc setPlaceSelf*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `place-self` CSS property
    ##
    ## Specifies align-self and justify-self property values for grid layouts
    result = element
    result.properties["place-self"] = values.toJoinedString()

proc pointerEvents*(values: varargs[string]): CssAttribute =
    ## Constructs the `pointer-events` CSS property
    ##
    ## Defines whether or not an element reacts to pointer events
    result = ["pointer-events", values.toJoinedString()]
proc setPointerEvents*(element: var CssElement, values: varargs[string]) =
    ## Sets the `pointer-events` CSS property
    ##
    ## Defines whether or not an element reacts to pointer events
    element.properties["pointer-events"] = values.toJoinedString()
proc setPointerEvents*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `pointer-events` CSS property
    ##
    ## Defines whether or not an element reacts to pointer events
    result = element
    result.properties["pointer-events"] = values.toJoinedString()

proc position*(values: varargs[string]): CssAttribute =
    ## Constructs the `position` CSS property
    ##
    ## Specifies the type of positioning method used for an element (static, relative, absolute or fixed)
    result = ["position", values.toJoinedString()]
proc setPosition*(element: var CssElement, values: varargs[string]) =
    ## Sets the `position` CSS property
    ##
    ## Specifies the type of positioning method used for an element (static, relative, absolute or fixed)
    element.properties["position"] = values.toJoinedString()
proc setPosition*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `position` CSS property
    ##
    ## Specifies the type of positioning method used for an element (static, relative, absolute or fixed)
    result = element
    result.properties["position"] = values.toJoinedString()

proc cssAtProperty*(values: varargs[string]): CssAttribute =
    ## Constructs the `@property` CSS property
    ##
    ## Defines custom CSS properties directly in the stylesheet without having to run any JavaScript
    result = ["@property", values.toJoinedString()]
proc setCssAtProperty*(element: var CssElement, values: varargs[string]) =
    ## Sets the `@property` CSS property
    ##
    ## Defines custom CSS properties directly in the stylesheet without having to run any JavaScript
    element.properties["@property"] = values.toJoinedString()
proc setCssAtProperty*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `@property` CSS property
    ##
    ## Defines custom CSS properties directly in the stylesheet without having to run any JavaScript
    result = element
    result.properties["@property"] = values.toJoinedString()

proc quotes*(values: varargs[string]): CssAttribute =
    ## Constructs the `quotes` CSS property
    ##
    ## Sets the type of quotation marks for embedded quotations
    result = ["quotes", values.toJoinedString()]
proc setQuotes*(element: var CssElement, values: varargs[string]) =
    ## Sets the `quotes` CSS property
    ##
    ## Sets the type of quotation marks for embedded quotations
    element.properties["quotes"] = values.toJoinedString()
proc setQuotes*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `quotes` CSS property
    ##
    ## Sets the type of quotation marks for embedded quotations
    result = element
    result.properties["quotes"] = values.toJoinedString()

proc resize*(values: varargs[string]): CssAttribute =
    ## Constructs the `resize` CSS property
    ##
    ## Defines if (and how) an element is resizable by the user
    result = ["resize", values.toJoinedString()]
proc setResize*(element: var CssElement, values: varargs[string]) =
    ## Sets the `resize` CSS property
    ##
    ## Defines if (and how) an element is resizable by the user
    element.properties["resize"] = values.toJoinedString()
proc setResize*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `resize` CSS property
    ##
    ## Defines if (and how) an element is resizable by the user
    result = element
    result.properties["resize"] = values.toJoinedString()

proc right*(values: varargs[string]): CssAttribute =
    ## Constructs the `right` CSS property
    ##
    ## Specifies the right position of a positioned element
    result = ["right", values.toJoinedString()]
proc setRight*(element: var CssElement, values: varargs[string]) =
    ## Sets the `right` CSS property
    ##
    ## Specifies the right position of a positioned element
    element.properties["right"] = values.toJoinedString()
proc setRight*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `right` CSS property
    ##
    ## Specifies the right position of a positioned element
    result = element
    result.properties["right"] = values.toJoinedString()

proc rotate*(values: varargs[string]): CssAttribute =
    ## Constructs the `rotate` CSS property
    ##
    ## Specifies the rotation of an element
    result = ["rotate", values.toJoinedString()]
proc setRotate*(element: var CssElement, values: varargs[string]) =
    ## Sets the `rotate` CSS property
    ##
    ## Specifies the rotation of an element
    element.properties["rotate"] = values.toJoinedString()
proc setRotate*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `rotate` CSS property
    ##
    ## Specifies the rotation of an element
    result = element
    result.properties["rotate"] = values.toJoinedString()

proc rowGap*(values: varargs[string]): CssAttribute =
    ## Constructs the `row-gap` CSS property
    ##
    ## Specifies the gap between the grid rows
    result = ["row-gap", values.toJoinedString()]
proc setRowGap*(element: var CssElement, values: varargs[string]) =
    ## Sets the `row-gap` CSS property
    ##
    ## Specifies the gap between the grid rows
    element.properties["row-gap"] = values.toJoinedString()
proc setRowGap*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `row-gap` CSS property
    ##
    ## Specifies the gap between the grid rows
    result = element
    result.properties["row-gap"] = values.toJoinedString()

proc scale*(values: varargs[string]): CssAttribute =
    ## Constructs the `scale` CSS property
    ##
    ## Specifies the size of an element by scaling up or down
    result = ["scale", values.toJoinedString()]
proc setScale*(element: var CssElement, values: varargs[string]) =
    ## Sets the `scale` CSS property
    ##
    ## Specifies the size of an element by scaling up or down
    element.properties["scale"] = values.toJoinedString()
proc setScale*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `scale` CSS property
    ##
    ## Specifies the size of an element by scaling up or down
    result = element
    result.properties["scale"] = values.toJoinedString()

proc scrollBehavior*(values: varargs[string]): CssAttribute =
    ## Constructs the `scroll-behavior` CSS property
    ##
    ## Specifies whether to smoothly animate the scroll position in a scrollable box, instead of a straight jump
    result = ["scroll-behavior", values.toJoinedString()]
proc setScrollBehavior*(element: var CssElement, values: varargs[string]) =
    ## Sets the `scroll-behavior` CSS property
    ##
    ## Specifies whether to smoothly animate the scroll position in a scrollable box, instead of a straight jump
    element.properties["scroll-behavior"] = values.toJoinedString()
proc setScrollBehavior*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `scroll-behavior` CSS property
    ##
    ## Specifies whether to smoothly animate the scroll position in a scrollable box, instead of a straight jump
    result = element
    result.properties["scroll-behavior"] = values.toJoinedString()

proc scrollMargin*(values: varargs[string]): CssAttribute =
    ## Constructs the `scroll-margin` CSS property
    ##
    ## Specifies the margin between the snap position and the container
    result = ["scroll-margin", values.toJoinedString()]
proc setScrollMargin*(element: var CssElement, values: varargs[string]) =
    ## Sets the `scroll-margin` CSS property
    ##
    ## Specifies the margin between the snap position and the container
    element.properties["scroll-margin"] = values.toJoinedString()
proc setScrollMargin*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `scroll-margin` CSS property
    ##
    ## Specifies the margin between the snap position and the container
    result = element
    result.properties["scroll-margin"] = values.toJoinedString()

proc scrollMarginBlock*(values: varargs[string]): CssAttribute =
    ## Constructs the `scroll-margin-block` CSS property
    ##
    ## Specifies the margin between the snap position and the container in the block direction
    result = ["scroll-margin-block", values.toJoinedString()]
proc setScrollMarginBlock*(element: var CssElement, values: varargs[string]) =
    ## Sets the `scroll-margin-block` CSS property
    ##
    ## Specifies the margin between the snap position and the container in the block direction
    element.properties["scroll-margin-block"] = values.toJoinedString()
proc setScrollMarginBlock*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `scroll-margin-block` CSS property
    ##
    ## Specifies the margin between the snap position and the container in the block direction
    result = element
    result.properties["scroll-margin-block"] = values.toJoinedString()

proc scrollMarginBlockEnd*(values: varargs[string]): CssAttribute =
    ## Constructs the `scroll-margin-block-end` CSS property
    ##
    ## Specifies the end margin between the snap position and the container in the block direction
    result = ["scroll-margin-block-end", values.toJoinedString()]
proc setScrollMarginBlockEnd*(element: var CssElement, values: varargs[string]) =
    ## Sets the `scroll-margin-block-end` CSS property
    ##
    ## Specifies the end margin between the snap position and the container in the block direction
    element.properties["scroll-margin-block-end"] = values.toJoinedString()
proc setScrollMarginBlockEnd*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `scroll-margin-block-end` CSS property
    ##
    ## Specifies the end margin between the snap position and the container in the block direction
    result = element
    result.properties["scroll-margin-block-end"] = values.toJoinedString()

proc scrollMarginBlockStart*(values: varargs[string]): CssAttribute =
    ## Constructs the `scroll-margin-block-start` CSS property
    ##
    ## Specifies the start margin between the snap position and the container in the block direction
    result = ["scroll-margin-block-start", values.toJoinedString()]
proc setScrollMarginBlockStart*(element: var CssElement, values: varargs[string]) =
    ## Sets the `scroll-margin-block-start` CSS property
    ##
    ## Specifies the start margin between the snap position and the container in the block direction
    element.properties["scroll-margin-block-start"] = values.toJoinedString()
proc setScrollMarginBlockStart*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `scroll-margin-block-start` CSS property
    ##
    ## Specifies the start margin between the snap position and the container in the block direction
    result = element
    result.properties["scroll-margin-block-start"] = values.toJoinedString()

proc scrollMarginBottom*(values: varargs[string]): CssAttribute =
    ## Constructs the `scroll-margin-bottom` CSS property
    ##
    ## Specifies the margin between the snap position on the bottom side and the container
    result = ["scroll-margin-bottom", values.toJoinedString()]
proc setScrollMarginBottom*(element: var CssElement, values: varargs[string]) =
    ## Sets the `scroll-margin-bottom` CSS property
    ##
    ## Specifies the margin between the snap position on the bottom side and the container
    element.properties["scroll-margin-bottom"] = values.toJoinedString()
proc setScrollMarginBottom*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `scroll-margin-bottom` CSS property
    ##
    ## Specifies the margin between the snap position on the bottom side and the container
    result = element
    result.properties["scroll-margin-bottom"] = values.toJoinedString()

proc scrollMarginInline*(values: varargs[string]): CssAttribute =
    ## Constructs the `scroll-margin-inline` CSS property
    ##
    ## Specifies the margin between the snap position and the container in the inline direction
    result = ["scroll-margin-inline", values.toJoinedString()]
proc setScrollMarginInline*(element: var CssElement, values: varargs[string]) =
    ## Sets the `scroll-margin-inline` CSS property
    ##
    ## Specifies the margin between the snap position and the container in the inline direction
    element.properties["scroll-margin-inline"] = values.toJoinedString()
proc setScrollMarginInline*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `scroll-margin-inline` CSS property
    ##
    ## Specifies the margin between the snap position and the container in the inline direction
    result = element
    result.properties["scroll-margin-inline"] = values.toJoinedString()

proc scrollMarginInlineEnd*(values: varargs[string]): CssAttribute =
    ## Constructs the `scroll-margin-inline-end` CSS property
    ##
    ## Specifies the end margin between the snap position and the container in the inline direction
    result = ["scroll-margin-inline-end", values.toJoinedString()]
proc setScrollMarginInlineEnd*(element: var CssElement, values: varargs[string]) =
    ## Sets the `scroll-margin-inline-end` CSS property
    ##
    ## Specifies the end margin between the snap position and the container in the inline direction
    element.properties["scroll-margin-inline-end"] = values.toJoinedString()
proc setScrollMarginInlineEnd*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `scroll-margin-inline-end` CSS property
    ##
    ## Specifies the end margin between the snap position and the container in the inline direction
    result = element
    result.properties["scroll-margin-inline-end"] = values.toJoinedString()

proc scrollMarginInlineStart*(values: varargs[string]): CssAttribute =
    ## Constructs the `scroll-margin-inline-start` CSS property
    ##
    ## Specifies the start margin between the snap position and the container in the inline direction
    result = ["scroll-margin-inline-start", values.toJoinedString()]
proc setScrollMarginInlineStart*(element: var CssElement, values: varargs[string]) =
    ## Sets the `scroll-margin-inline-start` CSS property
    ##
    ## Specifies the start margin between the snap position and the container in the inline direction
    element.properties["scroll-margin-inline-start"] = values.toJoinedString()
proc setScrollMarginInlineStart*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `scroll-margin-inline-start` CSS property
    ##
    ## Specifies the start margin between the snap position and the container in the inline direction
    result = element
    result.properties["scroll-margin-inline-start"] = values.toJoinedString()

proc scrollMarginLeft*(values: varargs[string]): CssAttribute =
    ## Constructs the `scroll-margin-left` CSS property
    ##
    ## Specifies the margin between the snap position on the left side and the container
    result = ["scroll-margin-left", values.toJoinedString()]
proc setScrollMarginLeft*(element: var CssElement, values: varargs[string]) =
    ## Sets the `scroll-margin-left` CSS property
    ##
    ## Specifies the margin between the snap position on the left side and the container
    element.properties["scroll-margin-left"] = values.toJoinedString()
proc setScrollMarginLeft*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `scroll-margin-left` CSS property
    ##
    ## Specifies the margin between the snap position on the left side and the container
    result = element
    result.properties["scroll-margin-left"] = values.toJoinedString()

proc scrollMarginRight*(values: varargs[string]): CssAttribute =
    ## Constructs the `scroll-margin-right` CSS property
    ##
    ## Specifies the margin between the snap position on the right side and the container
    result = ["scroll-margin-right", values.toJoinedString()]
proc setScrollMarginRight*(element: var CssElement, values: varargs[string]) =
    ## Sets the `scroll-margin-right` CSS property
    ##
    ## Specifies the margin between the snap position on the right side and the container
    element.properties["scroll-margin-right"] = values.toJoinedString()
proc setScrollMarginRight*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `scroll-margin-right` CSS property
    ##
    ## Specifies the margin between the snap position on the right side and the container
    result = element
    result.properties["scroll-margin-right"] = values.toJoinedString()

proc scrollMarginTop*(values: varargs[string]): CssAttribute =
    ## Constructs the `scroll-margin-top` CSS property
    ##
    ## Specifies the margin between the snap position on the top side and the container
    result = ["scroll-margin-top", values.toJoinedString()]
proc setScrollMarginTop*(element: var CssElement, values: varargs[string]) =
    ## Sets the `scroll-margin-top` CSS property
    ##
    ## Specifies the margin between the snap position on the top side and the container
    element.properties["scroll-margin-top"] = values.toJoinedString()
proc setScrollMarginTop*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `scroll-margin-top` CSS property
    ##
    ## Specifies the margin between the snap position on the top side and the container
    result = element
    result.properties["scroll-margin-top"] = values.toJoinedString()

proc scrollPadding*(values: varargs[string]): CssAttribute =
    ## Constructs the `scroll-padding` CSS property
    ##
    ## Specifies the distance from the container to the snap position on the child elements
    result = ["scroll-padding", values.toJoinedString()]
proc setScrollPadding*(element: var CssElement, values: varargs[string]) =
    ## Sets the `scroll-padding` CSS property
    ##
    ## Specifies the distance from the container to the snap position on the child elements
    element.properties["scroll-padding"] = values.toJoinedString()
proc setScrollPadding*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `scroll-padding` CSS property
    ##
    ## Specifies the distance from the container to the snap position on the child elements
    result = element
    result.properties["scroll-padding"] = values.toJoinedString()

proc scrollPaddingBlock*(values: varargs[string]): CssAttribute =
    ## Constructs the `scroll-padding-block` CSS property
    ##
    ## Specifies the distance in block direction from the container to the snap position on the child elements
    result = ["scroll-padding-block", values.toJoinedString()]
proc setScrollPaddingBlock*(element: var CssElement, values: varargs[string]) =
    ## Sets the `scroll-padding-block` CSS property
    ##
    ## Specifies the distance in block direction from the container to the snap position on the child elements
    element.properties["scroll-padding-block"] = values.toJoinedString()
proc setScrollPaddingBlock*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `scroll-padding-block` CSS property
    ##
    ## Specifies the distance in block direction from the container to the snap position on the child elements
    result = element
    result.properties["scroll-padding-block"] = values.toJoinedString()

proc scrollPaddingBlockEnd*(values: varargs[string]): CssAttribute =
    ## Constructs the `scroll-padding-block-end` CSS property
    ##
    ## Specifies the distance in block direction from the end of the container to the snap position on the child elements
    result = ["scroll-padding-block-end", values.toJoinedString()]
proc setScrollPaddingBlockEnd*(element: var CssElement, values: varargs[string]) =
    ## Sets the `scroll-padding-block-end` CSS property
    ##
    ## Specifies the distance in block direction from the end of the container to the snap position on the child elements
    element.properties["scroll-padding-block-end"] = values.toJoinedString()
proc setScrollPaddingBlockEnd*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `scroll-padding-block-end` CSS property
    ##
    ## Specifies the distance in block direction from the end of the container to the snap position on the child elements
    result = element
    result.properties["scroll-padding-block-end"] = values.toJoinedString()

proc scrollPaddingBlockStart*(values: varargs[string]): CssAttribute =
    ## Constructs the `scroll-padding-block-start` CSS property
    ##
    ## Specifies the distance in block direction from the start of the container to the snap position on the child elements
    result = ["scroll-padding-block-start", values.toJoinedString()]
proc setScrollPaddingBlockStart*(element: var CssElement, values: varargs[string]) =
    ## Sets the `scroll-padding-block-start` CSS property
    ##
    ## Specifies the distance in block direction from the start of the container to the snap position on the child elements
    element.properties["scroll-padding-block-start"] = values.toJoinedString()
proc setScrollPaddingBlockStart*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `scroll-padding-block-start` CSS property
    ##
    ## Specifies the distance in block direction from the start of the container to the snap position on the child elements
    result = element
    result.properties["scroll-padding-block-start"] = values.toJoinedString()

proc scrollPaddingBottom*(values: varargs[string]): CssAttribute =
    ## Constructs the `scroll-padding-bottom` CSS property
    ##
    ## Specifies the distance from the bottom of the container to the snap position on the child elements
    result = ["scroll-padding-bottom", values.toJoinedString()]
proc setScrollPaddingBottom*(element: var CssElement, values: varargs[string]) =
    ## Sets the `scroll-padding-bottom` CSS property
    ##
    ## Specifies the distance from the bottom of the container to the snap position on the child elements
    element.properties["scroll-padding-bottom"] = values.toJoinedString()
proc setScrollPaddingBottom*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `scroll-padding-bottom` CSS property
    ##
    ## Specifies the distance from the bottom of the container to the snap position on the child elements
    result = element
    result.properties["scroll-padding-bottom"] = values.toJoinedString()

proc scrollPaddingInline*(values: varargs[string]): CssAttribute =
    ## Constructs the `scroll-padding-inline` CSS property
    ##
    ## Specifies the distance in inline direction from the container to the snap position on the child elements
    result = ["scroll-padding-inline", values.toJoinedString()]
proc setScrollPaddingInline*(element: var CssElement, values: varargs[string]) =
    ## Sets the `scroll-padding-inline` CSS property
    ##
    ## Specifies the distance in inline direction from the container to the snap position on the child elements
    element.properties["scroll-padding-inline"] = values.toJoinedString()
proc setScrollPaddingInline*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `scroll-padding-inline` CSS property
    ##
    ## Specifies the distance in inline direction from the container to the snap position on the child elements
    result = element
    result.properties["scroll-padding-inline"] = values.toJoinedString()

proc scrollPaddingInlineEnd*(values: varargs[string]): CssAttribute =
    ## Constructs the `scroll-padding-inline-end` CSS property
    ##
    ## Specifies the distance in inline direction from the end of the container to the snap position on the child elements
    result = ["scroll-padding-inline-end", values.toJoinedString()]
proc setScrollPaddingInlineEnd*(element: var CssElement, values: varargs[string]) =
    ## Sets the `scroll-padding-inline-end` CSS property
    ##
    ## Specifies the distance in inline direction from the end of the container to the snap position on the child elements
    element.properties["scroll-padding-inline-end"] = values.toJoinedString()
proc setScrollPaddingInlineEnd*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `scroll-padding-inline-end` CSS property
    ##
    ## Specifies the distance in inline direction from the end of the container to the snap position on the child elements
    result = element
    result.properties["scroll-padding-inline-end"] = values.toJoinedString()

proc scrollPaddingInlineStart*(values: varargs[string]): CssAttribute =
    ## Constructs the `scroll-padding-inline-start` CSS property
    ##
    ## Specifies the distance in inline direction from the start of the container to the snap position on the child elements
    result = ["scroll-padding-inline-start", values.toJoinedString()]
proc setScrollPaddingInlineStart*(element: var CssElement, values: varargs[string]) =
    ## Sets the `scroll-padding-inline-start` CSS property
    ##
    ## Specifies the distance in inline direction from the start of the container to the snap position on the child elements
    element.properties["scroll-padding-inline-start"] = values.toJoinedString()
proc setScrollPaddingInlineStart*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `scroll-padding-inline-start` CSS property
    ##
    ## Specifies the distance in inline direction from the start of the container to the snap position on the child elements
    result = element
    result.properties["scroll-padding-inline-start"] = values.toJoinedString()

proc scrollPaddingLeft*(values: varargs[string]): CssAttribute =
    ## Constructs the `scroll-padding-left` CSS property
    ##
    ## Specifies the distance from the left side of the container to the snap position on the child elements
    result = ["scroll-padding-left", values.toJoinedString()]
proc setScrollPaddingLeft*(element: var CssElement, values: varargs[string]) =
    ## Sets the `scroll-padding-left` CSS property
    ##
    ## Specifies the distance from the left side of the container to the snap position on the child elements
    element.properties["scroll-padding-left"] = values.toJoinedString()
proc setScrollPaddingLeft*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `scroll-padding-left` CSS property
    ##
    ## Specifies the distance from the left side of the container to the snap position on the child elements
    result = element
    result.properties["scroll-padding-left"] = values.toJoinedString()

proc scrollPaddingRight*(values: varargs[string]): CssAttribute =
    ## Constructs the `scroll-padding-right` CSS property
    ##
    ## Specifies the distance from the right side of the container to the snap position on the child elements
    result = ["scroll-padding-right", values.toJoinedString()]
proc setScrollPaddingRight*(element: var CssElement, values: varargs[string]) =
    ## Sets the `scroll-padding-right` CSS property
    ##
    ## Specifies the distance from the right side of the container to the snap position on the child elements
    element.properties["scroll-padding-right"] = values.toJoinedString()
proc setScrollPaddingRight*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `scroll-padding-right` CSS property
    ##
    ## Specifies the distance from the right side of the container to the snap position on the child elements
    result = element
    result.properties["scroll-padding-right"] = values.toJoinedString()

proc scrollPaddingTop*(values: varargs[string]): CssAttribute =
    ## Constructs the `scroll-padding-top` CSS property
    ##
    ## Specifies the distance from the top of the container to the snap position on the child elements
    result = ["scroll-padding-top", values.toJoinedString()]
proc setScrollPaddingTop*(element: var CssElement, values: varargs[string]) =
    ## Sets the `scroll-padding-top` CSS property
    ##
    ## Specifies the distance from the top of the container to the snap position on the child elements
    element.properties["scroll-padding-top"] = values.toJoinedString()
proc setScrollPaddingTop*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `scroll-padding-top` CSS property
    ##
    ## Specifies the distance from the top of the container to the snap position on the child elements
    result = element
    result.properties["scroll-padding-top"] = values.toJoinedString()

proc scrollSnapAlign*(values: varargs[string]): CssAttribute =
    ## Constructs the `scroll-snap-align` CSS property
    ##
    ## Specifies where to position elements when the user stops scrolling
    result = ["scroll-snap-align", values.toJoinedString()]
proc setScrollSnapAlign*(element: var CssElement, values: varargs[string]) =
    ## Sets the `scroll-snap-align` CSS property
    ##
    ## Specifies where to position elements when the user stops scrolling
    element.properties["scroll-snap-align"] = values.toJoinedString()
proc setScrollSnapAlign*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `scroll-snap-align` CSS property
    ##
    ## Specifies where to position elements when the user stops scrolling
    result = element
    result.properties["scroll-snap-align"] = values.toJoinedString()

proc scrollSnapStop*(values: varargs[string]): CssAttribute =
    ## Constructs the `scroll-snap-stop` CSS property
    ##
    ## Specifies scroll behaviour after fast swipe on trackpad or touch screen
    result = ["scroll-snap-stop", values.toJoinedString()]
proc setScrollSnapStop*(element: var CssElement, values: varargs[string]) =
    ## Sets the `scroll-snap-stop` CSS property
    ##
    ## Specifies scroll behaviour after fast swipe on trackpad or touch screen
    element.properties["scroll-snap-stop"] = values.toJoinedString()
proc setScrollSnapStop*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `scroll-snap-stop` CSS property
    ##
    ## Specifies scroll behaviour after fast swipe on trackpad or touch screen
    result = element
    result.properties["scroll-snap-stop"] = values.toJoinedString()

proc scrollSnapType*(values: varargs[string]): CssAttribute =
    ## Constructs the `scroll-snap-type` CSS property
    ##
    ## Specifies how snap behaviour should be when scrolling
    result = ["scroll-snap-type", values.toJoinedString()]
proc setScrollSnapType*(element: var CssElement, values: varargs[string]) =
    ## Sets the `scroll-snap-type` CSS property
    ##
    ## Specifies how snap behaviour should be when scrolling
    element.properties["scroll-snap-type"] = values.toJoinedString()
proc setScrollSnapType*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `scroll-snap-type` CSS property
    ##
    ## Specifies how snap behaviour should be when scrolling
    result = element
    result.properties["scroll-snap-type"] = values.toJoinedString()

proc scrollbarColor*(values: varargs[string]): CssAttribute =
    ## Constructs the `scrollbar-color` CSS property
    ##
    ## Specifies the color of the scrollbar of an element
    result = ["scrollbar-color", values.toJoinedString()]
proc setScrollbarColor*(element: var CssElement, values: varargs[string]) =
    ## Sets the `scrollbar-color` CSS property
    ##
    ## Specifies the color of the scrollbar of an element
    element.properties["scrollbar-color"] = values.toJoinedString()
proc setScrollbarColor*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `scrollbar-color` CSS property
    ##
    ## Specifies the color of the scrollbar of an element
    result = element
    result.properties["scrollbar-color"] = values.toJoinedString()

proc scrollbarColour*(values: varargs[string]): CssAttribute =
    ## Constructs the `scrollbar-color` CSS property
    ##
    ## Specifies the color of the scrollbar of an element
    result = ["scrollbar-color", values.toJoinedString()]
proc setScrollbarColour*(element: var CssElement, values: varargs[string]) =
    ## Sets the `scrollbar-color` CSS property
    ##
    ## Specifies the color of the scrollbar of an element
    element.properties["scrollbar-color"] = values.toJoinedString()
proc setScrollbarColour*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `scrollbar-color` CSS property
    ##
    ## Specifies the color of the scrollbar of an element
    result = element
    result.properties["scrollbar-color"] = values.toJoinedString()

proc tabSize*(values: varargs[string]): CssAttribute =
    ## Constructs the `tab-size` CSS property
    ##
    ## Specifies the width of a tab character
    result = ["tab-size", values.toJoinedString()]
proc setTabSize*(element: var CssElement, values: varargs[string]) =
    ## Sets the `tab-size` CSS property
    ##
    ## Specifies the width of a tab character
    element.properties["tab-size"] = values.toJoinedString()
proc setTabSize*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `tab-size` CSS property
    ##
    ## Specifies the width of a tab character
    result = element
    result.properties["tab-size"] = values.toJoinedString()

proc tableLayout*(values: varargs[string]): CssAttribute =
    ## Constructs the `table-layout` CSS property
    ##
    ## Defines the algorithm used to lay out table cells, rows, and columns
    result = ["table-layout", values.toJoinedString()]
proc setTableLayout*(element: var CssElement, values: varargs[string]) =
    ## Sets the `table-layout` CSS property
    ##
    ## Defines the algorithm used to lay out table cells, rows, and columns
    element.properties["table-layout"] = values.toJoinedString()
proc setTableLayout*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `table-layout` CSS property
    ##
    ## Defines the algorithm used to lay out table cells, rows, and columns
    result = element
    result.properties["table-layout"] = values.toJoinedString()

proc textAlign*(values: varargs[string]): CssAttribute =
    ## Constructs the `text-align` CSS property
    ##
    ## Specifies the horizontal alignment of text
    result = ["text-align", values.toJoinedString()]
proc setTextAlign*(element: var CssElement, values: varargs[string]) =
    ## Sets the `text-align` CSS property
    ##
    ## Specifies the horizontal alignment of text
    element.properties["text-align"] = values.toJoinedString()
proc setTextAlign*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `text-align` CSS property
    ##
    ## Specifies the horizontal alignment of text
    result = element
    result.properties["text-align"] = values.toJoinedString()

proc textAlignLast*(values: varargs[string]): CssAttribute =
    ## Constructs the `text-align-last` CSS property
    ##
    ## Describes how the last line of a block or a line right before a forced line break is aligned when text-align is "justify"
    result = ["text-align-last", values.toJoinedString()]
proc setTextAlignLast*(element: var CssElement, values: varargs[string]) =
    ## Sets the `text-align-last` CSS property
    ##
    ## Describes how the last line of a block or a line right before a forced line break is aligned when text-align is "justify"
    element.properties["text-align-last"] = values.toJoinedString()
proc setTextAlignLast*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `text-align-last` CSS property
    ##
    ## Describes how the last line of a block or a line right before a forced line break is aligned when text-align is "justify"
    result = element
    result.properties["text-align-last"] = values.toJoinedString()

proc textCombineUpright*(values: varargs[string]): CssAttribute =
    ## Constructs the `text-combine-upright` CSS property
    ##
    ## Specifies the combination of multiple characters into the space of a single character
    result = ["text-combine-upright", values.toJoinedString()]
proc setTextCombineUpright*(element: var CssElement, values: varargs[string]) =
    ## Sets the `text-combine-upright` CSS property
    ##
    ## Specifies the combination of multiple characters into the space of a single character
    element.properties["text-combine-upright"] = values.toJoinedString()
proc setTextCombineUpright*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `text-combine-upright` CSS property
    ##
    ## Specifies the combination of multiple characters into the space of a single character
    result = element
    result.properties["text-combine-upright"] = values.toJoinedString()

proc textDecoration*(values: varargs[string]): CssAttribute =
    ## Constructs the `text-decoration` CSS property
    ##
    ## Specifies the decoration added to text
    result = ["text-decoration", values.toJoinedString()]
proc setTextDecoration*(element: var CssElement, values: varargs[string]) =
    ## Sets the `text-decoration` CSS property
    ##
    ## Specifies the decoration added to text
    element.properties["text-decoration"] = values.toJoinedString()
proc setTextDecoration*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `text-decoration` CSS property
    ##
    ## Specifies the decoration added to text
    result = element
    result.properties["text-decoration"] = values.toJoinedString()

proc textDecorationColor*(values: varargs[string]): CssAttribute =
    ## Constructs the `text-decoration-color` CSS property
    ##
    ## Specifies the color of the text-decoration
    result = ["text-decoration-color", values.toJoinedString()]
proc setTextDecorationColor*(element: var CssElement, values: varargs[string]) =
    ## Sets the `text-decoration-color` CSS property
    ##
    ## Specifies the color of the text-decoration
    element.properties["text-decoration-color"] = values.toJoinedString()
proc setTextDecorationColor*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `text-decoration-color` CSS property
    ##
    ## Specifies the color of the text-decoration
    result = element
    result.properties["text-decoration-color"] = values.toJoinedString()

proc textDecorationColour*(values: varargs[string]): CssAttribute =
    ## Constructs the `text-decoration-color` CSS property
    ##
    ## Specifies the color of the text-decoration
    result = ["text-decoration-color", values.toJoinedString()]
proc setTextDecorationColour*(element: var CssElement, values: varargs[string]) =
    ## Sets the `text-decoration-color` CSS property
    ##
    ## Specifies the color of the text-decoration
    element.properties["text-decoration-color"] = values.toJoinedString()
proc setTextDecorationColour*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `text-decoration-color` CSS property
    ##
    ## Specifies the color of the text-decoration
    result = element
    result.properties["text-decoration-color"] = values.toJoinedString()

proc textDecorationLine*(values: varargs[string]): CssAttribute =
    ## Constructs the `text-decoration-line` CSS property
    ##
    ## Specifies the type of line in a text-decoration
    result = ["text-decoration-line", values.toJoinedString()]
proc setTextDecorationLine*(element: var CssElement, values: varargs[string]) =
    ## Sets the `text-decoration-line` CSS property
    ##
    ## Specifies the type of line in a text-decoration
    element.properties["text-decoration-line"] = values.toJoinedString()
proc setTextDecorationLine*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `text-decoration-line` CSS property
    ##
    ## Specifies the type of line in a text-decoration
    result = element
    result.properties["text-decoration-line"] = values.toJoinedString()

proc textDecorationStyle*(values: varargs[string]): CssAttribute =
    ## Constructs the `text-decoration-style` CSS property
    ##
    ## Specifies the style of the line in a text decoration
    result = ["text-decoration-style", values.toJoinedString()]
proc setTextDecorationStyle*(element: var CssElement, values: varargs[string]) =
    ## Sets the `text-decoration-style` CSS property
    ##
    ## Specifies the style of the line in a text decoration
    element.properties["text-decoration-style"] = values.toJoinedString()
proc setTextDecorationStyle*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `text-decoration-style` CSS property
    ##
    ## Specifies the style of the line in a text decoration
    result = element
    result.properties["text-decoration-style"] = values.toJoinedString()

proc textDecorationThickness*(values: varargs[string]): CssAttribute =
    ## Constructs the `text-decoration-thickness` CSS property
    ##
    ## Specifies the thickness of the decoration line
    result = ["text-decoration-thickness", values.toJoinedString()]
proc setTextDecorationThickness*(element: var CssElement, values: varargs[string]) =
    ## Sets the `text-decoration-thickness` CSS property
    ##
    ## Specifies the thickness of the decoration line
    element.properties["text-decoration-thickness"] = values.toJoinedString()
proc setTextDecorationThickness*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `text-decoration-thickness` CSS property
    ##
    ## Specifies the thickness of the decoration line
    result = element
    result.properties["text-decoration-thickness"] = values.toJoinedString()

proc textEmphasis*(values: varargs[string]): CssAttribute =
    ## Constructs the `text-emphasis` CSS property
    ##
    ## A shorthand property for the text-emphasis-style and text-emphasis-color properties
    result = ["text-emphasis", values.toJoinedString()]
proc setTextEmphasis*(element: var CssElement, values: varargs[string]) =
    ## Sets the `text-emphasis` CSS property
    ##
    ## A shorthand property for the text-emphasis-style and text-emphasis-color properties
    element.properties["text-emphasis"] = values.toJoinedString()
proc setTextEmphasis*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `text-emphasis` CSS property
    ##
    ## A shorthand property for the text-emphasis-style and text-emphasis-color properties
    result = element
    result.properties["text-emphasis"] = values.toJoinedString()

proc textEmphasisColor*(values: varargs[string]): CssAttribute =
    ## Constructs the `text-emphasis-color` CSS property
    ##
    ## Specifies the color of emphasis marks
    result = ["text-emphasis-color", values.toJoinedString()]
proc setTextEmphasisColor*(element: var CssElement, values: varargs[string]) =
    ## Sets the `text-emphasis-color` CSS property
    ##
    ## Specifies the color of emphasis marks
    element.properties["text-emphasis-color"] = values.toJoinedString()
proc setTextEmphasisColor*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `text-emphasis-color` CSS property
    ##
    ## Specifies the color of emphasis marks
    result = element
    result.properties["text-emphasis-color"] = values.toJoinedString()

proc textEmphasisColour*(values: varargs[string]): CssAttribute =
    ## Constructs the `text-emphasis-color` CSS property
    ##
    ## Specifies the color of emphasis marks
    result = ["text-emphasis-color", values.toJoinedString()]
proc setTextEmphasisColour*(element: var CssElement, values: varargs[string]) =
    ## Sets the `text-emphasis-color` CSS property
    ##
    ## Specifies the color of emphasis marks
    element.properties["text-emphasis-color"] = values.toJoinedString()
proc setTextEmphasisColour*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `text-emphasis-color` CSS property
    ##
    ## Specifies the color of emphasis marks
    result = element
    result.properties["text-emphasis-color"] = values.toJoinedString()

proc textEmphasisPosition*(values: varargs[string]): CssAttribute =
    ## Constructs the `text-emphasis-position` CSS property
    ##
    ## Specifies the position of emphasis marks
    result = ["text-emphasis-position", values.toJoinedString()]
proc setTextEmphasisPosition*(element: var CssElement, values: varargs[string]) =
    ## Sets the `text-emphasis-position` CSS property
    ##
    ## Specifies the position of emphasis marks
    element.properties["text-emphasis-position"] = values.toJoinedString()
proc setTextEmphasisPosition*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `text-emphasis-position` CSS property
    ##
    ## Specifies the position of emphasis marks
    result = element
    result.properties["text-emphasis-position"] = values.toJoinedString()

proc textEmphasisStyle*(values: varargs[string]): CssAttribute =
    ## Constructs the `text-emphasis-style` CSS property
    ##
    ## Specifies the style of emphasis marks
    result = ["text-emphasis-style", values.toJoinedString()]
proc setTextEmphasisStyle*(element: var CssElement, values: varargs[string]) =
    ## Sets the `text-emphasis-style` CSS property
    ##
    ## Specifies the style of emphasis marks
    element.properties["text-emphasis-style"] = values.toJoinedString()
proc setTextEmphasisStyle*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `text-emphasis-style` CSS property
    ##
    ## Specifies the style of emphasis marks
    result = element
    result.properties["text-emphasis-style"] = values.toJoinedString()

proc textIndent*(values: varargs[string]): CssAttribute =
    ## Constructs the `text-indent` CSS property
    ##
    ## Specifies the indentation of the first line in a text-block
    result = ["text-indent", values.toJoinedString()]
proc setTextIndent*(element: var CssElement, values: varargs[string]) =
    ## Sets the `text-indent` CSS property
    ##
    ## Specifies the indentation of the first line in a text-block
    element.properties["text-indent"] = values.toJoinedString()
proc setTextIndent*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `text-indent` CSS property
    ##
    ## Specifies the indentation of the first line in a text-block
    result = element
    result.properties["text-indent"] = values.toJoinedString()

proc textJustify*(values: varargs[string]): CssAttribute =
    ## Constructs the `text-justify` CSS property
    ##
    ## Specifies the justification method used when text-align is "justify"
    result = ["text-justify", values.toJoinedString()]
proc setTextJustify*(element: var CssElement, values: varargs[string]) =
    ## Sets the `text-justify` CSS property
    ##
    ## Specifies the justification method used when text-align is "justify"
    element.properties["text-justify"] = values.toJoinedString()
proc setTextJustify*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `text-justify` CSS property
    ##
    ## Specifies the justification method used when text-align is "justify"
    result = element
    result.properties["text-justify"] = values.toJoinedString()

proc textOrientation*(values: varargs[string]): CssAttribute =
    ## Constructs the `text-orientation` CSS property
    ##
    ## Defines the orientation of characters in a line
    result = ["text-orientation", values.toJoinedString()]
proc setTextOrientation*(element: var CssElement, values: varargs[string]) =
    ## Sets the `text-orientation` CSS property
    ##
    ## Defines the orientation of characters in a line
    element.properties["text-orientation"] = values.toJoinedString()
proc setTextOrientation*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `text-orientation` CSS property
    ##
    ## Defines the orientation of characters in a line
    result = element
    result.properties["text-orientation"] = values.toJoinedString()

proc textOverflow*(values: varargs[string]): CssAttribute =
    ## Constructs the `text-overflow` CSS property
    ##
    ## Specifies what should happen when text overflows the containing element
    result = ["text-overflow", values.toJoinedString()]
proc setTextOverflow*(element: var CssElement, values: varargs[string]) =
    ## Sets the `text-overflow` CSS property
    ##
    ## Specifies what should happen when text overflows the containing element
    element.properties["text-overflow"] = values.toJoinedString()
proc setTextOverflow*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `text-overflow` CSS property
    ##
    ## Specifies what should happen when text overflows the containing element
    result = element
    result.properties["text-overflow"] = values.toJoinedString()

proc textShadow*(values: varargs[string]): CssAttribute =
    ## Constructs the `text-shadow` CSS property
    ##
    ## Adds shadow to text
    result = ["text-shadow", values.toJoinedString()]
proc setTextShadow*(element: var CssElement, values: varargs[string]) =
    ## Sets the `text-shadow` CSS property
    ##
    ## Adds shadow to text
    element.properties["text-shadow"] = values.toJoinedString()
proc setTextShadow*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `text-shadow` CSS property
    ##
    ## Adds shadow to text
    result = element
    result.properties["text-shadow"] = values.toJoinedString()

proc textTransform*(values: varargs[string]): CssAttribute =
    ## Constructs the `text-transform` CSS property
    ##
    ## Controls the capitalization of text
    result = ["text-transform", values.toJoinedString()]
proc setTextTransform*(element: var CssElement, values: varargs[string]) =
    ## Sets the `text-transform` CSS property
    ##
    ## Controls the capitalization of text
    element.properties["text-transform"] = values.toJoinedString()
proc setTextTransform*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `text-transform` CSS property
    ##
    ## Controls the capitalization of text
    result = element
    result.properties["text-transform"] = values.toJoinedString()

proc textUnderlineOffset*(values: varargs[string]): CssAttribute =
    ## Constructs the `text-underline-offset` CSS property
    ##
    ## Specifies the offset distance of the underline text decoration
    result = ["text-underline-offset", values.toJoinedString()]
proc setTextUnderlineOffset*(element: var CssElement, values: varargs[string]) =
    ## Sets the `text-underline-offset` CSS property
    ##
    ## Specifies the offset distance of the underline text decoration
    element.properties["text-underline-offset"] = values.toJoinedString()
proc setTextUnderlineOffset*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `text-underline-offset` CSS property
    ##
    ## Specifies the offset distance of the underline text decoration
    result = element
    result.properties["text-underline-offset"] = values.toJoinedString()

proc textUnderlinePosition*(values: varargs[string]): CssAttribute =
    ## Constructs the `text-underline-position` CSS property
    ##
    ## Specifies the position of the underline text decoration
    result = ["text-underline-position", values.toJoinedString()]
proc setTextUnderlinePosition*(element: var CssElement, values: varargs[string]) =
    ## Sets the `text-underline-position` CSS property
    ##
    ## Specifies the position of the underline text decoration
    element.properties["text-underline-position"] = values.toJoinedString()
proc setTextUnderlinePosition*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `text-underline-position` CSS property
    ##
    ## Specifies the position of the underline text decoration
    result = element
    result.properties["text-underline-position"] = values.toJoinedString()

proc top*(values: varargs[string]): CssAttribute =
    ## Constructs the `top` CSS property
    ##
    ## Specifies the top position of a positioned element
    result = ["top", values.toJoinedString()]
proc setTop*(element: var CssElement, values: varargs[string]) =
    ## Sets the `top` CSS property
    ##
    ## Specifies the top position of a positioned element
    element.properties["top"] = values.toJoinedString()
proc setTop*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `top` CSS property
    ##
    ## Specifies the top position of a positioned element
    result = element
    result.properties["top"] = values.toJoinedString()

proc transform*(values: varargs[string]): CssAttribute =
    ## Constructs the `transform` CSS property
    ##
    ## Applies a 2D or 3D transformation to an element
    result = ["transform", values.toJoinedString()]
proc setTransform*(element: var CssElement, values: varargs[string]) =
    ## Sets the `transform` CSS property
    ##
    ## Applies a 2D or 3D transformation to an element
    element.properties["transform"] = values.toJoinedString()
proc setTransform*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `transform` CSS property
    ##
    ## Applies a 2D or 3D transformation to an element
    result = element
    result.properties["transform"] = values.toJoinedString()

proc transformOrigin*(values: varargs[string]): CssAttribute =
    ## Constructs the `transform-origin` CSS property
    ##
    ## Allows you to change the position on transformed elements
    result = ["transform-origin", values.toJoinedString()]
proc setTransformOrigin*(element: var CssElement, values: varargs[string]) =
    ## Sets the `transform-origin` CSS property
    ##
    ## Allows you to change the position on transformed elements
    element.properties["transform-origin"] = values.toJoinedString()
proc setTransformOrigin*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `transform-origin` CSS property
    ##
    ## Allows you to change the position on transformed elements
    result = element
    result.properties["transform-origin"] = values.toJoinedString()

proc transformStyle*(values: varargs[string]): CssAttribute =
    ## Constructs the `transform-style` CSS property
    ##
    ## Specifies how nested elements are rendered in 3D space
    result = ["transform-style", values.toJoinedString()]
proc setTransformStyle*(element: var CssElement, values: varargs[string]) =
    ## Sets the `transform-style` CSS property
    ##
    ## Specifies how nested elements are rendered in 3D space
    element.properties["transform-style"] = values.toJoinedString()
proc setTransformStyle*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `transform-style` CSS property
    ##
    ## Specifies how nested elements are rendered in 3D space
    result = element
    result.properties["transform-style"] = values.toJoinedString()

proc transition*(values: varargs[string]): CssAttribute =
    ## Constructs the `transition` CSS property
    ##
    ## A shorthand property for all the transition-\* properties
    result = ["transition", values.toJoinedString()]
proc setTransition*(element: var CssElement, values: varargs[string]) =
    ## Sets the `transition` CSS property
    ##
    ## A shorthand property for all the transition-\* properties
    element.properties["transition"] = values.toJoinedString()
proc setTransition*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `transition` CSS property
    ##
    ## A shorthand property for all the transition-\* properties
    result = element
    result.properties["transition"] = values.toJoinedString()

proc transitionDelay*(values: varargs[string]): CssAttribute =
    ## Constructs the `transition-delay` CSS property
    ##
    ## Specifies when the transition effect will start
    result = ["transition-delay", values.toJoinedString()]
proc setTransitionDelay*(element: var CssElement, values: varargs[string]) =
    ## Sets the `transition-delay` CSS property
    ##
    ## Specifies when the transition effect will start
    element.properties["transition-delay"] = values.toJoinedString()
proc setTransitionDelay*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `transition-delay` CSS property
    ##
    ## Specifies when the transition effect will start
    result = element
    result.properties["transition-delay"] = values.toJoinedString()

proc transitionDuration*(values: varargs[string]): CssAttribute =
    ## Constructs the `transition-duration` CSS property
    ##
    ## Specifies how many seconds or milliseconds a transition effect takes to complete
    result = ["transition-duration", values.toJoinedString()]
proc setTransitionDuration*(element: var CssElement, values: varargs[string]) =
    ## Sets the `transition-duration` CSS property
    ##
    ## Specifies how many seconds or milliseconds a transition effect takes to complete
    element.properties["transition-duration"] = values.toJoinedString()
proc setTransitionDuration*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `transition-duration` CSS property
    ##
    ## Specifies how many seconds or milliseconds a transition effect takes to complete
    result = element
    result.properties["transition-duration"] = values.toJoinedString()

proc transitionProperty*(values: varargs[string]): CssAttribute =
    ## Constructs the `transition-property` CSS property
    ##
    ## Specifies the name of the CSS property the transition effect is for
    result = ["transition-property", values.toJoinedString()]
proc setTransitionProperty*(element: var CssElement, values: varargs[string]) =
    ## Sets the `transition-property` CSS property
    ##
    ## Specifies the name of the CSS property the transition effect is for
    element.properties["transition-property"] = values.toJoinedString()
proc setTransitionProperty*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `transition-property` CSS property
    ##
    ## Specifies the name of the CSS property the transition effect is for
    result = element
    result.properties["transition-property"] = values.toJoinedString()

proc transitionTimingFunction*(values: varargs[string]): CssAttribute =
    ## Constructs the `transition-timing-function` CSS property
    ##
    ## Specifies the speed curve of the transition effect
    result = ["transition-timing-function", values.toJoinedString()]
proc setTransitionTimingFunction*(element: var CssElement, values: varargs[string]) =
    ## Sets the `transition-timing-function` CSS property
    ##
    ## Specifies the speed curve of the transition effect
    element.properties["transition-timing-function"] = values.toJoinedString()
proc setTransitionTimingFunction*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `transition-timing-function` CSS property
    ##
    ## Specifies the speed curve of the transition effect
    result = element
    result.properties["transition-timing-function"] = values.toJoinedString()

proc translate*(values: varargs[string]): CssAttribute =
    ## Constructs the `translate` CSS property
    ##
    ## Specifies the position of an element
    result = ["translate", values.toJoinedString()]
proc setTranslate*(element: var CssElement, values: varargs[string]) =
    ## Sets the `translate` CSS property
    ##
    ## Specifies the position of an element
    element.properties["translate"] = values.toJoinedString()
proc setTranslate*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `translate` CSS property
    ##
    ## Specifies the position of an element
    result = element
    result.properties["translate"] = values.toJoinedString()

proc unicodeBidi*(values: varargs[string]): CssAttribute =
    ## Constructs the `unicode-bidi` CSS property
    ##
    ## Used together with the direction property to set or return whether the text should be overridden to support multiple languages in the same document
    result = ["unicode-bidi", values.toJoinedString()]
proc setUnicodeBidi*(element: var CssElement, values: varargs[string]) =
    ## Sets the `unicode-bidi` CSS property
    ##
    ## Used together with the direction property to set or return whether the text should be overridden to support multiple languages in the same document
    element.properties["unicode-bidi"] = values.toJoinedString()
proc setUnicodeBidi*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `unicode-bidi` CSS property
    ##
    ## Used together with the direction property to set or return whether the text should be overridden to support multiple languages in the same document
    result = element
    result.properties["unicode-bidi"] = values.toJoinedString()

proc userSelect*(values: varargs[string]): CssAttribute =
    ## Constructs the `user-select` CSS property
    ##
    ## Specifies whether the text of an element can be selected
    result = ["user-select", values.toJoinedString()]
proc setUserSelect*(element: var CssElement, values: varargs[string]) =
    ## Sets the `user-select` CSS property
    ##
    ## Specifies whether the text of an element can be selected
    element.properties["user-select"] = values.toJoinedString()
proc setUserSelect*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `user-select` CSS property
    ##
    ## Specifies whether the text of an element can be selected
    result = element
    result.properties["user-select"] = values.toJoinedString()

proc verticalAlign*(values: varargs[string]): CssAttribute =
    ## Constructs the `vertical-align` CSS property
    ##
    ## Sets the vertical alignment of an element
    result = ["vertical-align", values.toJoinedString()]
proc setVerticalAlign*(element: var CssElement, values: varargs[string]) =
    ## Sets the `vertical-align` CSS property
    ##
    ## Sets the vertical alignment of an element
    element.properties["vertical-align"] = values.toJoinedString()
proc setVerticalAlign*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `vertical-align` CSS property
    ##
    ## Sets the vertical alignment of an element
    result = element
    result.properties["vertical-align"] = values.toJoinedString()

proc visibility*(values: varargs[string]): CssAttribute =
    ## Constructs the `visibility` CSS property
    ##
    ## Specifies whether or not an element is visible
    result = ["visibility", values.toJoinedString()]
proc setVisibility*(element: var CssElement, values: varargs[string]) =
    ## Sets the `visibility` CSS property
    ##
    ## Specifies whether or not an element is visible
    element.properties["visibility"] = values.toJoinedString()
proc setVisibility*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `visibility` CSS property
    ##
    ## Specifies whether or not an element is visible
    result = element
    result.properties["visibility"] = values.toJoinedString()

proc whiteSpace*(values: varargs[string]): CssAttribute =
    ## Constructs the `white-space` CSS property
    ##
    ## Specifies how white-space inside an element is handled
    result = ["white-space", values.toJoinedString()]
proc setWhiteSpace*(element: var CssElement, values: varargs[string]) =
    ## Sets the `white-space` CSS property
    ##
    ## Specifies how white-space inside an element is handled
    element.properties["white-space"] = values.toJoinedString()
proc setWhiteSpace*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `white-space` CSS property
    ##
    ## Specifies how white-space inside an element is handled
    result = element
    result.properties["white-space"] = values.toJoinedString()

proc widows*(values: varargs[string]): CssAttribute =
    ## Constructs the `widows` CSS property
    ##
    ## Sets the minimum number of lines that must be left at the top of a page or column
    result = ["widows", values.toJoinedString()]
proc setWidows*(element: var CssElement, values: varargs[string]) =
    ## Sets the `widows` CSS property
    ##
    ## Sets the minimum number of lines that must be left at the top of a page or column
    element.properties["widows"] = values.toJoinedString()
proc setWidows*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `widows` CSS property
    ##
    ## Sets the minimum number of lines that must be left at the top of a page or column
    result = element
    result.properties["widows"] = values.toJoinedString()

proc width*(values: varargs[string]): CssAttribute =
    ## Constructs the `width` CSS property
    ##
    ## Sets the width of an element
    result = ["width", values.toJoinedString()]
proc setWidth*(element: var CssElement, values: varargs[string]) =
    ## Sets the `width` CSS property
    ##
    ## Sets the width of an element
    element.properties["width"] = values.toJoinedString()
proc setWidth*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `width` CSS property
    ##
    ## Sets the width of an element
    result = element
    result.properties["width"] = values.toJoinedString()

proc wordBreak*(values: varargs[string]): CssAttribute =
    ## Constructs the `word-break` CSS property
    ##
    ## Specifies how words should break when reaching the end of a line
    result = ["word-break", values.toJoinedString()]
proc setWordBreak*(element: var CssElement, values: varargs[string]) =
    ## Sets the `word-break` CSS property
    ##
    ## Specifies how words should break when reaching the end of a line
    element.properties["word-break"] = values.toJoinedString()
proc setWordBreak*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `word-break` CSS property
    ##
    ## Specifies how words should break when reaching the end of a line
    result = element
    result.properties["word-break"] = values.toJoinedString()

proc wordSpacing*(values: varargs[string]): CssAttribute =
    ## Constructs the `word-spacing` CSS property
    ##
    ## Increases or decreases the space between words in a text
    result = ["word-spacing", values.toJoinedString()]
proc setWordSpacing*(element: var CssElement, values: varargs[string]) =
    ## Sets the `word-spacing` CSS property
    ##
    ## Increases or decreases the space between words in a text
    element.properties["word-spacing"] = values.toJoinedString()
proc setWordSpacing*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `word-spacing` CSS property
    ##
    ## Increases or decreases the space between words in a text
    result = element
    result.properties["word-spacing"] = values.toJoinedString()

proc wordWrap*(values: varargs[string]): CssAttribute =
    ## Constructs the `word-wrap` CSS property
    ##
    ## Allows long, unbreakable words to be broken and wrap to the next line
    result = ["word-wrap", values.toJoinedString()]
proc setWordWrap*(element: var CssElement, values: varargs[string]) =
    ## Sets the `word-wrap` CSS property
    ##
    ## Allows long, unbreakable words to be broken and wrap to the next line
    element.properties["word-wrap"] = values.toJoinedString()
proc setWordWrap*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `word-wrap` CSS property
    ##
    ## Allows long, unbreakable words to be broken and wrap to the next line
    result = element
    result.properties["word-wrap"] = values.toJoinedString()

proc writingMode*(values: varargs[string]): CssAttribute =
    ## Constructs the `writing-mode` CSS property
    ##
    ## Specifies whether lines of text are laid out horizontally or vertically
    result = ["writing-mode", values.toJoinedString()]
proc setWritingMode*(element: var CssElement, values: varargs[string]) =
    ## Sets the `writing-mode` CSS property
    ##
    ## Specifies whether lines of text are laid out horizontally or vertically
    element.properties["writing-mode"] = values.toJoinedString()
proc setWritingMode*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `writing-mode` CSS property
    ##
    ## Specifies whether lines of text are laid out horizontally or vertically
    result = element
    result.properties["writing-mode"] = values.toJoinedString()

proc zIndex*(values: varargs[string]): CssAttribute =
    ## Constructs the `z-index` CSS property
    ##
    ## Sets the stack order of a positioned element
    result = ["z-index", values.toJoinedString()]
proc setZIndex*(element: var CssElement, values: varargs[string]) =
    ## Sets the `z-index` CSS property
    ##
    ## Sets the stack order of a positioned element
    element.properties["z-index"] = values.toJoinedString()
proc setZIndex*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `z-index` CSS property
    ##
    ## Sets the stack order of a positioned element
    result = element
    result.properties["z-index"] = values.toJoinedString()

proc zoom*(values: varargs[string]): CssAttribute =
    ## Constructs the `zoom` CSS property
    ##
    ## Specifies the zoom factor for an element. An element can be zoomed in and out
    result = ["zoom", values.toJoinedString()]
proc setZoom*(element: var CssElement, values: varargs[string]) =
    ## Sets the `zoom` CSS property
    ##
    ## Specifies the zoom factor for an element. An element can be zoomed in and out
    element.properties["zoom"] = values.toJoinedString()
proc setZoom*(element: CssElement, values: varargs[string]): CssElement =
    ## Sets the `zoom` CSS property
    ##
    ## Specifies the zoom factor for an element. An element can be zoomed in and out
    result = element
    result.properties["zoom"] = values.toJoinedString()
