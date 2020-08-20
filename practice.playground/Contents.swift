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

/*
 クロージャ
 参考：https://qiita.com/funacchi/items/9be7653cf8d002bac4ec
 自分を囲むスコープにある変数を参照する関数。
 Swiftは第一級関数をもつ言語で、関数そのものを型に指定できたり、関数をインスタンス化できたりする。
 関数に名前がない無名関数としても定義することができる。
 変数や引数に関数の中身を直接代入できるため、グローバル変数の宣言をなるべく減らしたい場合や関数の実行結果を次の処理で続けて使用する関数を作成したい場合に使用する。
 */

/*
 定義：
 { (引数名:引数の型) -> 戻り値の型 in
    処理
 }
 */

// 引数と戻り値のないクロージャ
let closure1 = { () -> Void in print("クロージャテスト") }
closure1()

// 戻り値がVoidであれば以下のようにも書ける
let closure2 = { () -> () in print("クロージャテスト2") }
closure2()

// 引数と戻り値の型は推論が効くため、省略が可能
let closure3 = { print("クロージャテスト3") }
closure3()

// 引数あり、戻り値なしのクロージャ
let closure4 = { (n1: Int, n2: Int) -> Void in print(n1 + n2) }
closure4(1, 2)

// 引数なし、戻り値ありのクロージャ
let closure5 = { () -> Int in return 100 }
closure5()

// 引数あり、戻り値ありのクロージャ
let closure6 = { (n1: Int, n2: Int) -> Int in return n1 + n2 }
closure6(1, 2)

// 処理がた単文の場合return省略可
// 省略なしの場合
// let closure = { (n1: Int, n2: Int) -> Int in return n1 + n2 }
let closure7 = { (n1: Int, n2: Int) -> Int in n1 + n2 }
print(closure7(5, 10))

// 処理が単文の場合戻り値の型のし省略可
// 省略なしの場合
// let closure = { (n1: Int, n2: Int) -> Int in return n1 + n2 }
let closure8 = { (n1: Int, n2: Int) in n1 + n2 }
print(closure8(5, 10))

// 型が分かっている場合は省略可
// 変数宣言
let closure9: (Int, Int) -> Int
// 変数クロージャを代入
closure9 = { (n1, n2) in n1 + n2 }
// クロージャ実行
print(closure9(10, 10))

//引数名にこだわりがなければ引数名の省略が可
let closure10: (Int, Int) -> Int
/*
 変数にクロージャを代入
 クロージャは自動的に名前がつけられる
 第1引数は$0,第2引数は$1となる
 これを使用すると、引数の定義は不要であり、またinも不要となる
 */
closure10 = { $0 + $1 }
// クロージャの実行
print(closure10(3, 6))
