import Cocoa

//Your challenge is this: write a function that accepts an optional array of integers, and returns one randomly.
//If the array is missing or empty, return a random number in the range 1 through 100.
//
//If that sounds easy, it’s because I haven’t explained the catch yet:
//I want you to write your function in a single line of code.
//No, that doesn’t mean you should just write lots of code then remove all the line breaks – you should be able to write this whole thing in one line of code.


let array = [5, 9, 3, 6, 2, 1, 29]
print(array.randomElement() ?? Int.random(in: 1...100))

