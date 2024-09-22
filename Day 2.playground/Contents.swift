import Cocoa

// How to store truth in Booleans

let fileName = "paris.jpg"
print(fileName.hasSuffix("jpg"))

let number = 120
print(number.isMultiple(of: 10))

let goodDogs = true

let truthInIsMultiple = 120.isMultiple(of: 12)
print(truthInIsMultiple)

let bestFriend = true
var rudi = !bestFriend
print(rudi)
rudi.toggle()
print(rudi)



// How to join strings together

// Plus to join (concatenation), this method is not very efficient because it creates temporary strings for each single step

let firstPart = "Hello"
let secondPart = "World"
let joined = firstPart + " " + secondPart // this creates "firstPart+space" first, then "firstPart+space+secondPart"
print(joined)

// + is for addition, now it is used as string-joiner. This behaviour is called operator overloading.

// String interpolation: better
let name = "Meeshu"
let age = 2
print("Hello \(name), you are \(age) years old")

print("5x5 = \(5*5)")


