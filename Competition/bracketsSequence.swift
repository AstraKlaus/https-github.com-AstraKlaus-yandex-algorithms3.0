/*
import Foundation

var stack = [Character]()

let line = readLine()!
var flag = true

for elem in line{
    if ["]","}",")"].contains(elem){
        if stack.isEmpty {print("no"); flag=false; break}
        else if elem == "]" && stack.last! == "[" { stack.removeLast() }
        else if elem == ")" && stack.last! == "(" { stack.removeLast() }
        else if elem == "}" && stack.last! == "{" { stack.removeLast() }
        else {stack.append(elem)}
    }else{
        stack.append(elem)
    }
}
if !stack.isEmpty { print("no")}
else if flag {print("yes")}
*/
