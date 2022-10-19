import Cocoa

// var lets you change the variable
var name = "Pesho"
name = "Ivo"

//let sets a constant variable which you can't change
let nameTwo = "Gosho"

var playerName = "Roy"
print(playerName)

playerName = "Dani"
print(playerName)

playerName = "Sam"
print(playerName)

// variables should be written in camelCase by convention

// use constants over variables as much as you can

// in order to use double quotes inside a string sentence("") use backslashes " \ "
let quote = "Then he tapped a sign saying \"Belive\" and walked away."

// use 3 double quotes to mark a multiple line sentence

let movie = """
A day in
the life of an
Apple engineer
"""

print(movie)


// read the length of a string with .count
print(quote.count)

//make a string upper cased with .uppercased
print(quote.uppercased())

// .hasPrefix let us know if a string starts with a letter of our choosing
print(movie.hasPrefix("A day")) // returns true
print(movie.hasPrefix("the life")) // returns false

// .hasSuffix let us know if a string starts with a letter of our choosing
print(quote.hasSuffix("away.")) //returns true
print(quote.hasSuffix("Away.")) // returns false *STRINGS ARE CASE SENSITIVE*


let score = 10 // Int -> whole number
let highScore = 100_000_000 // use underscore to make big numbers more readable

// compound assignment operators

var counter = 10
counter += 2
counter -= 2
counter *= 10
counter /= 2

// is multiple of
let num = 120
num.isMultiple(of: 3) // returns true

// How to store decimal numbers

let a = 1 // Int
let b = 2.0 // Double
//let c = a + b // CANNOT mix Ints and Doubles

// every number with a decimal point is considered a Double in Swift
let double1 = 3.1
let double2 = 3131.3131
let double3 = 3.0
let double4 = 0.04

// How to store truth with Booleans

let goodDogs = true
let gameOver = false
let isMultiple = 120.isMultiple(of: 3) // returns true

// " ! " means NOT
var isAuthenticated = false
isAuthenticated = !isAuthenticated
print(isAuthenticated) // prints true

// .toggle() switches the boolean on execution
var gameOverToggle = true
gameOverToggle.toggle() // returns false
gameOverToggle.toggle() // returns true

// How to join strings together

let firstPart = "Hello, "
let secondPart = "world!"

let combine = firstPart + secondPart // returns "Hello, world!"

// string interpolation
let tempName = "Pesho"
let age = 105
let message = "Hello, my name is \(tempName) and I'm \(age) years old"


