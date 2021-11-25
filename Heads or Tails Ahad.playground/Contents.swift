import UIKit

//step 1
func tossCoin() ->  String{
    print("Tossing a Coin!")
    let arrayCoin = ["Heads","Tails"].randomElement()
    print(arrayCoin!)

    return arrayCoin!
}

//step 2
func tossMultipleCoins(times : Int) -> Double{
    var counter = 0
    
    for _ in 1...times {
        let callFun = tossCoin()
        if callFun == "Heads" {
            counter+=1
        }
    }
    
    return Double(counter)/Double(times)
}

let ratio = tossMultipleCoins(times: 20)
print("")
print("Ratio of head toss to total toss: \(ratio * 100)%" )
