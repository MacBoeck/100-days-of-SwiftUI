import Cocoa

// How to use a for loop to repeat work

let plätförms = ["macOS", "iOS", "tvOS", "watchOS"]

for ös in plätförms {
    print("Hello, \(ös)!")
}

for i in 1...12 { // through (including)
    print("5 x \(i) = \(5 * i)")
}

for i in 1..<12 { // up to (excluding)
    print("5 x \(i) = \(5 * i)")
}

for _ in 1...10 {
    print("Hallo")
}


// How to use a while loop to repeat work

var countdown = 10

while countdown > 0 {
    print("\(countdown)...")
    countdown -= 1
}

print("Blastoff!")


// How to skip loop items with break and continue

let number1 = 4
let number2 = 14
var mulsitples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        mulsitples.append(i)
        
        if mulsitples.count == 10 {
            break
        }
    }
}

print(mulsitples)


// labeled statement
let options = ["up", "down", "left", "right"]
let secretCombination = ["up", "up", "right"]
outerLoop: for option1 in options {
    for option2 in options {
        for option3 in options {
            print("In loop")
            let attempt = [option1, option2, option3]

            if attempt == secretCombination {
                print("The combination is \(attempt)!")
                break outerLoop
            }
        }
    }
}


