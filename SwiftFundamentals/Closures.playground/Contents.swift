import Cocoa

let sayHello = {
    print("Hi there!")
}

sayHello()

let sayHelloTwo = { (name: String) -> String in
    "Hi \(name)"
}

sayHelloTwo("Pesho")


func greetUser() {
    print("Hi there!")
}

var greetCopy: () -> Void = greetUser  // Void means it returns no value


func getUserData(for id: Int) -> String {
    if id == 1992 {
        return "Pesho"
    } else {
        return "Anonymous"
    }
}

let data: (Int) -> String = getUserData
let user = data(1992)
print(user)


let team = ["Gloria", "Tiffany", "Piper", "Suzanne", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)


//Custom sort function
func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    return name1 < name2
}

//let captainFirstTeam = team.sorted(by: captainFirstSorted)
//print(captainFirstTeam)

let captainFirstTeam = team.sorted(by: {(name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    return name1 < name2
})
print(captainFirstTeam)

//How to use trailing closures and shorthand syntax

let captainSecondTeam = team.sorted {name1 , name2 in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    return name1 < name2
}
print(captainSecondTeam)

let reverseTeam = team.sorted { $0 > $1 }
print(reverseTeam)

// filter with trailing closure syntax
let tOnly = team.filter { $0.hasPrefix("T") }
print(tOnly)

// map with trailing closure syntax
let uppercaseTeam = team.map { $0.uppercased() }
print(uppercaseTeam)


//How to accept functions as parameters

func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done")
}

doImportantWork {
    print("This is the first work")
} second: {
    print("This is the second work")
} third: {
    print("This is the third work")
}
