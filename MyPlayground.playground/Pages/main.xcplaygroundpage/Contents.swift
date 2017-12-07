/*: Outline
 
 
 # Switch Statements
 
 ### Readings associated with this lab
 
 * [Switch Statements](https://github.com/learn-co-curriculum/swift-switchStatement-readme)

 */
//: First let's try some of last lab's questions but using a 'switch' instead of 'if' or 'if/else'. Can you figure out the types of `x`, `y`, `a`, and `b` without option clicking the constants?

// Given....
let x = 5.0
let y = 12
let a = 321
let b = 32




/*: Question 1
### **(1)** Print "true" if a modulo b is equal to zero.
*/
switch a % b == 0 {
case true:
    print("true")
case false:
    print("false")
}







/*: Question 2
### **(2)** Print 'true' if y divided by x is greater than three, otherwise print 'false'.
*/

switch y / Int(x) > 3 {
case true:
    print("true")
case false:
    print("false")
}





/*: Question 3
### **(3)** Print 'true' if y is greater than x and a divided by b is greater than 9. If there's any need to convert to either an `Int` or a `Double` to satisfy the requirements of a binary operator (you can choose whichever one you want to convert to to satisfy the requirements).
*/

switch y > Int(x) && a / b > 9 {
case true:
    print("true")
case false:
    print("false")
}






/*: Question 4
### **(4)** Write a function named `isGreater` that takes two `Int` arguments and returns a `String`. This function should look to see if `a` is greater than `b`. If it is, it returns back the `String` 'yep', else it returns back the `String` 'nope`.
*/

func isGreater(num1: Int, num2: Int) -> String {
    switch num1 > num2 {
    case true:
        return "yep"
    case false:
        return "nope"
    }
}

isGreater(num1: 13, num2: 3)
isGreater(num1: 3, num2: 13)






/*: Question 5
### **(5)** Write a function named `isForce` that takes a `String` argument which represents a persons name and returns a `Bool`. If the persons name is equal to the name of someone with the force, return `true`, else return `false`. People with the force are Luke, Leia, Anakin, Obi Wan, Yoda & Vader.
 ```swift
 isForce(with:"Luke") // true
 isForce(with:"Mary") // false
 ```
*/
func isForce(name: String) -> Bool {
    
    var force: Bool
    
    switch name {
    case "Luke":
        force = true
    case "Leia":
        force = true
    case "Anakin":
        force = true
    case "Obi Wan":
        force = true
    case "Yoda":
        force = true
    case "Vader":
        force = true
    default:
        force = false
    }
    
    return force
}

isForce(name: "Luke")
isForce(name: "Bob")






/*: Question 6
### **(6)** Write a function "isInRange" that takes an Int  argument and prints "small" if it's in the range of 0 and 3, "medium" if it's in the range of 4 and 6, "big" if it's in the range of 7 and 10, and otherwise prints "not sure".
 ```swift
 isInRange(0) // prints "small"
 isInRange(99) // prints "not sure"
 isInRange(5) // prints "big"
 ```
*/
func isInRange(range: Int) {
    switch range {
    case 0...3:
        print("small")
    case 4...6:
        print("medium")
    case 7...10:
        print("big")
    default:
        print("not sure")
    }
}

isInRange(range: 0)
isInRange(range: 99)
isInRange(range: 5)






//: Here is a [link](https://github.com/learn-co-curriculum/swift-switchLab-lab/blob/solution/MyPlayground.playground/Pages/main.xcplaygroundpage/Contents.swift) to the solution.
