//  main.swift
//  kyoupro
//
//  Created by FNDM04 on 2017/06/30.
//  Copyright © 2017年 rei.yamaguchi. All rights reserved.
//

import Foundation

let kst = readLine()!.components(separatedBy: " ")
let k = Int(kst[0])!
let s = Int(kst[1])!
let t = Int(kst[2])!
//print("k,s,t : \(k), \(s), \(t)")

var r = "ABC"
var rk = ["A", "", "B", "", "C"]
var rkString = ""
var count = 1

while count < k {
    count += 1
    rk = ["A", "", "B", "", "C"]
    rk[1] = r
    rk[3] = r

    // rkを文字列　rkStringに変換
    for str in rk {
        rkString.append(str)
    }
    r = rkString
    rkString = ""
//    print("k= \(count): \(r)")


}

var result = ""
var flag = 0
for str in r.characters {
    flag += 1
    if flag >= s && flag <= t {
        result.append(str)
    }
}
print("result: \(result)")


##　 10 3 29
