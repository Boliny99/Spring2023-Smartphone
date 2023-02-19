import UIKit


var arr: [Int] = [1,2,3]
var emptyArray: [Int] = []

/*
 Data Types:
 Int 23
 Float 5.6
 Double 2.14
 Bool true/false
 Character 'a' 'B' '='
 String "happy !!"
 Array [1,2,3]
 */
let name: String = "north"
var age: Int16 = 21
print(Int16.max)

let helloString = "Hello \(name) welcome to class"
print(helloString)

var friends: [String] = []

friends.append("Tom")
friends.append("Bill")
friends.append("Martin")
print(friends.count)
print(friends.first)
print(friends.endIndex)
print(friends.remove(at: 0))
print(friends.first)

for friend in friends {
    print(friend)
}

for (index, friend) in friends.enumerated(){
    print("Friend name = \(friend) Index = \(index)")
}

// Sets

var foodItemsEmpty = Set<String>() //Empty

var foodItemsInitialized : Set<String> = ["Pizza", "Burger", "Salad"]

var foodItemInitializedInferred :Set = ["Pizza", "Burger", "Salad"]

foodItemsEmpty.insert("Pizza")
foodItemsEmpty.insert("Burger")
foodItemsEmpty.insert("Salad")


print(foodItemsEmpty.contains("Burger"))

for food in foodItemsEmpty.sorted() {
    print(food)
}

// Dictionary : HashTable

var countryDetailsEmpty : [String : String] = [:]

var countryDetailsInitialized : [String : String] = [
    "US" : "United States",
    "EN" : "England",
    "CA" : "Canada"

]

var countryDetailsInferred = [
    "US" : "United States",
    "EN" : "England",
    "CA" : "Canada"

]

print("\(countryDetailsInferred["CA"])")

countryDetailsInferred.removeValue(forKey: "EN")

countryDetailsInferred["CA"] = nil

for (countryCode, countryName) in countryDetailsInferred {
    print("Country Code = \(countryCode) Country Name = \(countryName)")
}


var i = 0
let endIndex = 5

while i < endIndex {
    print("I am here")
    i = i+1
}

if age < 40 {
    print("You are young")
} else {
    print("You are mature")
}

//Switch

let letter = "a"

switch letter {
case "a" :
    print("This is first letter")
case "z" :
    print("This is last letter")
default :
    print("This is some of the middle letter")
}


// Optional ?

var myName: String?

print(myName)


var myInt: Int?
myInt = 5
let multipliedBy5 = myInt! * 5
print(multipliedBy5)
//if let


func greet() {
    print("Hello World!")
}

greet()

func greetWithName(_ firstName : String, lastName : String) {
    print("Hello, \(firstName) \(lastName)!")
}

greetWithName("Bolin", lastName: "Yang")


func getFullName(_ firstName: String, _ lastName : String) -> String {
    return "Full Name: \(firstName) \(lastName)"
    
}

print(getFullName("Bolin", "Yang"))


var a = 5

func incrementByOne(_ a : inout Int) {
    a = a + 1
    
}
incrementByOne(&a)

print("Value of a inside function = \(a)")


// Structures

struct User {
    let firstName: String
    let lastName: String
    var age: Int
    
    func getFullName() -> String {
        return "\(firstName) \(lastName)"
    }
}

var bolin = User(firstName: "Bolin", lastName: "Yang", age: 24)
print(bolin.getFullName())


//Enums

enum IntEnum : Int {
    case one = 1
    case two
    case three
}


print(IntEnum.two.rawValue)

enum CityEnum : String {
    case DEL = "Delphi"
    case SEA = "Seattle"
    case PDX = "Portland"
}
print(CityEnum.PDX.rawValue)


class UserClass {
    let firstName: String
    let lastName: String
    var age: Int
    func getFullName() -> String {
        return "\(firstName), \(lastName)"
    }
    
    init(firstName : String, lastName : String, age : Int) {
        self.firstName = firstName;
        self.lastName = lastName;
        self.age = age;
    }
}

var billGates = UserClass(firstName: "Bill", lastName: "Gates", age: 60)

print(billGates.getFullName())
