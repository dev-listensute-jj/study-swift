// 기본 데이터 타입

import UIKit

// Swift 의 기본 데이터 타입
// Bool, Int, UInt, Float, Double, character, String

// 1. Bool
var someBool: Bool = true
someBool = false
//someBool = 0 // Error !

// 2. Int 음의 정수 ~ 양의 정수 표현
var someInt: Int = -100
//someInt = 100.1 // Error !

// 3. UInt 양의 정수만 표현가능
var someUInt: UInt = 100
//someUInt = -100 // Error !
//someUInt = SomeInt // Error !

// 4. Float 소수점 이하 6 자리까지 표현 가능
var someFloat: Float = 3.14
someFloat = 3

// 5. Double 소수점 이하 15 자리까지 표현 가능
var someDouble: Double = 3.14
someDouble = 3
//someDouble = someFloat // Error !

// 6. Character
var someCharacter: Character = "😱"
//someCharacter = "😀"
