import Cocoa

//Your challenge is this: make a class hierarchy for animals, starting with Animal at the top, then Dog and Cat as subclasses, then Corgi and Poodle as subclasses of Dog, and Persian and Lion as subclasses of Cat.
//
//But there’s more:
//
//The Animal class should have a legs integer property that tracks how many legs the animal has.
//The Dog class should have a speak() method that prints a generic dog barking string, but each of the subclasses should print something slightly different.
//The Cat class should have a matching speak() method, again with each subclass printing something different.
//The Cat class should have an isTame Boolean property, provided using an initializer.


class Animal {
    var legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
    
}

class Dog: Animal {
    func speak() {
        print("Bark")
    }
}

class Cat: Dog {
    var isTamed: Bool
    
    init(legs: Int, isTamed: Bool) {
        self.isTamed = isTamed
        super.init(legs: legs)
    }
    
    override func speak() {
        print("Meow")
    }
}

final class Corgi: Dog {
    override func speak() {
        print("Corgi bark")
    }
}

final class Poodle: Dog {
    override func speak() {
        print("Poodle bark")
    }
}

final class Persian: Cat {
    override func speak() {
        print("Persian meow")
    }
}

final class Lion: Cat {
    override func speak() {
        print("Lion rawr")
    }
}

let dog1 = Corgi(legs: 4)
let dog2 = Poodle(legs: 4)
let cat1 = Persian(legs: 4, isTamed: true)
let cat2 = Lion(legs: 4, isTamed: false)

dog1.speak()
dog2.speak()
cat1.speak()
cat2.speak()
