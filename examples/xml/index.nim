import websitegenerator

var document: XmlDocument = newXmlDocument("bookstore.xml")
let
    # You can use this type of syntax:
    firstStore: XmlElement = newXmlElement("bookstore",
        newXmlElement("book",
            newXmlElement("title", "The Dictionary"),
            newXmlElement("desc", "All words")
        ).addattr("lang", "en")
    )
    # Or this funky thing (implemented in `sugar` module):
    secondStore: XmlElement = "bookstore" => @[
        "book"["lang" -= "en"] => @[
            "title" => "The Dictionary 2",
            "desc" => "MORE WORDS??"
        ],
        # And you can mix-and-match:
        newXmlElement("book",
            newXmlElement("title", "Katzen"),
            newXmlElement("desc", "Katzen sind toll!!!!!")
        ).add(
            attr("lang", "de")
        )
    ]

document.add newXmlElement("departments", @[firstStore, secondStore])
document.writeFile()
