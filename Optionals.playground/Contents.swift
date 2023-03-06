
enum FakeError: Error{
    case NilError(String)

}


var name: String?
var food: String? = "EBA"

/*
 Optional are ways of declaring varables that might not have a value
  ?,! are optional value
 

 Ways of Getting a value from option
 1. Optional binding
 */

if let nameOfPerson = name{
    print(nameOfPerson)
} else {
    print(name)
}

/*
 2. Forced unwrapping using exclamation mark
! means you are sure Value is 100% certain to exist
Do not forcefully unwrap an Optional Variable. Your program might crash
 */
print(food!)

// 3. Use of GUARD Statements
// this is use to prevent the nile from passing

guard let nameOfPerson = name else {
    print(name)
    throw FakeError.NilError("An Error occured")
}

// 4. Use of Nil Coalescene Operator ??
// use to assign defualt value when there is no optional value assigned

let assignedName = name ?? " "

print(assignedName)

/*
 This is a Multi line comment
 */

// This is a Single Line comment
 



