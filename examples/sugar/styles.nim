import websitegenerator

var css*: CssStyleSheet = newCssStyleSheet("styles.css")

const
    classCenter*: CssElement = ".center-class"{
        "margin" := "auto",
        "text-align" := "center"
    }

css.add(
    "h1"{
        "text-align" := "center"
    },
    "div"{
        "color" := rgb(255, 255, 255),
        "background-color" := $Black,
        "width" := "100%"
    },

    classCenter
)

css.writeFile()
