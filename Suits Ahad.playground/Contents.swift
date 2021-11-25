import UIKit

let suits = ["Clubs", "Diamonds", "Hearts", "Spades"]
let cards = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
var deckOfCards = [String: [Int]]()
//your code here

print("solution 1")
print("")
deckOfCards = ["Clubs" : cards , "Diamonds" : cards , "Hearts" : cards , "Spades" : cards ]
print(deckOfCards)

print("")
print("")

print("solution 2")
print("")
for suit  in suits{
  deckOfCards[suit] = cards
}
print(deckOfCards)
