// 5. Optional (옵셔널)
// Swift가 가지고 있는 가장 큰 특징은 Optional (옵셔널), 값이 있을 수도 있고 없을 수도 있는 것을 나타냄
// "" 는 값이 없는게 아니라 '비어있는' 것, 값이 없는 값은 nil로 표현
// 값이 있는데 nil을 넣으려하면 에러 발생

//var name: String = "이재진"
//name = nil // Error !

// 값이 있을 수도, 없을 수도 있는 변수를 정의시에는 타입 어노테이션에 ? 를 붙인다. 이렇게 정의한 변수를 옵셔널이라고 한다.
// 옵셔널에 초기값을 지정하지 않는다면 기본 값은 nil

var email: String? // 초기값 없는 옵셔널 지정
print(email) // 옵셔널 초기값

email = "dev.listensute.jj@gmail.com" // 변수 지정
print(email) // 값이 지정된 옵셔널 값

// 옵셔널로 지정된 변수는 옵셔널로 지정되지 않은 변수와 다르다.

let optionalEmail: String? = "dev.listensute.jj@gmail.com"
//let requiredEmail: String = optionalEmail // Error !

// requiredEmail 은 옵셔널이 아니기 때문에 항상 값을 가지고 있어야함
// optionalEmail 은 옵셔널이기 때문에 코드 실행 전까지 값이 있는지 없는지 알 수 없음
// 그렇기에 옵셔널인 optionalEmail은 옵셔널이 아닌 requiredEmail에 일반적으로 대입될 수 없음



// 6. Optional Binding (옵셔널 바인딩)
// 옵셔널의 값을 가지고 오고 싶을때 사용하는 것
// 옵셔널 바인딩은 옵셔널 값이 존재하는지 검사하고, 존재한다면 값을 다른 변수에 대입 시킴
// if var, if let 을 사용
// 옵셔널 값이 있으면 if 문으로, 옵셔널 값이 없으면 nil로 판정하고 탈출

if let email = optionalEmail {
    print(email) // 옵셔널 값이 있다면 if 문 실행, 코드 실행 O
}
// 옵셔널 값이 없다면 if 문 탈출, 코드 실행 X

var optionalNames: String? = "이재진"
var optionalEmails: String? = "dev.listensute.jj@gmail.com"

if let name = optionalNames, let email = optionalEmails {
    print("옵셔널 이름은 \(name) 이고, 옵셔널 이메일은 \(email) 입니다.")
}

if let name = optionalNames {
    if let email = optionalEmails {
        print("옵셔널 이름은 \(name) 이고, 옵셔널 이메일은 \(email) 입니다.")
    }
} // 위 코드와 동일한 코드

// 옵셔널 바인딩시 ,를 사용하면 조건도 함께 지정 가능
// , 이후의 조건절은 옵셔널 바인딩 후에 실행, 옵셔널이 벗겨진 값을 가지고 조건을 검사

var optionalAge: Int? = 27

if let age = optionalAge, age >= 20 {
    print("성인입니다.")
} else {
    print("미성년자입니다.")
}

if let age = optionalAge {
    if age >= 20 {
        print("성인입니다.")
    } else {
        print("미성년자입니다.")
    }
} // 위 코드와 동일한 코드



// 7. 옵셔널 체이닝
// 옵셔널 속성에 접근할 때, 옵셔널 바인딩 과정을 ? 키워드로 줄여주는 역할

// 옵셔널 체이닝을 사용하지 않았을 때
let array: [String]? = []
var isEmptyArray = false

if let array = array, array.isEmpty {
    isEmptyArray = true
} else {
    isEmptyArray = false
}

isEmptyArray

// 옵셔널 체이닝을 사용했을 때
let isEmptyArrays = array?.isEmpty == true


// array?.isEmpty == true 일때

// array 가 nil 인 경우 => array? 까지 실행, nil 반환
// array 가 빈 경우 => array?.isEmpty 모두 실행, true 반환
// array 가 차있는 경우 => array?.isEmpty 모두 실행, false 반환
// isEmpty의 값은 Bool 이지만, 옵셔널 체이닝으로 인해 Bool? 을 반환한다. 따라서 값을 확인하려면 == 를 사용해야한다.



// 8. 옵셔널 벗기기
// 부득이한 경우, 값이 존재할 것임을 아는데도 불구하고 옵셔널로 사용해야하는 경우가 있다.
// 이때는 옵셔널에 값이 있다고 가정하고 값에 바로 접근 할 수 있는 키워드 ! 를 사용한다.
// 옵셔널 값이 nil 인 경우에 ! 를 사용할 수 없다. 이때는 런타임 에러가 발생한다.

print(optionalEmails)
print(optionalEmails!)



// 9. 암묵적으로 벗겨진 옵셔널 (Implicitly Unwrapped Optional)
// 옵셔널을 정의할때 ? 대신 ! 를 사용하면 암묵적으로 벗겨진 옵셔널로 정의됨
// 이렇게 정의를 하면 nil 값을 포함할 수 있는 옵셔널이 된다.
// 하지만 접근할 때 바인딩이나 벗기는 과정을 거치지 않고 바로 값에 접근할 수 있다.
// 옵셔널 벗기기와 동일하게 값이 없는데 접근을 시도하면 런타임 에러가 발생한다.

//var iuopemail: String! = "dev.listensute.jj@gmail.com"
//print(iuopemail)

//var erremail: String!
//print(erremail) // Runtime Error !

// Swift 3 부터는 암묵적으로 벗겨진 옵셔널과 일반적인 옵셔널을 동일하게 취급.
