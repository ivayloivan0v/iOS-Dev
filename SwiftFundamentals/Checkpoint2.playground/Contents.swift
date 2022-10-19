import Cocoa

//This time the challenge is to create an array of strings, then write some code that prints the number of items in the array and also the number of unique items in the array.

let arr = ["itemOne", "itemTwo", "itemThree", "itemFour", "itemFive", "itemOne", "itemFour"]
print(arr.count)

let arrSet = Set(arr)
print(arrSet.count)
