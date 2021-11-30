import UIKit

struct Card {
  //  var Colors = ["Red","Blue","Green"]
    var  Colors:String
    var Roll:Int
}

class Deck {
    var cards:[Card] = []
    
    init(card:[Card]){
        
        self.cards = card
        
        for i in 1...3 {

            for _ in 1...10{
                if i == 1 {
                        cards.append(Card(Colors: "Red", Roll: Int.random(in: 3...4)))
                        }
                        else if i == 2{
                            cards.append(Card(Colors: "Green", Roll:  Int.random(in: 4...6)))
                        }else{
                            cards.append(Card(Colors: "Blue", Roll: Int.random(in: 1...2)))
                                }
                            }
                        }
            }
   
func deal()-> Card {
            
            let topMost = cards.removeLast()
            return topMost
        }
            
        
    
func isEmpty() -> Bool{
    if cards.count > 0 {
        return false
    }
    return true
}
    
    func reOrder(){
        cards.shuffle()
    }
}
        
        
class Player {
        var name:String = ""
        var hand:[Card] = []
        init(name:String, hand: [Card]){
            self.name = name
            self.hand = hand
            
            print("Player Name: \(name)")
        }
        
    
    func draw(deck:Deck) -> Card{
            let cardHolder = deck.cards[Int.random(in: 1...30)]
            hand.append(cardHolder)
        return cardHolder
    }
    
    func rollDice()-> Int{
        return Int.random(in: 1...6)
    }
    
    func matchingCards(color:String,roll:Int)-> Int{
        var counter:Int = 0
        for(_,value) in hand.enumerated(){
            if (value.Colors == color && value.Roll == roll){
                counter = counter+1
            }
            print(value)
        }
        return counter
        }
            
}

//main
var card = Card(Colors: "Blue", Roll: 4)
var deck = Deck(card: [card])

deck.reOrder()
deck.deal()

var player = Player(name: "Ahad", hand: [card])

player.draw(deck: deck)
player.draw(deck: deck)
player.draw(deck: deck)
player.draw(deck: deck)

player.rollDice()

//print the matching cards
var match = player.matchingCards(color: "Green", roll: 5)
print("The Number Of Matching Cards is: \(match)")
