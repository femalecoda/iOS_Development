import Darwin
import Foundation

/*
**** Options For Wrapping Optionals ****


 Optional are ways of declaring varables that might not have a value ?, ! are optional value
 Ways of Getting a value from option
 

 1. Optional binding (?)(if, guard, switch)
 
 */

let possibleNumber: Int? = 42

if let number = possibleNumber {
    print("We have a number \(number) !")      //42
    
} else {
    print("Sorry. No Soup for you.")          //nil
}

func printNumber(possibleNumber: Int?) {
    
    guard let number = possibleNumber else {   // Guard is possible
        print("No number here.")               //nil
        return
    }
    
    print("We have a number \(number) !")      //42
}


/*
 2. Forced unwrapping using exclamation mark (!)
! means you are sure Value is 100% certain to exist
Do not forcefully unwrap an Optional Variable. Your program might crash
 */

// Hubby will help here

// 3. Use of Nil Coalescene Operator (??)
// use to assign defualt value when there is no optional value assigned

let nickName: String? = nil
let defaultName: String = "john"
let informalGreeting = "Hi \(nickName ?? defaultName)"


// 4. Optional Chaining
class person {
    var residence: Residence?
}

class Residence {
    var numberOfRooms = 1
}
let john = person()
//let roomCount = john.residence!.numberOfRooms     // runtime error Boom
if let roomCount = john.residence?.numberOfRooms {
print("john's residence has \(roomCount) room(s).")
} else {
    print("unable to retrieve the number of rooms.")
}


/*
*** Mechanics ***

Know that there are several different ways Optionals can be represented.

```swift

let shortForm: Int? = Int("42")
let longForm: Optional <Int> = Int("42")
let number: Int? = Optional.some(42)      // `some` is the Optional Enum type for value
let noNumber: Int? = Optional.none // `none` is the Enum type for no value
```

Under the hood a Swift Option is just an `enum`.

```swift
enum Optional<T> {
   case none
   case some<T>
}
```

//    *** Optional Acade ***
  

 🕹 Unwrap with if-let

 Unwrap the following Optional using the if let statement
 */

 let firstname: String? = "Sam"

if let possibleFirst = firstname {
    print(possibleFirst)
}

 /*
 🕹 Unwrap with guard

 Unwrap the following Optional using the guard statement
 */

 enum MyError: Error {
     case invalidUsername
 }

 let lastname: String? = "Flynn"

 guard let x = lastname else {
     throw MyError.invalidUsername    //nil
}
  print(x)
   

func someFunction(possibleName: String?) {
    guard let name = possibleName else {
        return
    }
    print(name)
}
if let x - someOptional {
} else {
        
    }
}

// 5. Optional Chaining (?)
 

// This is a Multi line comment
 

// This is a Single Line comment
 



