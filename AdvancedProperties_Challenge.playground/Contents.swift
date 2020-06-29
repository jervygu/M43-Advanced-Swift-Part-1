import Foundation

// 1 bucket paint = 1.5 meter square area of wall
var width: Float = 3.4
var height: Float = 2.1

var bucketsOfPaint: Int {
    get {
        let area = width * height
        let areaCoveredPerBucket: Float = 1.5
        let numberOfBuckets = area / areaCoveredPerBucket
        let roundedBuckets = ceil(numberOfBuckets)
        return Int(roundedBuckets)
    }
    set {
        let areaCanCover = Double(newValue) * 1.5
        
        print("This amount of paint can cover an area of \(areaCanCover)")
    }
}
//will compute the bucket of paint needed for 1.5 square area
print(bucketsOfPaint)

// will compute the area can cover of the paint specified
bucketsOfPaint = 8
