/*
import Foundation

var command = readLine()!
var massive = [Int]()


while command != "exit"{
    if command == "size" { print(massive.count)}
    else if command == "clear" { massive.removeAll(); print("ok")}
    else if command == "back" { if massive.count == 0 {print("error")}else {print(massive[massive.count-1])}}
    else if command == "pop" { if massive.count == 0 {print("error")}else {print(massive[massive.count-1]); massive.remove(at: massive.count-1)}}
    else {let num = Int(command.split(separator: " ")[1]); massive.append(num!);print("ok")}
    command = readLine()!
}
print("bye")
*/
