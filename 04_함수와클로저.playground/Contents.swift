// 10. 함수와 클로저
// 함수는 func 키워드를 사용, -> 를 사용해 함수의 반환 타입을 지정

func hello(name: String, time: Int) -> String {
    var string = ""
    for _ in 0..<time {
        string += "\(name) 님 안녕하세요 !\n"
    }
    return string
}

hello(name: "이재진", time: 1)

// 함수에서 정의한 변수와 변수를 다르게 하고 싶을때
func hello1(to name: String, laps time: Int) {
    for _ in 0..<time {
        print(name)
    }
}

hello1(to: "이재진", laps: 1)

// 파라미터 이름을 _ 로 생략하는 법
func hello2(_ name: String, laps time: Int) {
    for _ in 0..<time {
        print(name)
    }
}

hello2("이재진 씨", laps: 1)

// 파라미터에 기본 값을 지정, 호출 시 생략하는 법
func hello3(name: String, time: Int = 1) {
    for _ in 0..<time {
        print(name)
    }
}

hello3(name: "이재진 님")

// ... 를 사용해 개수가 정해지지 않은 파라미터 (Variadic Parameters) 를 받는 법
func sum(_ numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}

sum(1, 2)
sum(3, 4, 5)

// 함수 안에 다른 함수를 작성하는 법
func hello4(name: String, time: Int) {
    func message(name: String) -> String {
        return "\(name) 님 안녕하세요 !"
    }
    
    for _ in 0..<time {
        print(message(name: name))
    }
}

hello4(name: "이재진", time: 1)

// 함수 안에 정의한 함수 반환하는 법
// (String) => String : '문자열을 받아서 문자열을 반환하는 함수' 를 표기한 것
func helloGenerator(message: String) -> (String) -> String {
    func hello5(name: String) -> String {
        return name + message
    }
    return hello5
}

let hello5 = helloGenerator(message: "씨 안녕하세요!")
hello5("이재진")



// 11. 클로저 (Closure)
// 클로저는 중괄호 { } 로 감싸는 '실행 가능한 코드 블럭' 이다.

// 클로저를 사용해 helloGenerator 코드를 간단하게 표헌
let hello6: (String, String) -> String = { $1 + $0 + "씨 안녕하세요!"}
hello6("재진", "이")

// 클로저를 변수처럼 정의
let hello7: (String, String) -> String = { $1 + $0 + "님 안녕하세요!"}
hello7("재진", "이")
