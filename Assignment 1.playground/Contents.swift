enum FakeError: Error{
    case NilError(String)
}

// ASSIGNMENT 1

/*
 var 9dateOfBirth = "19/12/2021
 
 var numberOfDays: Int = "190"
 
 let calenderMonth: Int?
 
 calenderMonth = 12
 
 // use optional Binding to unwrap the variable calenderMonth before using it
 var salary = calenderMonth * 25
 
 print(salary)
 
 let: String = 30.5
 
 print(lengthOfRoad * 2)
 
 let userName = "Esther"
 let password = "123456"
 userName = userName + password
 
 
 
 use guard statement to unwrap the variable calenderMonth before using it
 let durationOfStay = calenderMonth * 365


 print(durationOfStay)
 */


let dateOfBirth = "19/12/2021"


var numberOfDays: Int = 190

let calendarMonth: Int?

calendarMonth = 12

// Use optional binding to unwrap the variable calendarMonth before using it

if let month = calendarMonth {
    let salary = month * 25
    print(salary)
}


let lengthOfRoad: Double = 30.5

print(lengthOfRoad * 2)

var userName = "Esther"
let password = "123456"
let fullName = userName + password


// Use guard statement to unwrap the variable calendarMonth before using it

guard let month = calendarMonth else {
    print("I stay here")
    throw FakeError.NilError("An Error occured")
    
}

let durationOfStay = month * 365

print(durationOfStay)

