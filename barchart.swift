import Foundation


let path = Bundle.main.path(forResource: "input", ofType: "txt")
var main = try! String(contentsOfFile: path!, encoding: .utf8)


var dict: [Character:Int] = [:]
var mval = 0

for elem in main{
    if elem == " " || elem == "\n" { continue }
    if (dict[elem] == nil) {
        dict[elem] = 1
        if mval < dict[elem]! { mval = dict[elem]!}
    }
    else {
        dict[elem]! += 1
        if mval < dict[elem]! { mval = dict[elem]!}
    }
}
let temp = dict.sorted(by: <)

if mval == 1{
    for _ in 0..<temp.count{
        print("#", separator: "", terminator: "")
    }
    print()
}else{

for j in (1...mval).reversed(){
    for i in 0..<temp.count{
        if temp[i].value >= j { print("#", separator: "", terminator: "") }
        else {print(" ", separator: "", terminator: "") }
    }
    print()
}
    
}
temp.forEach({print($0.key, separator: "", terminator: "")})

