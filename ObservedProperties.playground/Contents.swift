import UIKit

// observed properties
var pizzaInInches: Int = 10 {
    willSet {
        print(pizzaInInches)
        print(newValue)
    }
    didSet {
//        print(oldValue)
//        print(pizzaInInches)
        if pizzaInInches >= 18 {
            print("Invalid size specified, pizzaInInches set to 18.")
            pizzaInInches = 18
        }
    }
}
pizzaInInches = 33
//
var numberOfPeople: Int = 12
let slicesPerPerson: Int = 4


var numberOfSlices: Int {
    get {
        return pizzaInInches - 4
    }
    set {
        print("numberSlices now has a new value which is \(newValue)")
    }
}

var numberOfPizza: Int {
    get {
        let numberOfPeopleFedPerPizza = numberOfSlices / slicesPerPerson
        return numberOfPeople / numberOfPeopleFedPerPizza
    }
    set {
        let totalSlices = numberOfSlices * newValue
        numberOfPeople = totalSlices / slicesPerPerson
    }
}

numberOfPizza = 6
numberOfPeople = 6

//print(numberOfSlices)

//let a = numberOfSlices * 2
//print(a)

print(pizzaInInches)
print(numberOfSlices)
print(numberOfPeople)
