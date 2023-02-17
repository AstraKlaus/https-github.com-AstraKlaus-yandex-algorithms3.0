/*
import Foundation

let main = Array(readLine()!)

var dict: [Character:Int] = [:]

var size = main.count
let srznach = size/2

var massive: [Int] = []


if main.count%2 != 0{
    massive.append(1)
    for i in 2...srznach {
        massive.append((i*2)-1 + massive[i-2])
    }
    dict[main[srznach]] = main.count + massive[srznach-1]
    var temp = 0
    var counter = -1
    var l = srznach
    var r = srznach
    while l != 0{
        counter+=1
        let diff = massive[counter]
        l-=1
        r+=1
        
        if main[srznach] == main[l]{
            temp += dict[main[srznach]]! - diff
        }else{
            if (dict[main[l]] == nil) {
                dict[main[l]] = dict[main[srznach]]! - diff
            }else {
                dict[main[l]]! += dict[main[srznach]]! - diff
            }
        }
        
        if main[srznach] == main[r]{
            temp += dict[main[srznach]]! - diff
        }else{
            if (dict[main[r]] == nil) {
                dict[main[r]] = dict[main[srznach]]! - diff
            }else {
                dict[main[r]]! += dict[main[srznach]]! - diff
            }
        }
    }
    dict[main[srznach]]! += temp
}else{
    var temp1 = 0
    var temp2 = 0
    massive.append(2)
    for i in 2...srznach {
        massive.append((i*2) + massive[i-2])
    }
    dict[main[srznach]] = massive[srznach-1]
    if main[srznach] == main[srznach-1]{temp1 += massive[srznach-1]
    }else{dict[main[srznach-1]] = massive[srznach-1]}
    var counter = -1
    var l = srznach-1
    var r = srznach
    while l != 0{
        counter+=1
        let diff = massive[counter] //massive[...counter]
        l-=1
        r+=1
        
        if main[srznach] == main[r] && main[srznach-1] == main[l] && main[srznach-1] == main[srznach]{
            temp1 += dict[main[srznach-1]]! - diff
            temp2 += dict[main[srznach]]! - diff
        }else{
            
            if main[srznach] == main[l] || main[srznach-1] == main[l]{
                if main[srznach] == main[l]{ temp2 += dict[main[srznach]]! - diff }
                else if main[srznach-1] == main[l]{ temp1 += dict[main[srznach-1]]! - diff }
            }else{
                if (dict[main[l]] == nil) {
                    dict[main[l]] = dict[main[srznach-1]]! - diff
                }else {
                    dict[main[l]]! += dict[main[srznach-1]]! - diff
                }
            }
            
            if main[srznach] == main[r] || main[srznach-1] == main[r]{
                if main[srznach] == main[r]{temp2 += dict[main[srznach]]! - diff}
                else if main[srznach-1] == main[r]{temp1 += dict[main[srznach-1]]! - diff}
            }else{
                if (dict[main[r]] == nil) {
                    dict[main[r]] = dict[main[srznach]]! - diff
                }else {
                    dict[main[r]]! += dict[main[srznach]]! - diff
                }
            }
        }
    }
    dict[main[srznach]]! += temp2
    dict[main[srznach-1]]! += temp1
    
}

var temping = dict.sorted(by: <)
temping.forEach({print($0.key ,": ", $0.value, separator: "")})

print()
dict = [:]

var counterStart = 0
var counterEnd = size
while size != 0{
    counterStart = 0
    counterEnd = size
    while counterEnd <= main.count{
        let startIndex = main.index(main.startIndex, offsetBy: counterStart)
        let endIndex = main.index(main.startIndex, offsetBy: counterEnd)
        for elem in main[startIndex..<endIndex]{
            if elem == " " || elem == "\n" { continue }
            if (dict[elem] == nil) {
                dict[elem] = 1
            }
            else {
                dict[elem]! += 1
            }
        }
        counterStart+=1
        counterEnd+=1
    }
    size -= 1
}



let temp = dict.sorted(by: <)

temp.forEach({print($0.key ,": ", $0.value, separator: "")})

*/
