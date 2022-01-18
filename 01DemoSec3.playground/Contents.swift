import UIKit

var greeting = "Hello, playground"

print("HI",12,12.25) //Comma separated gives a space in the o/p

//String Interpolation
var name="Sai Kishore"
var grade=89.92

//Hello, Sai Kishore
print("Hello, \(name)")
print("Hello, \(name)! Your grade is \(grade)")

var proLan="Swift"
print("I like the \(proLan) Programmaing Language")
var age = 23
print("You are \(age) years old and in another \(age) years, you will be \(age * 2)")

print("""
Hello
World!
""")

// \r carriage return
print ("Hello All,\rWelcome to Swift programming")
print("Welcome to Swift Programming")
print("Fall 2021")
print("*************")
print("Welcome to Swift Programming" , terminator : "-" )
print("Fall 2021")

print("The list of numbers are ", terminator : "-----")
print(1,2,3,4,5,6)
print("The new pattern is", terminator : " ")
print(1,2,3,4,5,6, separator: " is to ")


var mobileBrand = "Apple"
mobileBrand = "Samsung"
print(mobileBrand)

let pi = 3.14
//pi=5.17
//Cannot assign to value: 'pi' is a 'let' constant
print(pi)

var aage : Int = 22
aage = aage * 3+14
print(aage)
 
var aweMessage = "This is Superb!"
//Print This is Superb!
print(aweMessage)
//Its a String beacuse its in Quotes
print("aweMessage")

var course1 = "iOS"
var course2 = "Java"
//o/p iOS Java
print(course1,course2)
//iOS - Java
print(course1,"-",course2)


print(10,20,30)
//Both Print same values instead of , we get Space as a o/p
print(12.5,15.5)

var httpError  = (errorCode : 404  , errorMessage : "Page Not Found")
//(errorCode : 404  , errorMessage : "Page Not Found")
print(httpError)

print(httpError.errorCode , terminator : ": ")
print(httpError.errorMessage )
// o/p 404: Page Not Found

var Fullname = ("John","Smith")
var fName = Fullname.0
var lName = Fullname.1
print(fName , terminator : ",")
print(lName)
//o/p Jhon, Smith in the same line bcz of terminator

var origin = (x : 0 , y : 0)
var point = origin
print(point)
//o/p same as origin (x : 0 , y : 0) we are assigning origin values to point

let city = (name : "Maryville" , population : 11,000)

let ( cityName ,cityPopulation ) = (city.0 , city.1)
print(cityName)
print(cityPopulation)

let groceries = ("bread","onions")
print(groceries.0)
print(groceries.1)
print(type(of: groceries))

var fname = "Joe"
var lname = "Root"
(fname , lname) = (lname , fname)
print("First Name is \(fname) and Last Name is \(lname)")

var cricketKit = ("handGloves" ,"helmet",("bat","ball"))
print(cricketKit.0)
print(cricketKit.1)
print(cricketKit.2.0)
print(cricketKit.2.1)


