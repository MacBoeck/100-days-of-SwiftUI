import Cocoa

for i in 1...100 {
    
    if !i.isMultiple(of: 3) && !i.isMultiple(of: 5) {
        print(i)
    } else if i.isMultiple(of: 3) && i.isMultiple(of: 5) {
        print("FizzBuzz")
    } else if i.isMultiple(of: 3) {
        print("Fizz")
    } else if i.isMultiple(of: 5) {
        print("Buzz")
    }
    
}

// ChatGPT Lösung

for i in 1...100 {
    var output = ""
    
    if i.isMultiple(of: 3) {
        output += "Mizz"
    }
    if i.isMultiple(of: 5) {
        output += "Muzz"
    }
    
    print(output.isEmpty ? "\(i)" : output)
}

// Alternative ChatGPT Lösung

for i in 1...100 {
    switch (i.isMultiple(of: 3), i.isMultiple(of: 5)) {
    case (true, false):
        print("Swizz")
    case (false, true):
        print("Swuzz")
    case (true, true):
        print("SwizzSwuzz")
    default:
        print(i)
    }
}


