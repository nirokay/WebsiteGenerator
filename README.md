# WebsiteGenerator

## About

**websitegenerator** lets you easily create static HTML and CSS in Nim.

This project is currently in-development. More features will be added over time.

## How is this useful?

It depends... Writing html manually can be very painful, as it is easy to forget a closing `>`
bracket and you often have to repeat yourself.

With this library you can create templates and write what is actually important - the content!

It is also very easy to read in some external data (for example from a `.json` file) and insert
it into the html.

## Examples

Some basic examples are located in `./examples/`, so you can quickly know, if you want to use
this or not.

List of projects/sites using **websitegenerator**:

* [my homepage][exampleNirokayHomepage] ([source][sourceNirokayHomepage])

If you use this software to create a project/website feel free to create a PR with the edited
README.md or message me somewhere.

## Installation

| nimble                            | git                                                                                              |
|-----------------------------------|--------------------------------------------------------------------------------------------------|
| `nimble install websitegenerator` | `git clone https://github.com/nirokay/websitegenerator && cd websitegenerator && nimble install` |

## Licence

This projects codebase is distributed under [GPL-3.0][GPL-Licene], however you may use this
software to create webpages and css freely without limitations and distribute these products
under any other licence.

[GPL-Licene]: [https://www.gnu.org/licenses/gpl-3.0.html]

[exampleNirokayHomepage]: [https://nirokay.github.io/]
[sourceNirokayHomepage]: [https://github.com/nirokay/nirokay.github.io/blob/main/index.nim]
