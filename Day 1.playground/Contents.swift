import Cocoa



// How to create variables and constants

var myVariableName = "Initial value"
myVariableName = "Changed value"

let myConstantName = "Initial final value"
// myConstantName = "Changed?"

var playerName = "Roy"
print(playerName)

playerName = "Dani"
print(playerName)



// How to create strings

let myString = "Hier ist Text"
let myQuote = "Hier ein \"Zitat\"."

let multiZeilenString = """
Drei Doppelanführungszeichen
Für mehrere Zeilen
Text
"""

print(multiZeilenString.count)
let zählungsVariable = multiZeilenString.count
print(zählungsVariable)

print(multiZeilenString.uppercased())

print(multiZeilenString.hasPrefix("Drei"))
print(multiZeilenString.hasSuffix("text"))



// How to store whole numbers (integer)

let score = 10
let reallyBig = 1_000_000_000

let lowerScore = score - 2
let higherScore = score + 10
let doubledScore = score * 2
let halvedScore = score / 2

var counter = 10
counter = counter + 5
counter += 5 // compound assignement operators
print(counter)

let number = 120
print(number.isMultiple(of: 3))
print(1989.isMultiple(of: 17))



// How to store decimal numbers (double)

let zahl = 0.1 + 0.2
print(zahl)

let myInt = 1
let myDouble = 2
let ergebnis = myInt + Int(myDouble)
print(ergebnis)

var doppel = 22.0
doppel *= 2
print(doppel)



// How to store truth with Booleans


