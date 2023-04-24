import UIKit

//
// *** Advance Functions Types ***

// Every function in Swift has a _function type_, made up of the parameter types and the return type of the function.

func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}
func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
    return a * b
}

//These two functions two _Int_ values, and return an _Int_ value. The type of both of these values is `(Int, Int) -> Int`.

// Even functions that have no input views, and no return type have a type.

func printHelloWorld() {
    print("hello, world")
}  // The type of this function is `() -> Void`.


//*** Using Function Types ***

var mathFunction: (Int, Int) -> Int = addTwoInts

print("Result: \(mathFunction(2, 3))")

// *** Function as Parameter Type ***

// You can use function types such as _(Int, Int) -> Int_ as a parameter type for another function.


func lessThanTen(number: Int) -> Bool{
    return number < 10
}     // Input takes an Int and Output returns a Bool

func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}

/*
 ready Player 1
 write a function for the above matchers thet returns if any numbers are between 1 and 10 (inculsively)
 [20,19,7,12] => true because of the 7
 [20,19,12]   => false
 */

func betweenOneAndTen(number: Int) -> Bool {
    return number >= 1 && number <= 10
}
