import UIKit
 
//step 1
var arrNums : [Int] = []

for number in 1...255{
    arrNums.append(number)
}
print(arrNums)

print("###########")

//step 2
let randNum1 = Int(arc4random_uniform(UInt32(arrNums.count)))
let randNum2 = Int(arc4random_uniform(UInt32(arrNums.count)))

arrNums.swapAt(randNum1, randNum2)
print(arrNums)
print("###########")
// step 3
for num in 1...100{

    let randNum1 = Int(arc4random_uniform(UInt32(arrNums.count)))
    let randNum2 = Int(arc4random_uniform(UInt32(arrNums.count)))

    arrNums.swapAt(randNum1, randNum2)
}
print(arrNums)
print("###########")

// step 4
for index in 0..<arrNums.count{
    if(arrNums[index] == 42){
        arrNums.remove(at: index)
        print("We found the answer to the Ultimate Question of Life, the Universe, and Everything at index \(index)")
        break
    }
}
print("")
print(arrNums)
