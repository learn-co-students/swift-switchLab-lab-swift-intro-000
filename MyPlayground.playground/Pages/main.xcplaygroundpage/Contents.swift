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

if a%b==0{
    print(true)
}






/*: Question 2
### **(2)** Print 'true' if y divided by x is greater than three, otherwise print 'false'.
*/
if Double(y)/x > 3 {
    print(true)
} else {
    print(false)
}






/*: Question 3
### **(3)** Print 'true' if y is greater than x and a divided by b is greater than 9. If there's any need to convert to either an `Int` or a `Double` to satisfy the requirements of a binary operator (you can choose whichever one you want to convert to to satisfy the requirements).
*/
if Double(y)>x && a/b > 9 {
    print(true)
}







/*: Question 4
### **(4)** Write a function named `isGreater` that takes two `Int` arguments and returns a `String`. This function should look to see if `a` is greater than `b`. If it is, it returns back the `String` 'yep', else it returns back the `String` 'nope`.
*/


func isGreater(_ a: Int, _ b: Int) -> String {
    if a>b {
        return "yep"
    } else {
        return "nope"
    }
}






/*: Question 5
### **(5)** Write a function named `isForce` that takes a `String` argument which represents a persons name and returns a `Bool`. If the persons name is equal to the name of someone with the force, return `true`, else return `false`. People with the force are Luke, Leia, Anakin, Obi Wan, Yoda & Vader.
 ```swift
 isForce(with:"Luke") // true
 isForce(with:"Mary") // false
 ```
*/


func isForce(with name: String) -> Bool {
    let names = ["Luke","Leia","Anakin","Obi Wan", "Yoda", "Vader"]
    for oneWithTheForce in names {
        if name == oneWithTheForce {
            return true
        }
    }
        return false
}

isForce(with:"Luke")
isForce(with:"Mary")




/*: Question 6
### **(6)** Write a function "isInRange" that takes an Int  argument and prints "small" if it's in the range of 0 and 3, "medium" if it's in the range of 4 and 6, "big" if it's in the range of 7 and 10, and otherwise prints "not sure".
 ```swift
 isInRange(0) // prints "small"
 isInRange(99) // prints "not sure"
 isInRange(5) // prints "big"
 ```
*/
func isInRange(_ number: Int) {
    if number >= 0 && number < 4 {
        print("small")
    } else if(number>3) && (number<7) {
        print("medium")
    } else if(number>6) && (number<11) {
        print("big")
    } else {
        print("Not sure")
    }
}

isInRange(0) // prints "small"
isInRange(99) // prints "not sure"
isInRange(5) // prints "big"








//: Here is a [link](https://github.com/learn-co-curriculum/swift-switchLab-lab/blob/solution/MyPlayground.playground/Pages/main.xcplaygroundpage/Contents.swift) to the solution.
