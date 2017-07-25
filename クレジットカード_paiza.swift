import Foundation
//n　　　#入力されるクレジットカードの総数
let n = readLine()!

var cards:[String] = []
while var line = readLine() {
    if line == ""{
        break
    }
    cards.append(line)
//    print(cards)

}

for card in cards {
    var oddSum = 0
    var evenSum = 0

    // 奇数 ==============================
    // 奇数をintの配列としてoddArrayに詰め込む
    var oddArray:[Int] = []
    var oddFlag = false
    for odd in card.characters {
        let oddString = String(odd)
        if oddString == "X" {
            continue
        }
        if oddFlag == true {
        oddArray.append(Int(oddString)!)
        oddFlag = false
        continue
        }
        oddFlag = true
    }
//    print("oddArray: \(oddArray)")
    // 奇数の合計
    for num in oddArray {
        oddSum += num
    }
//    print("oddSum:  \(oddSum)")
    // =======================================

    //　偶数
    // 偶数をintの配列としてevenArrayに詰め込む
    var evenArray: [Int] = []
    var evenFlag = true
    for even in card.characters {
        if evenFlag == true {
            evenArray.append(Int(String(even))!)
            evenFlag = false
            continue
        }
        evenFlag = true
    }
//    print("evenArray\(evenArray)")
    // 2倍したあと2桁の数字になるものは、1の位と10の位の数を足して1桁の数字にしたあと、総和をとる
    // 2倍する
    var evenArray2 = evenArray.map{ $0 * 2}
//    print("evenArry2: \(evenArray2)")
    for even in evenArray2 {
        // ２桁の偶数
        if even >= 10 {
            // 2桁になるもの新しい数
//            print("2桁のeven:   \(even)")
            var even2 = 0
            var evenString = String(even)
            //　1の位と10の位の数を足す
            for evenChar in evenString.characters {
                even2 += Int(String(evenChar))!
            }
//            print("1の位と10の位のわ: \(even2)")
            evenSum += even2
        } else {
        // １桁の偶数
//        print("1桁の偶数: \(even)")
        evenSum += even
        }
    }
//    print(evenSum)
//    print(oddSum)
    // even + odd が　10で割り切れるときのXを出力
    var sumBeforeX = String(evenSum + oddSum)
    // 合計数をString型配列で入れる
    var numArray: [String] = []
    for num in sumBeforeX.characters {
        numArray.append(String(num))
    }
    // 合計値の最後の数
    var lastNum = Int(numArray.removeLast())
//    print(lastNum)
    var X = 10 - lastNum!
    if X != 10 {
        print(X)
    } else {
        print(0)
    }
}
