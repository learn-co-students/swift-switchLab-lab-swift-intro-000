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
switch x {
case is Double:
      print("x is double")
case is Int:
    print("x is Int")
}
switch y {
case is Int:
    print("y is int")
case is Double:
    print("y is int")
}


/*: Question 1
### **(1)** Print "true" if a modulo b is equal to zero.
*/
switch(a % b == 0) {
case true:  // is the remainder 0 after divide by 2
print("even")
case false:
print("odd")

}





/*: Question 2
### **(2)** Print 'true' if y divided by x is greater than three, otherwise print 'false'.
*/
switch(Double(y) / x > 3.0) {
case true:
    print("Answer is > 3")
case false:
    print("Answer is not > 3")
    
}






/*: Question 3
### **(3)** Print 'true' if y is greater than x and a divided by b is greater than 9. If there's any need to convert to either an `Int` or a `Double` to satisfy the requirements of a binary operator (you can choose whichever one you want to convert to to satisfy the requirements).
*/
switch(Double(y) > x && a / b > 9) {
case true:
    print("Answer is True")
case false:   //can use default instead of false but since false is the only other option its ok.
    print("Answer is false")
}






/*: Question 4
### **(4)** Write a function named `isGreater` that takes two `Int` arguments and returns a `String`. This function should look to see if `a` is greater than `b`. If it is, it returns back the `String` 'yep', else it returns back the `String` 'nope`.
*/
func isGreater(a: Int,b: Int) -> String {
    switch(a > b) {
    case true:
      return "yep"
    case false:
        return "nope"
}
}
var answer:String
answer = isGreater(a:3,b:5)  //passing a as 3 and b as 5 so a is not > b
print(answer)   //answer printed is nope





/*: Question 5
### **(5)** Write a function named `isForce` that takes a `String` argument which represents a persons name and returns a `Bool`. If the persons name is equal to the name of someone with the force, return `true`, else return `false`. People with the force are Luke, Leia, Anakin, Obi Wan, Yoda & Vader.
 ```swift
 isForce(with:"Luke") // true
 isForce(with:"Mary") // false
 ```
*/
func isForce(pname:String) -> Bool {
    switch pname {
    case "Luke":
        return true
    case "Leia":
        return true
    case "Yoda":
        return true
    case "Vader", "Anakin", "Obi Wan":     //Can put multiple values on one case statement so could have put all the names on one case statement
        return true
    default:
          return false
    }
}

var forcefound: Bool
forcefound = isForce(pname: "Bruce")
print(forcefound)   //false is printed
forcefound = isForce(pname: "Yoda")
print(forcefound)   //true is pinted




/*: Question 6
### **(6)** Write a function "isInRange" that takes an Int  argument and prints "small" if it's in the range of 0 and 3, "medium" if it's in the range of 4 and 6, "big" if it's in the range of 7 and 10, and otherwise prints "not sure".
 ```swift
 isInRange(0) // prints "small"
 isInRange(99) // prints "not sure"
 isInRange(5) // prints "big"
 ```
*/
func isInRange(intvalue:Int) {
    switch intvalue {
    case 0...3:
        print("small")
    case 4...6:
        print("medium")
    case 7...10:
        print("large")
    default:
        print("not sure")
    }
}

isInRange(intvalue:0) // prints "small"
isInRange(intvalue:99) // prints "not sure"
isInRange(intvalue:5) // prints "medium"




//: Here is a [link](https://github.com/learn-co-curriculum/swift-switchLab-lab/blob/solution/MyPlayground.playground/Pages/main.xcplaygroundpage/Contents.swift) to the solution.
