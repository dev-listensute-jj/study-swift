//print, dump

import SwiftUI

class Person {
    var name: String = "Julian"
    var age: Int = 27
}

let age: Int = 27

let Julian: Person = Person()

"Hi ! I am \(age)"
"Hi ! I am \(age - 10)"
print("Hi ! I am \(age) !")
print("Hi ! I am \(age - 7) !")

print("-----------------------")

print(Julian)

print("-----------------------")

dump(Julian)
