// 12. 클래스와 구조체
// 클래스는 class 로 정의하고, 구조체는 struct 로 정의한다.

class Dog {
    var name: String?
    var age: Int?
    
    func simpleDescription() -> String {
        if let name = self.name {
            return "🐶 \(name)"
        } else {
            return "🐶 No Name"
        }
    }
}

struct Coffee {
    var name: String?
    var size: String?
    
    func simpleDescription() -> String {
        if let name = self.name {
            return "🥤 \(name)"
        } else {
            return "🥤 No Name"
        }
    }
}

var myDog = Dog()
myDog.name = "도지"
myDog.age = 1
print(myDog.simpleDescription())

var myCoffee = Coffee()
myCoffee.name = "아메리카노"
myCoffee.size = "Venti"
print(myCoffee.simpleDescription())

//클래스는 상속이 가능하나 구조체는 불가능
class Animal {
    let numberOfLegs = 4
}

class Dog1: Animal {
    var name: String?
    var age: Int?
}

var myDog1 = Dog1()
print(myDog1.numberOfLegs)

//클래스는 참조(Reference), 구조체는 복사(Copy)
var dog2 = Dog1()
var dog3 = dog2
dog2.name = "팔백이"
print(dog3.name)

var coffee1 = Coffee()
var coffee2 = coffee1
coffee1.name = "아메리카노"
coffee2.name



// 13. 생성자 (Initializer)
// 생성자에서는 속성의 초기값을 지정할 수 있다.
// deinit 은 메모리에서 해제된 직후에 호출

class Doggie {
    var name: String?
    var age: Int?
    
    init() {
        self.age = 0 // 초기값 지정
    }
    
    struct Cafe {
        var name: String?
        var size: String?
        
        init() {
            self.size = "Tall" // 초기값 지정
        }
    }
}

// 14. 속성 (Properties)
// 속성은 값을 가지는 속성 (Stored Property) 와 계산되는 속성 (Computed Property) 로 나뉜다.
// 값 자체를 가지고 있는 속성과 어떠한 연산을 수행한 뒤 그 결과를 반환하는 차이를 가진다.
// 기본적으로 정의하고 사용한 속성들을 Stored Property, Computed Property 는 get, set 으로 정의한다.
// set 에서는 새로 설정될 값을 newValue 라는 예약어를 통해 접근 가능하다.

struct Hex {
    var decimal: Int?
    var hexString: String? {
        get {
            if let decimal = self.decimal {
                return String(decimal, radix: 16)
            } else {
                return nil
            }
        }
        
        set {
            if let newValue = newValue {
                self.decimal = Int(newValue, radix: 16)
            } else {
                self.decimal = nil
            }
        }
    }
}

var hex = Hex()
hex.decimal = 10
hex.hexString // "a"

hex.hexString = "b"
hex.decimal
// hexString 은 Computed Property 이며, 실제 값을 가지고 있지 않지만 Stored Property 인 decimal 로부터 값을 받아와 16진수 문자열로 만들어서 반환한다.

// get 만 정의할 경우에는 get 키워드를 생략 할 수 있다. 이러한 Property 을 읽기 전용이라고 한다.
// get, set 과 비슷한 willSet, didset 을 이용하면 Property 에 값이 지정되기 직전과 직후에 원하는 코드를 실행할 수 있다.

// willset 에서는 새로운 값을 newValue 로 얻어올 수 있고, didSet 에서는 예전 값을 oldValue 라는 예약어를 통해 받을 수 있다.
// willset 과 didSet 은 일반적으로 어떤 속성의 값이 바뀌었을 때 UI를 업데이트하거나 특정 메서드를 호출하는 등의 역할을 할 때 사용한다.

