import Cocoa

//Create a struct to store information about a car, including its model, number of seats, and current gear,
//then add a method to change gears up or down.
//Have a think about variables and access control: what data should be a variable rather than a constant,
//and what data should be exposed publicly? Should the gear-changing method validate its input somehow?

struct Car {
    let model: String
    let numberOfSeats: Int
    private(set) var gear = 0 // variable is only accessible withing the struct
    
    mutating func changeGearUp() -> Bool {
        if gear == 6 {
            print("Can't get to a higher gear")
            return false
        } else {
            gear += 1
            return true
        }
    }
    
    mutating func changeGearDown() -> Bool {
        if gear == 0 {
            print("Can't get to a lower gear")
            return false
        } else {
            gear -= 1
            return true
        }
    }
    
}

var newCar = Car(model: "Mercedes-Benz", numberOfSeats: 4)
print(newCar)
newCar.changeGearUp()
newCar.changeGearUp()
print(newCar)
newCar.changeGearDown()
print(newCar)
