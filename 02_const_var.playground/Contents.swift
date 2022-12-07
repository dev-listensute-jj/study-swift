// 변수, 상수

import Swift

// 변수, 상수 선언
// 변수 선언 : var => let 이름: 타입 = 값
// 상수 선언 : let => var 이름: 타입 = 값

// 값의 타입이 명확하다면 타입은 생략 가능
// var 이름 = 값
// let 이름 = 값

let constant: String = "차후에 변경이 불가능한 상수 let"
var variable: String = "차후에 변경이 가능한 변수 var"

variable = "변수는 이렇게 다른 값을 할당 할 수 있다."
//constant = "상수는 이렇게 다른 값을 할당 할 수 없다!" //Error Occured

// 상수 선언 후 후에 값 할당하기
// 나중에 할당하려고 하는 상수나 변수는 타입을 꼭 명시해야한다.
let sum: Int
let inputA: Int = 100
let inputB: Int = 200

// 선언 후 첫 할당
sum = inputA + inputB

// 두번째 할당 <Error Occured>
//sum = 1

// 변수도 물론 차후에 할당하는 것이 가능하다.
var nickName: String

nickName = "Julian"

print(nickName)

nickName = "Kadala"

print(nickName)
