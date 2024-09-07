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

// get infos out with their key

let employee = [
    "name": "Moosh",
    "job": "Nice man",
    "location": "Where you need him"
]

print(employee["name"])

// default value for more safety

print(employee["name", default: "Unbekannt"])

// empty dictionary

var heights = [String: Int]()
heights["Moosh"] = 175
print(heights)



// How to use sets for fast data lookup
// they not store duplicates

var actors = Set([
    "Denzel",
    "Tom",
    "Nicolas",
    "Samuel"
])

print(actors)
actors.insert("Emma")
print(actors)

let testingSpeed = actors.contains("Emma")
print(testingSpeed)

let anzahlImSet = actors.count
print(anzahlImSet)

let sortiertesSetalsArray = actors.sorted()
print(sortiertesSetalsArray)



// How to create and use enums
// safer to use giving the choices

enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

var day = Weekday.friday

// shorthands
enum Months { case jan, feb, mar, apr }
var monat = Months.jan
monat = .feb



// How to use type annotations

let surname: String = "Müller"
var obstMenge: Double = 0 //overridden

// explain the type before a constant gets its value
let unbekannteKonstante: Int
unbekannteKonstante = 42
print(unbekannteKonstante)



// Checkpoint 2

var arrayOfStrings: [String] = []
arrayOfStrings.append("Blaubär")
arrayOfStrings.append("Gelbbär")
arrayOfStrings.append("Blaubär")
arrayOfStrings.append(contentsOf: ["Grünbär", "Schwarzbär"])

let aOSalsSet = Set(arrayOfStrings)

print("Das Array hat \(arrayOfStrings.count) Items und \(aOSalsSet.count) einzigartige.")



// How to check a condition is true or false
// https://www.hackingwithswift.com/quick-start/beginners/how-to-check-a-condition-is-true-or-false



