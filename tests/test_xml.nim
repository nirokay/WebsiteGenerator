import std/[unittest, strutils]
import websitegenerator

let xmlDocument: string = """<?xml version="1.0" encoding="UTF-8"?>
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
""".dedent(8).replace("\n", "").replace("?>", "\n?>")


test "Generator - Simple Tag":
    check $newXmlElement("title", "Hello world") == "<title>Hello world</title>"

test "Generator - Attributes":
    check $newXmlElement("title", "Hello world").addattr("lang", "en") == "<title lang='en'>Hello world</title>"

