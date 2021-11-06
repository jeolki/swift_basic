/* 상속 */

/*
  1. 스위프트 상속
  - 상속은 클래스, 프로토콜 등에서 가능합니다.
  - 열거형, 구조체는 상속이 불가능합니다.
  - 스위프트의 클래스는 단일상속으로, 다중상속을 지원하지 않습니다.
  - 이번 파트에서는 클래스의 상속에 대해서 알아봅니다.
*/

/*
  2. 문법
class 이름: 상속받을 클래스 이름 {
    구현부
}
*/

/* 
  3. 사용
  - final 키워드를 사용하면 재정의(override)를 방지할 수 있습니다.
  - static 키워드를 사용해 타입 메서드를 만들면 재정의가 불가능 합니다.
  - class 키워드를 사용해 타입 메서드를 만들면 재정의가 가능합니다.
  - class 앞에 final을 붙이면 staitc 키워드를 사용한 것과 동일하게 동작합니다.
  - override 키워드를 사용해 부모 클래스의 메서드를 재정의 할 수 있습니다.
*/

import Swift

// 기반 클래스 Person
class Person {
    var name: String = ""

    func selfIntroduce() {
        print("저는 \(name)입니다")
    }

    // final 키워드를 사용하여 재정의를 방지할 수 있습니다.
    final func sayHello() {
        print("hello")
    }

    // 타입 메서드
    // 재정의 불가 타입 메서드 - static
    static func typeMethod() {
        print("type method - static")
    }

    // 재정의 가능 타입 메서드 - class
    class func classMethod() {
        print("type method - class")
    }

    // 재정의 가능한 class 메서드라도
    // final 키워드를 사용하면 재정의 할 수 없습니다.
    // 메서드 앞의 `static` 과 `final class`는 똑같은 역할을 합니다
    final class func finalClassMethod() {
        print("type method - final class")
    }
}

// Person을 상속받는 Student
class Student: Person {
  // ver name: String = ""  오류 발생
    var major: String = ""

    override func selfIntroduce() {
        print("저는 \(name)이고, 전공은 \(major)입니다.")
        // 부모클래스의 메서드를 호출하기 위해서는 super 사용
    }

    override class func classMethod() {
        print("overriden type method - class")
    }

    // static 을 사용한 타입 메서드는 재정의 할 수 없습니다.
    //override static func typeMethod() { }

    // final 키워드를 사용한 메서드, 프로퍼티는 재정의 할 수 없습니다.
    //override func sayHello() { }
    //override class func finalClassMethod() { }
}

/*
  4. 구동확인
*/

let willer: Person = Person()
let jeonggi: Student = Student()

willer.name = "willer"
jeonggi.name = "jeonggi"
jeonggi.major = "Swift"

willer.selfIntroduce()
// 저는 willer입니다.

jeonggi.selfIntroduce()
// 저는 jeonggi이고, 전공은 Swift입니다.

Person.classMethod()
// type method - class

Person.typeMethod()
// type method - static

Person.finalClassMethod()
// type method = final class

Student.classMethod()
// overriden type method - class

Student.typeMethod()
// type method - static

Student.finalClassMethod()
// type method - final class

