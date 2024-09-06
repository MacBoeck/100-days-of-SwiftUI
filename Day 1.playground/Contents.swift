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

let truth = true
let lie = !truth



// How to join strings together

// operator overloading: + means addition with integers, + means concatenation with strings
let hello = "Hallo, "
let world = "Welt!"
let greeting = hello + world
print(greeting)

// string interpolation:
let name = "Moosh"
let age = 29
let message = "Hi, my name is \(name) and I am \(age) years old."
print(message)

let updatedMessage = "Now I am \(age + 1) years old!"
print(updatedMessage)



// Summary: Simple data

// Checkpoint 1

let konstanteCelsius = 37.5
let fahrenheitVersion = ((konstanteCelsius * 9) / 5) + 32
print("Humans are \(fahrenheitVersion)°F hot, which is \(konstanteCelsius)°C.")



// How to store ordered data in arrays

var beatles = ["John", "Paul", "George", "Ringo"]
var numbers = [4, 8, 15, 16, 23, 42]

// get infos out by position
print(beatles[0])

beatles.append("Moosh")
print(beatles)

// Typ festlegen und leeres Array kreieren
var scoresArray = Array<Int>()
scoresArray.append(100)
print(scoresArray[0])

// Shorthand für dasselbe
// leer
var ergebnisseArray = [Int]()
// initialisiert
var meineNamenArray = ["Moosh"]

print(numbers.count)
print(numbers.remove(at: 1))
print(beatles.contains("Moosh"))
print(beatles.sorted())
print(beatles.reversed())
// speziell, da das reversing erst später passiert, wenn es gebraucht wird



// How to store and find data in dictionaries

