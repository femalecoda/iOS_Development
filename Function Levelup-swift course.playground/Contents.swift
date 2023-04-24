import UIKit
//
// FUNCTIONS
//

// *** Named Parameters ***
func greet(person: String, day: String) -> String {
    return "Hello  \(person), today is \(day)"
}
// This method has two named parameters - `person` and `day`. And you invoke methods in Swift by prefixing them in front of method values like this.
greet(person: "Aye",  day: ",Tuesday")


// *** Omitting Argument Labels ***

//If you don’t want an argument label for a parameter, write an underscore (_) instead of an explicit argument label for that parameter.

func someFunction(_ firstParameterName: Int, secondParameterName: Int) {
    // In the function body, firstParameterName and secondParameterName refer to the argument values for the first and second parameters.
}
someFunction(1, secondParameterName: 2)
// If a parameter has an argument label, the argument must be labeled when you call the function.

func greet(_ person: String, _ special: String) -> String{
    return "Hi \(person), today's lunch special is \(special)."
}
greet( "Kusum", "Moi-moi")



// *** Argument Labels ***

func greet(person: String, from hometown: String) -> String {
    return "Hello  \(person), Gald you could visit from \(hometown)"
}
// See that word `from` in front of the named label `hometown`? That is called an argument label. Argument labels are labels that you use when calling a function:
greet(person: "Bill", from: "Anna")
// But it is the named labels that are used within the function itself when processing.

// * Just Remenber ***
func someFunction(argumentLabel parameterName: Int) {
    // In the function body, parameterName refers to the argument value for that parameter.
}


// - Ready Player 1
//
//Add an argument label of 'to' to the 'preson' perameter name, and update the 'greet' method accordingly.

func greet(to person: String, from hometown: String) -> String {
    return "Hello  \(person), Gald you could visit from \(hometown)"
}
greet(to: "Aye", from: "Anna")



// *** Default Parameter Values ***

func someFunction(parameterWithoutDefault: Int, parameterWithDefault: Int = 12) {}
 // If you omit the second argument when calling this function, then the value of parameterWithDefault is 12 inside the function body.

someFunction(parameterWithoutDefault: 3, parameterWithDefault: 6) // parameterWithDefault is 6
someFunction(parameterWithoutDefault: 4) // parameterWithDefault is 12

// *** Variadic Parameters ***

// A 'variadic parameter' accepts zero or more values of a specified type. Means that the parameter can be passed a varying number of input values when the function is called. Write by inserting three period characters (...) after the parameter’s type name.

// The values pass are made available within the function body as an array of the appropriate type. For example a parameter with the name 'numbers' and a type `Double…` is made available within the function’s body as a constant array.

func arithmeticMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
arithmeticMean(1, 2, 3, 4, 5)

// Note A function may have at most one variadic parameter.



