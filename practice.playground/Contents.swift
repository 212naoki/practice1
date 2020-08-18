import UIKit

// 参考サイト
// https://employment.en-japan.com/engineerhub/entry/2017/05/25/110000
// https://qiita.com/Howasuto/items/eba4cb4b6d3e6bde0a17

// 変数定義

var str = "Hello, playground"

let immstr = "hello"
var mutstr = "hello"
mutstr += " world"

let label = "This year is "
let year = 2017
let ThisYear = label + String(year)
print(ThisYear)

let NextYear = "Next year is \(year + 1)"
print(NextYear)

// 配列定義(array型)

var array = ["foo", "bar", "baz"]
var Array: [String] = ["foo", "bar", "baz"]

 /*
 ディクショナリの定義
 ディクショナリ(Dictionary型)
 ["キー": "値"]
 */

var dic = [
    "foo": "FOO",
    "bar": "BAR",
    "baz": "BAZ"
]

// 制御構造
// for, if-else

let list = [1, 2, 3, 4, 5, 6]

for num in list{
    
    if num % 2 == 0{
        
        print("number \(num) is even.")
        
    }else{
    
        print("number \(num) is odd.")
        
    }
}

// while

var number = 1

while number < 10 {
    print(number)
    number += 1
}

// switch-case

let age = 17

switch age {
    
case 0...6:
    print("kindergarden kid")
    
case 7...12:
    print("primary school student")
    
case 13...15:
    print("junior high school student")
    
case 16...18:
    print("high school student")
    
case 19...22:
    print("junior high school student")
    
default:
    print("business person")
}

/*
 関数(メソッド)定義
 
 func 関数名(引数1: 引数1の型, 引数2: 引数2の型, ...) -> 返り値の型{
 }
 
 呼び出し
 (引数ラベル: 引数の値)
 */

func greet(expression: String, person: String) -> String{
    return "\(expression) \(person)"
}

greet(expression: "Hello", person: "Mike")

/*
 引数ラベルを明示する場合、アンダースコアを使うと関数呼び出し時に名前付きラベルを省略できる
 */

func greet2(_ expression: String, to person: String) -> String{
    return "\(expression) \(person)"
}

greet2("Hello", to: "Mike")

// クロージャ
