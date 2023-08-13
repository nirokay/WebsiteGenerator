import ../generators

var
    cssDarkmode* = newCssElement(
        "body",
        @[
            "background-color", "rgb(23, 25, 33)",
            "color", "white"
        ]
    )
    cssLightmode* = newCssElement(
        "body",
        @[
            "background-color", "rgb(255, 255, 255)",
            "color", "black"
        ]
    )

    cssCenter* = newCssElement(
        ".center",
        @[
            "display", "block",
            "margin-left", "auto",
            "margin-right", "auto",
            "width", "50%"
        ]
    )
