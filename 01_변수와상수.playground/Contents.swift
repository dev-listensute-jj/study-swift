// 1. 변수와 상수
// 변수는 값 수정 가능, 상수는 값 수정 불가능
// 변수는 var로 선언, 상수는 let으로 선언

//var name = "JaeJin Lee"
//let birthyear = 1996
//
//name = "이재진"

// let 키워드로 선언된 상수는 값을 변경할 수 없음, 수정할 필요 없는 값을 상수로 수정하면 편리
//birthyear = 2000 // Error !

// Swift = 정적 타이핑 언어 => 변수나 상수 정의시 그 타입이 어떤 것인지 명시 필요
var name: String = "JaeJin Lee"
let birthyear: Int = 1996
var height: Float = 188.2

// : String, : Int => Type Annotation

// 다른 언어와는 다르게 타입을 일원화하지 않으면 연산 불가 !
//birthyear + height // Error !

Float(birthyear) + height // Correct ! // Ex 1, Float로 일원화
String(birthyear) + "년에 태어난 " + name + " 입니다." // Ex 2, String으로 일원화

// 2. 타입 추론 (Type Inference)
// "" 로 감싸진 텍스트는 String 으로 간주, 숫자는 Int 로 간주

// 3. 배열과 딕셔너리
// 배열과 딕셔너리는 대괄호 [] 로 정의

var languages = ["Swift", "Objective-C", "Python", "Flutter"] // 배열 Ex
var capitals = [
    "한국": "서울",
    "일본": "도쿄",
    "미국": "워싱턴 D.C",
] // 딕셔너리 Ex

// 배열과 딕셔너리 값에 접근 시에도 대괄호 사용
languages[0] // 조회
languages[1] = "Ruby" // 변경

capitals["한국"] // 조회
capitals["중국"] = "베이징" // 삽입

languages
capitals

// 다른 상수와 마찬가지로 배열과 딕셔너리를 let(상수)으로 정의시 수정 불가능(삽입, 삭제 포함)
// 배열과 딕셔너리의 타입 정의 시에도 대괄호 사용

var language: [String] = ["Swift", "Kotlin", "Flutter", "React Native"]
var capital: [String: String] = [
    "프랑스" : "파리",
    "영국" : "런던",
    "독일" : "베를린",
]

// 빈 배열, 빈 딕셔너리 정의
var empty_array: [String] = []
var empty_dic: [String: String] = [:]

// 더 간단한 정의 by 생성자 호출
var empty_array1 = [String]()
var empty_dic1 = [String: String]()

