let N = Int(readLine()!)!
//print("N: \(N)")

let goal = readLine()!
//print("goal: \(goal)")
var goalArray: [String] = []
for g in goal.characters {
    if g == " " {
        continue
    }
    goalArray.append(String(g))
}
//print("goalArray: \(goalArray)")



let S = Int(readLine()!)!
//print("S: \(S)")

var magicArrays: [[String]] = []
while let magic = readLine() {
    if magic == "" {
        break
    }
    var magicArray: [String] = []
    for m in magic.characters {
        if m == " " {
            continue
        }
        magicArray.append(String(m))
    }
    magicArrays.append(magicArray)
}
//print("magicArrays: \(magicArrays)")

var array: [String] = (0..<N).map{ String($0) }
var ikasamaArrays: [[Int]] = []
for sArray in magicArrays {
    var ikasamaArray: [Int] = []
    for num in array {
        for i in 0..<N {
            if sArray[i] == num {
                ikasamaArray.append(i)
            }
        }
    }
     ikasamaArrays.append(ikasamaArray)
}
//print("ikasamaArrays: \(ikasamaArrays)")

var newArrays: [[String]] = []
for ikasama in ikasamaArrays {
    var newArray: [String] = (0..<N).map{ String($0) }
    var count = 0
    for i in ikasama {
        newArray[i] = array[count]
        count += 1
    }
    if newArray == goalArray{
//        print("GET: \(newArray)")
    } else {
        newArrays.append(newArray)
    }
}
var g = 1
//print("newArrays: \(newArrays)")
var flag = false
while flag == false {
g += 1
for array in newArrays {
    for ikasama in ikasamaArrays {
        var newArray: [String] = (0..<N).map{ String($0) }
        var count = 0
        for i in ikasama {
            newArray[i] = array[count]
            count += 1
        }
        if newArray == goalArray {
//            print("GET: \(newArray)")
//            print("newArrayssssss: \(newArrays)")
            flag = true
        } else {
            newArrays.append(newArray)
        }
    }
}
    if g == 100{
        print(-1)
    }
}

print(g)
