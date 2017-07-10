//
//  main.swift
//  swiftKyoupro
//
//  Created by FNDM04 on 2017/06/23.
//  Copyright © 2017年 rei.yamaguchi. All rights reserved.
//

import Foundation

// 会員
var NM = Int(readLine()!)

var ivents:[[Int]] = [[]]

while var line = readLine()?.components(separatedBy: " ") {
    if line == [""] {
        break
    }
    var lineInt = line.map{ Int($0)! }
    ivents.append(lineInt)

}
ivents.remove(at: 0)
//print(ivents)

var iventsPlus:[[Int]] = [[]]
for ivent in ivents {
    var sum = 0
    for score in ivent {
        sum += score
    }
    if sum > 0 {
        iventsPlus.append(ivent)
    }
}
//print("iventPlus\(iventsPlus)")

// main
if iventsPlus.count == 0 {
    print(0)
} else {
    var inventsSum = 0
    for ivent in iventsPlus {
        for score in ivent {
            inventsSum += score
        }
    }
    print(inventsSum)
}
