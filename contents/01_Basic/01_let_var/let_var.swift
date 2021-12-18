/* 변수와 상수 */

import Swift

//MARK: 변수, 상수의 선언
/*
    변수의 선원 키워드 var
    var [변수명] : [데이터 타입] = [값]*
    
    상수의 선원 키워드 let
    let [상수명] : [데이터 타입] = [값]*

    값이 타입이 명확하다면 타입은 생략 가능
    타입 추론은 스위프트에 많이 익숙해졌을 때 사용하길 권합니다.
*/

let constant: String = "차후에 변경이 불가능한 상수 let"
var variable: String = "차후에 변경이 가능한 변수 var"

variable = "변수는 이렇게 차후에 다른 값을 할당할 수 있지만"
// constant = "상수는 차후에 값을 변경할 수 없습니다" // 오류발생

// 상수 선언 후에 나중에 값 할당하기
// 나중에 할당하려고 하는 상수나 변수는 타입을 꼭 명시해주어야 합니다
let sum: Int

let inputA: Int = 100
let inputB: Int = 200

// 선언 후 첫 할당
sum = inputA + inputB

// sum = 1 // 그 이후에는 다시 값을 바꿀 수 없습니다, 오류발생

// 변수도 물론 차후에 할당하는 것이 가능합니다
var nickName: String

nickName = "willer"

// 변수는 차후에 다시 다른 값을 할당해도 문제가 없지요
nickName = "윌러"