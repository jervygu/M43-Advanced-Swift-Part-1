import UIKit

let pizzaInInches: Int = 8
//var numberOfSlices: Int = 6

var numberOfSlicesGetter: Int {
    get { return pizzaInInches - 4
    }
}
var numberOfSlicesShortVersionGetter: Int {
    // getter
    return pizzaInInches - 4
}

print(numberOfSlicesGetter )

let a = numberOfSlicesShortVersionGetter * 2
print(a)
