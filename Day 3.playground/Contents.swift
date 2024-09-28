import Cocoa

// How to store ordered data in arrays

var beatles = ["John", "Paul", "George", "Ringo"]
let numbers = [4, 8, 15, 16, 23, 42]

print(beatles[0])
print(numbers[1])

beatles.append("Jimmy")

// Arrays sind von einem Typen, man kann nicht mischen

var scores = Array<Int>()
scores.append(4)
scores.append(8)

// Short hand:
var scores2 = [Int]()
scores2.append(4)
scores2.append(8)

// Noch kürzer, wenn es initialisiert werden kann:
var scores3 = [4, 8]
print(scores3.count)
scores3.remove(at: 1)
print(scores3.count)
scores3.removeAll()
print(scores3.count)

let bondMovies = ["Skyfall", "Quantum of Solace", "Spectre", "No Time to Die"]
print(bondMovies.contains("Frozen"))

let cities = ["London", "Paris", "Berlin", "Madrid"]
print(cities.sorted())

let presidents = ["Washington", "Adams", "Jefferson", "Madison"]
let reversedPresidents = presidents.reversed()
print(reversedPresidents)


// How to store and find data in dictionaries

var Direktor = ["Name": "Prof. Abdul Nachtigaller", "Gehirne": "\(String(7))", "Beruf": "Erfinder"]
print(Direktor["Name"]) // Funktioniert, weist aber darauf hin, dass eventuell der Key nicht existiert oder dahinter kein Value
// Beschwert sich aber nicht, wenn man eine Default-Value mitgibt:
print(Direktor["Name"] ?? "Kein Wert")

// Dictionaries können keine Duplikate haben


// How to use sets for fast data lookup

var people = Set<String>()
people.insert("Denzel Washington")
people.insert("Tom Cruise")
people.insert("Nicolas Cage")
people.insert("Samuel L Jackson")

// Sets haben keine Reihenfolge und erlauben keine Duplikate. Sie sind aber hochoptimiert auf Geschwindigkeit beim nachgucken.


// How to create and use enums

enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

var day = Weekday.monday
day = Weekday.tuesday
day = Weekday.friday

// Kurzversion:

enum WeekdayKurz {
    case m, t, w, th, f
}
