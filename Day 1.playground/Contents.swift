import Cocoa

// Variablen und Konstanten

var alter = 26 // kann sich ändern
let name = "Blaubär" // sicherer, wenn Informationen sich nicht ändern

alter = 27

// Datentyp: String

let string = "😀 Das ist \"ein String\" 😀"
let multiLineString =
"""
        Die Einrückung ist relativ
    zum Buchstaben,
    der am weitesten
  links beginnt.
"""

print(string)
print(multiLineString)
print(multiLineString.count)
print(multiLineString.uppercased())
print(multiLineString.hasPrefix("        Die")) // tatsächlicher Whitespace, nicht relativ zur Einrückung

// Datentyp: Int

var aMillion = 1_000_000
let twoMillion = 20_00_00_0
aMillion += 1_0_0_0_000

print(aMillion.isMultiple(of: 2000000))

// Datentyp: Double

let approximatedPi = 3.14


