import Cocoa

// ARRAYS

// How to store ordered data in arrays

var beatles = ["John", "Paul", "George", "Ringo"]
var numbers = [4, 8, 15, 16, 23, 25]
var temperatures = [25.3, 28.2, 26.4]

// arrays are 0 indexed
beatles[0] // returns "John"
numbers[1] // returns 8
temperatures[2] // returns 26,4

// .append
numbers.append(30) // add 30 at the end of the array

var scores = Array<Int>() // this array MUST hold only integers

var albums = [String]() // shorthand for writing an array

var characters = ["Lana", "Pam", "Ray", "Sterling"]

characters.count // shows the length of the array
characters.remove(at: 2) // remove the value at that index
print(characters)

//characters.removeAll() // removes everything from the array

characters.contains("Lana") // checks if Lana exists in the array and returns a boolean

let cities = ["Sofia", "Varna", "Gabrovo", "Plovdiv"]
cities.sorted() // sort the array in alphabetical order
cities.reversed() // reverse the array


// DICTIONARIES

// How to store and find data in dictionaries

let employee = [      // "key": "value"
    "name": "Pesho",
    "job": "Singer",
    "location": "Gabrovo"
]
print(employee["name", default: "Unknown"]) // set a default value in case the key does not exist in the dictionary

//create an empty dictionary
var heights = [String: Int]()
//add to the empty dictionary
heights["Yao Ming"] = 229
heights["Shaq"] = 216
heights["LeBron"] = 206

//override the value of a key
heights["Shaq"] = 259



// SETS
// How to use sets for fast data lookup

let actors = Set([
    "Denzel Washington",
    "Tom Cruise",
    "Nicolas Cage",
    "Samuel L Jackson"
])
// Set is unordered   // can't append items insted you insert them
// Can't have duplicates in a Set

// .contains , .count , .sorted


// ENUM
//How to create and use enums

enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}

var day = Weekday.monday
day = Weekday.friday
day = Weekday.thursday
day = .tuesday



// How to use type annotations

let playerName: String = "Pesho"
let luckyNumber: Int = 7
let pi: Double = 3.141
var isAuthenticated: Bool = true

var albums2: [String] = ["Red", "Fearless"] // arrays
var user: [String: String] =  ["id": "@twostraws"] // dictionaries
var books: Set<String> = Set([ // sets
    "The Bluest Eye",
    "Foundation",
])
// type annotations are needed when we create something that is empty
var teams: [String] = [String]()
var cities2: [String] = []
var clues = [String]()
let username: String

enum UIStyle {
    case light, dark, system
}

var style: UIStyle = UIStyle.light
style = .dark
