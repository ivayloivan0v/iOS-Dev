import Cocoa

//Your challenge is this: make a protocol that describes a building, adding various properties and methods, then create two structs, House and Office, that conform to it. Your protocol should require the following:
//
//A property storing how many rooms it has.
//A property storing the cost as an integer (e.g. 500,000 for a building costing $500,000.)
//A property storing the name of the estate agent responsible for selling the building.
//A method for printing the sales summary of the building, describing what it is along with its other properties.


protocol Building {
    var rooms: Int { get }
    var price: Int { get }
    var agentName: String { get }
    func salesSummary(rooms: Int, price: Int, agentName: String ) -> Void
}

struct House: Building {
    let rooms: Int
    let price: Int
    let agentName: String
    func salesSummary(rooms: Int, price: Int, agentName: String) -> Void {
        print("This house has \(rooms) rooms, costs $\(price) and \(agentName) is selling it.")
    }
}

struct Office: Building {
    let rooms: Int
    let price: Int
    let agentName: String
    func salesSummary(rooms: Int, price: Int, agentName: String) -> Void {
        print("This office has \(rooms) rooms, costs $\(price) and \(agentName) is selling it.")
    }
}

let house = House(rooms: 20, price: 100_000, agentName: "Pesho")

let office = Office(rooms: 5, price: 75_000, agentName: "Gosho")

func summary(using building: Building) {
    building.salesSummary(rooms: building.rooms, price: building.price, agentName: building.agentName)
}
summary(using: house)
