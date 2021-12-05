import UIKit

//First, create a class called Animal
class Animal{
    
    //Give Animal a property "name"
    //Give Animal a property "health" with a default value of 100
    let name:String
    var health:Int
    
    //Give Animal an initialization that takes in a name and sets the name property appropriately
    init(name:String){
        self.name = name
        self.health = 100
    }
    
    //Give the animal a displayHealth method
    func displayHealth()->Int {
        return health
    }
    
}

//Next, create a subclass of Animal called Cat
class Cat:Animal{

    
    override init(name: String) {
        super.init(name: name)
        //Modify the Cat's health to be 150
        health = 150
    }
    
    //Give the Cat a method "growl" that prints to the screen "Rawr!"
    func growl(){
        print("Rawr!")
    }
    
    //Give the Cat a method "run" that prints to the screen "Running" and deducts 10 health
    func run() {
        print("Running!")
        health -= 10
    }
}

//create two subclasses of Cat - Cheetah and Lion
class Cheetah:Cat{

    //Override the Cheetah's run method to print "Running Fast" and deduct 50 health
    override func run() {
        if health != 0 {
       print("Running Fast!")
        health -= 50
        }else{
            print("need more health!")
        }
    }
    
    //Add a sleep function to the Cheetah class that adds 50 health, make sure its health doesn't go over 200.
    func sleep()  {
        if super.health < 200 {
            health += 50
        }
    }
}

//create two subclasses of Cat - Cheetah and Lion
class Lion:Cat{
    override init(name: String) {
        super.init(name: name)
        //Override Lion's health to be 200
        health = 200
    }
    //Override the growl method of the Lion to make it print "ROAR!!!! I am the King of the Jungle"
    override func growl() {
        print("ROAR!!!! I am the King of the Jungle")
        self.health -= 50
    }
}


//Create a Cheetah. Have the Cheetah run 4 times. Display the Cheetah's health
//Now modify the Cheetah's run method so that it cannot run if it does not have the required health. -> in the last time doesn't can run
let aCheetah = Cheetah(name: "aCheetah")

for _ in 1...4{
    aCheetah.run()
}
aCheetah.displayHealth()

print("***********")

//Create a Lion. Have the Lion run 3 times. Have the Lion growl.
let aLion = Lion(name: "aLion")

for _ in 1...3{
    aLion.run()
}

aLion.growl()
