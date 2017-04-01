//: Playground - noun: a place where people can play

import UIKit

// Problem 1 -  문자열의 모든 문자의 아스키 코드 값 합 구하기

var test:String = "  ab  cd  ef gh  "
/*
 var result:Int = 0;
 
 // sum of ascii
 for i in 0..<test.characters.count
 {
 result += Int((String(test[test.index(test.startIndex, offsetBy: i, limitedBy: test.endIndex)!]).unicodeScalars.first?.value)!)
 }
 print("\(result)")
 */
var reInt = test.utf8.map{Int($0)}.reduce(0, +)
print(reInt)
/*******************************************************************************************************************/
// Problem 2 -  문자열의 모든 공백 제거
/*
 var str:String = ""
 for i in 0..<test.characters.count
 {
 if( String(test[test.index(test.startIndex, offsetBy: i, limitedBy: test.endIndex)!]) != " " )
 {
 str += String(test[test.index(test.startIndex, offsetBy: i, limitedBy: test.endIndex)!])
 }
 }
 print("str==","\(str)")
 */
var retest = test.utf8.map{Int($0)}.filter{ (x) -> Bool in return x != 32}.map({Character(UnicodeScalar($0)!)}).reduce(""){Str, str in Str + String(str)}
print(retest)

/*
 var tt = Array(repeating:0, count:test.characters.count).reduce("") { result, i in result + String(test[test.index(test.startIndex, offsetBy: i, limitedBy: test.endIndex)!]) }
 print("tt==","\(tt)")
 */
/*******************************************************************************************************************/
// Problem 3 - 0에서 25 사이로만 이뤄진 문자열을 [0 ~ 25] -> [a ~ z] 변환해서 문자열로 만들기
/*
 var a2z = "abcdefghijklmnopqrstuvwxyz"
 
 var int2ch:[Int:Character]=[:]
 
 var i = 0
 for ch in a2z.characters{
 int2ch[i] = ch
 i += 1
 }
 */
var intarr = [2,3,1,0]
/*
 var str2 = ""
 for i in intarr{
 str2 += String(int2ch[i]!)
 }
 
 print("str2==","\(str2)")
 */

var st = intarr.map({Character(UnicodeScalar($0+97)!)}).reduce(""){Str, str in Str + String(str)}
print(st)
/*******************************************************************************************************************/
// Problem 4 - 숫자 중 최대값 구하기

// var intarr = [2,3,1,0]
/*
 var ret = intarr[0]
 for i in intarr{
 ret = ret < i ? i : ret
 }
 
 print("\(ret)")
 
 */
var maxInt = intarr.sorted(by: { s1, s2 in return s1 > s2 })
print(maxInt[0])
/*******************************************************************************************************************/
// Problem 5 - 1 ~ 10 사이 홀수들의 제곱의 합 구하기

let array = [1, 3, 5, 7, 9]
/*
 var prod = 0
 
 for item in array{
 prod += item * item
 }
 */
var powsum = array.map({$0 * $0}).reduce(0, +)
print(powsum)