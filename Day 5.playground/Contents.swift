import Cocoa

// How to check a condition is true or false

let score = 100

if score > 90 {
    print("You got an A")
}


// How to check multiple conditions

let age = 7

if age >= 18 {
    print("You are old enough.")
} else {
    print("You are too young.")
}

let kidsAge = 14
let parentalConsent = true

if kidsAge >= 18 || parentalConsent {
    print("You can buy the game.")
}


// How to use switch statements to check multiple conditions

enum Weather {
    case rain, sun, snow
}

let forecast = Weather.rain

switch forecast {
case .rain:
    print("It's raining.")
case .sun:
    print("It's sunny.")
case .snow:
    print("It's snowing.")
}

let name = "John"

switch name {
case "John":
    print("Hello, John!")
case "Jane":
    print("Hello, Jane!")
default:
    print("Hello, Stranger!")
}

// switch muss exhaustive sein, also im Fall von strings und ints braucht es einen default case, weil man unmöglich alle ints checken kann etc.


// How to use the ternary conditional operator for quick tests

