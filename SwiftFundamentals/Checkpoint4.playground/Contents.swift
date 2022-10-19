import Cocoa

//The challenge is this: write a function that accepts an integer from 1 through 10,000, and returns the integer square root of that number. That sounds easy, but there are some catches:
//
//You can’t use Swift’s built-in sqrt() function or similar – you need to find the square root yourself.
//If the number is less than 1 or greater than 10,000 you should throw an “out of bounds” error.
//You should only consider integer square roots – don’t worry about the square root of 3 being 1.732, for example.
//If you can’t find the square root, throw a “no root” error.


enum NumberError: Error {
    case lower, higher, noRoot
}

func findSqrt(_ number: Int) throws -> Int {
    if number < 1 {
        throw NumberError.lower
    }
    if number > 10_000 {
        throw NumberError.higher
    }

    var root = 0
    for i in 1...10_000 {
        if i * i == number {
            root = i
        }
    }
    if root == 0 {
        throw NumberError.noRoot
    }
    return root
}
do {
    let result = try findSqrt(2)
    print(result)
} catch NumberError.lower {
    print("The number must be greater than 0")
}catch NumberError.higher {
    print("The number must be lower than 10,000")
}catch NumberError.noRoot{
    print("No root")
} catch {
    print("There was an error. \(error.localizedDescription)")
}
