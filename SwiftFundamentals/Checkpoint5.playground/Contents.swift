import Cocoa

//Your input is this:
//
//let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]
//Your job is to:
//
//Filter out any numbers that are even
//Sort the array in ascending order
//Map them to strings in the format “7 is a lucky number”
//Print the resulting array, one item per line

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

let result: [()] = luckyNumbers.filter{ $0 % 2 != 0 }.sorted { $0 < $1 }.map { print("\($0) is a lucky number") }

