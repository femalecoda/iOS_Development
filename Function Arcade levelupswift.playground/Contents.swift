import UIKit

//*** Function Arcade ***

/*
 min
 1. Write a function named min that takes two Int values, a and b, and returns te smallest one. Use _ to ignore the external parameter names for both a and b.
 
 > min (1,2)
 > 1
 */

func min(_ a: Int, _ b: Int) -> Int {
    if a < b {
        return a
    }
    return b
//  return a < b ? a :b  //called the Ternary Operator
}

min(1, 2)

 
/*
 Last digit
 2. write a funtion that take an Int and returns it's last digit. Name the funtion lastDigit. Use _ to ignor the external parameter name.
 
 > lastDigit (12345)           Hint: % modulus operator
 > 5
 */

func lastDigit(_ number: Int) -> Int {
    return number % 10
}

lastDigit(12345)


/*
 Frist Numbers
 3. Write a function named frist that takes an Int named N and returns an arry with the frist N numbers starting from 1. Use _ to ignor the external parameter name.
 
 > first (3)
 > [1,2,3]
 */

func frist(_ N: Int) -> [Int] {
    var numbers = [Int]()
    
    for number in 1...N{
        numbers.append(number)
    }
    return numbers
}

frist(3)


/*
 Reverse
 4. write a function called reverse that takes an array of integers named numbers as a parameter. The function should return an array with the number from number in reverse order.
 
 > reverse([1,2,3])
 > [3,2,1]
 */

func reverse(numbers: [Int]) -> [Int] {
    var reversed = [Int]()
    
    for number in numbers {
        reversed.insert(number, at: 0)
    }
    return reversed
}

reverse(numbers: [1,2,3])


/*
 Sum
 5. write a function name sum that takes an array of integers and returns their sum. Use a label variable of the word 'of' and a parameter label named numbers.
 
 > sum(of: [1,2,,3])
 > 6
 */

func sum(of numbers: [Int]) -> Int {
    var sum = 0
    
    for number in numbers {
        //sum = sum + number
        sum += number
    }
    return sum
}

sum(of: [1,2,3])


