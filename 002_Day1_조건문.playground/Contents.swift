// 4. 조건문과 반복문
// 조건 검사시에는 if, switch 사용

var age = 19
var student = ""

if age >= 8 && age < 14 {
    student = "초등학생"
} else if age < 17 {
    student = "중학생"
} else if age < 20 {
    student = "고등학생"
} else {
    student = "기타"
}

student

// Swift 에서는 타입 검사를 타이트하게 하기 때문에 if의 조건절에는 참, 거짓으로 명확하게 값이 판단되는 Bool 타입만을 사용해야한다.
// Swift 에서는 switch 구문으로 패턴 매칭이 가능하다.

// 위의 if 문을 switch 문으로 표현
var ages = 15
var students = ""

switch ages {
case 8..<14:
    students = "초등학생"
case 14..<17:
    students = "중학생"
case 17..<20:
    students = "고등학생"
default:
    students = "기타"
}

var languages = ["Swift", "Dart", "Python", "Flutter"] // 배열 Ex
var capitals = [
    "한국": "서울",
    "일본": "도쿄",
    "미국": "워싱턴 D.C",
]

// 반복 연산시에는 for, while 사용
for language in languages {
    print("저는 \(language) 언어를 다룰 수 있습니다.")
}

for (country, capital) in capitals {
    print("\(country)의 수도는 \(capital) 입니다.")
}

// 단순 반복, 범위 지정
for i in 0..<100 {
    i
}

// i 를 사용하지 않고 단순 반복 _ 사용
for _ in 0..<10 {
    print("Hello !")
}

// while 구문은 조건문 값이 true 일때까지 반복
var a = 0

while a < 100 {
    a += 1
}

