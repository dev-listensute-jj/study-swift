// 15. 튜플
// 튜플은 어떠한 값들의 묶음, 배열과 비슷하지만 배열과는 다르게 길이가 고정되어 있다.
// 값에 접근할때에는 . 를 사용한다.


var coffeeInfo = ("아메리카노", 5100)
coffeeInfo.0
coffeeInfo.1

// 튜플의 파라미터에 이름을 지어주는 방법
var namedCoffeeInfo = (coffee: "아메리카노", price: 5100)
namedCoffeeInfo.coffee
namedCoffeeInfo.price

// 튜플의 타입 어노테이션
//var coffeeInfo: (String, Int)
//var namedCoffeeInfo: (coffee: String, price: Int)

// 튜플의 여러 변수에 값을 지정하는 법
//let (coffee, price) = ("아메리카노", 5100)
//coffee
//price

// 튜플이 가진 값을 가지고 변수에 값을 지정할 때, 무시하고 싶은 값이 있다면 _ 를 사용한다.
let (_, latteSize, lattePrice) = ("라떼", "Tall", 6000)
latteSize
lattePrice

// 튜플을 반환하는 함수
// 커피 이름에 맞는 커피 가격 정보를 반환합니다. 일치하는 커피가 없다면 nil 반환
// parameter name: 커피 이름, returns: 커피 이름과 가격 정보를 반환

func coffeeInfo1(for name: String) -> (name: String, price: Int)? {
    let coffeeInfoList: [(name: String, price: Int)] = [
    ("아메리카노", 5100),
    ("카페라떼", 5600),
    ("바닐라라떼", 6000),
    ]
    
    for coffeeInfo in coffeeInfoList {
        if coffeeInfo.name == name {
            return coffeeInfo
        }
    }
    return nil
}

coffeeInfo1(for: "아메리카노")?.price
coffeeInfo1(for: "에스프레소")?.price

let(_, lattePrice1) = coffeeInfo1(for: "바닐라라떼")!
lattePrice1
