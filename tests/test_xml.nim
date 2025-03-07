import std/[unittest, strutils]
import websitegenerator

let xmlDocument: string = """<?xml encoding='UTF-8' version='1.0'?>
<bookstore>
    <book lang='en'>
        <title>Why you should consider drugs when coding</title>
        <description>Something something</description>
        <author>your mom</author>
    </book>
    <book lang='de'>
        <title>Katzen</title>
        <description>GATZE STRAICHELN!!!!!!! :D</description>
        <author>deine Mama</author>
    </book>
</bookstore>
""".dedent(8).replace("\n", "").replace("?>", "?>\n")


test "XML - Simple Tag":
    check $newXmlElement("title", "Hello world") == "<title>Hello world</title>"

test "XML - Attributes":
    check $newXmlElement("title", "Hello world").addattr("lang", "en") == "<title lang='en'>Hello world</title>"

test "XML - Document":
    var document: XmlDocument = newXmlDocument("bookstore.xml")
    document.add(
        "bookstore"[] => @[
            "book"["lang" -= "en"] => @[
                "title"[] => "Why you should consider drugs when coding",
                "description"[] => "Something something",
                "author"[] => "your mom"
            ],
            "book"["lang" -= "de"] => @[
                "title"[] => "Katzen",
                "description"[] => "GATZE STRAICHELN!!!!!!! :D",
                "author"[] => "deine Mama"
            ]
        ]
    )
    check $document == xmlDocument
