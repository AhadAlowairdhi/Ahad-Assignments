import UIKit

//var toDoList: [String] = ["Learn iOS", "Build the next Flappy Bird", "Retire in Cancun"]
//print(toDoList)
//
//let suits = ["Clubs", "Diamonds", "Hearts", "Spades"]
//let cards = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
//var deckOfCards = [String: [Int]]()
//// your code here
//deckOfCards = ["Clubs" : cards , "Diamonds" : cards , "Hearts" : cards , "Spades" : cards ]
//print(deckOfCards)
//
//var arrayOfInts = [1, 2, 3, 4, 5]
//// => "[1, 2]"
//print("\(arrayOfInts[0...1])")
//// => "[2, 3, 4]"
//print("\(arrayOfInts[1..<4])")
//// => "[3, 4]"
//print("\(arrayOfInts[2...3])")
//
//var arr = [1, 2, 3, 4]
//arr[0] = 8
//print(arr)      // The array has now changed!

// here we are declaring myDict variable to be of Dictionary Type that will use instances of String as
// its keys and instances of Int as its values
var dictionary = [
    "Kobe": 24,
    "Lebron": 23,
    "Rondo": 9
]
// Note how we are leveraging Swift's type inference here
for x in dictionary {
    print(x)
}

for (key, value) in dictionary {
    print("The key is \(key) and the value is \(value)")
}
