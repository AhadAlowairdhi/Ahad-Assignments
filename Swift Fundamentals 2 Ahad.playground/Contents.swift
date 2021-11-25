import UIKit

// Print all values from 1-255
var i = 1
while i < 256 {
    print(i)
    i+=1
}

//Print all values from 1-100 that are divisible by 3 or 5 but not both
for number in 1...100 {
    if (number % 3 == 0 || number % 5 == 0) {
        print(number)
    }
}

//FizzBuzz
for number in 1...100 {
    if (number % 3 == 0 && number % 5 == 0){
        print("FizzBuzz")
    }else if (number % 3 == 0) {
        print("Fizz")
    }else if (number % 5 == 0) {
        print("Buzz")
    }else{
        print(number)
    }
}
