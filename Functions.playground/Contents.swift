import UIKit

// A function that take no input and returns no output
// but perfoms a function of calling wife
func callMyWife () {
    print("calling wife") // function names are usually represantion of the action
}

//name argument function implementation
func callMyHusband (phoneNumber: Int, name: String, height: Int) {
    print("calling husband on phoneNumber\(phoneNumber)")
}

// function definitaion using single argument variable
func calculateMyAge (dateOfBirth: Int) -> Int {
     let age = 2023 - dateOfBirth
    return age
}

//function definittion using underscore _ as label and argument variable
func determinMyProgress (_ name: String, _  age: Int, _  lives: String) { // you just pass a value and call it
    
}

// function definition using lebal and argument variable
func displayMyGoods (orange goods1: String, mango goods2: String, potatoes goods3: String) {
    print("\(goods1) \(goods2) \(goods3)") // ( String interpolation
    
}


// calling the function
callMyWife()
callMyHusband(phoneNumber: 080238977, name: "Aye", height: 169)
displayMyGoods(orange: "23", mango: "12", potatoes: "456")
let result = calculateMyAge(dateOfBirth: 1995)
print(result)
determinMyProgress("Zainab", 12, "12000")


// Input passed into a function are all constant

// another engineer knows how to calculate area
func calculateArea (lenght: Int, breadth: Int) -> Int{
    return lenght * breadth
}


// Passing a function to a function as a perameter
// function signature is the type of the accepted and the return type of the funtion

func composeShape (called name: String, and area: (Int,Int) -> Int) {
    let result = area(10, 10)
    print("\(name) area is: \(result)")
}


composeShape (called: "square", and: calculateArea)

 /*
  METHOD ARE FUNCTION THAT LIVE IN A CLASS OR STRUCTS
class enables us to group funtionalites and properties in unites
Structs is like a class, it enable us to store untionalites and properties in a method

Create a class with Keyword class and Name of class using Pascal casing
Classes are created using the Class Keyword
*/

class Fridge { // Class is a REFERENCE TYPE
    var nameOfFridge = "Media"
    var color = "Grey"
    var height = 6
    
    // Methods are functions that live within a class
    
    // Method 1
    func cooling () {
        print ("fridge is cooling")
        
    }
    
    // Method 2
    func freezing () {
        
    }
}

//Structs are created using the struct keyword
struct Televison { // struct is a VALUE TYPE
    var nameOfFridge = "media"
    var color = "Gray"
    var height = 10
    
    // Methods are functions that live within a class
    
    //Method 1
    func increaseVolume () {
        print("increasing volume")
    }
    
    
    // Method 2
    func reduceVolume () {
        print("reducing voulume")
    }
    
    // Method 3
    func displayVideo () {
        print("displaying video")
    }
}


let media = Fridge () // class initialization creates an object
let media2 = media // creating a reference

media2.color = "Black"
media2.height = 9

print(media.color)
print(media.height)

print(media2.color)
print(media2.height)

let lg = Televison ()
var lg2 = lg // creating a copy

lg2.height = 121
lg2.color = "Green"

print(lg.height)
print(lg.color)

print(lg2.height)
print(lg2.color)

