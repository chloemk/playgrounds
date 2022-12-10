import UIKit

var isDarkMode : Bool = true

if isDarkMode == true {
    print("다크모드 입니다")
} else {
    print("다크모드가 아닙니다")
}

if isDarkMode {
    print("다크모드 입니다")
}

if !isDarkMode {
    print("다크모드가 아닙니다")
}

if (isDarkMode != true) {
    print("다크모드가 아닙니다")
}

var title : String = isDarkMode ? "다크모드" : "다크모드가 아니다"

print("title: \(title)")

// Collection : 데이터를 모아둔 것
// 배열, 셋, 딕셔너리
var arr : [Int] = [0, 1, 2, 3, 4]

// 반복문
for item in arr where item > 2 {
    print("2보다 큰수만 프린트 => \(item)")
}

for item in arr where item % 2 == 0 {
    print("짝수만 프린트 => \(item)")
}

for item in arr where item % 2 != 0 {
    print("홀수만 프린트 => \(item)")
}

// Enum 타입을 나누는 것
enum School {
    case primary
    case middle
    case high
}

enum School2 {
    case elementary, middle, high
}

// 값 변경 가능
var mySchool = School2.elementary

// 상수. 값 변경 불가
let yourSchool = School.high
print("yourSchool => \(yourSchool)")
print("yourSchool => ", yourSchool)


enum Grade : String {
    case a = "A"
    case b = "B"
    case c = "C"
    case d = "D"
    case f = "F"
}

let yourGrade = Grade.a.rawValue
print("yourGrade => ", yourGrade)

enum SchoolDetail {
    case elementary(name: String)
    case middle(name: String)
    
    func getName() -> String {
        switch self {
        case .elementary(let name):
            return name
        case let .middle(name):
            return name
        }
    }
}

let yourMiddleSchoolName = SchoolDetail.middle(name: "남산중학교")
print("yourMiddleSchoolName => ", yourMiddleSchoolName)
print("yourMiddleSchoolNameFunc => : \(yourMiddleSchoolName.getName())" )


// range 0 ~5
for i in 0...5 {
    print("index => \(i)")
}

for i in 0..<5 where i % 2 == 0{
    print("짝수 index: \(i)")
}

var randomInts: [Int] = []

var randomInts2: [Int] = [Int]()

// index를 사용하지 않을 경우
for _ in 0..<25 {
    let randomNum = Int.random(in: 0...100)
    randomInts.append(randomNum)
}

print("randomInts: \(randomInts)")

// optional -> 값이 있는지 없는지 모른다.
var someVar : Int? = nil

if someVar == nil {
    someVar = 90
}

print("someVar unwarpping 하기 전 \(String(describing: someVar))")

// unwraping -> wrap 즉, 감싸져있는 것을 벗기는 것
// Optional 이라고 감싸져 있는 것을 벗겨주는 것

// someVar이 값이 있다면, otherVar에 넣어서 쓴다는 뜻
// if let 문법은 someVar에 값이 없다면 else 부분을 타서 들어간다.
if let otherVar = someVar {
    print("unwraping! 값이 있다 \(otherVar)")
} else {
    print("값이 없음")
}

// property observer
var yourAge = 0 {
    willSet{
        print("값이 설정될 예정 willSet -> \(yourAge)")
    }
    
    didSet{
        print("값이 설정된 후 didSet -> \(yourAge)")
    }
}

yourAge = 10
yourAge = 20


// named parameter
func myFunction(name: String) -> String{
    return "안녕하세요! \(name) 입니다~"
}

myFunction(name: "chloemk")

// named parameter with different name
func myFunction2(fakeName name: String) -> String {
    return "안녕하세요 제 이름은 \(name) 입니다!!"
}

myFunction2(fakeName: "fakechloe")

// call func without named parameter
func myFunction3(_ name: String) -> String{
    return "이름은 \(name) 입니다"
}

myFunction3("anotherChloe")
