import Foundation

func cordination(r1:Int, c1:Int,r2:Int, c2:Int) -> Int{
    if r1 == 0 && c1 == 0{return sumArray[r2][c2]}
    else if c1 == 0{ return sumArray[r2][c2] - sumArray[r1-1][c2]}
    else if r1 == 0{ return sumArray[r2][c2] - sumArray[r2][c1-1]}
    else { return sumArray[r2][c2] - sumArray[r1-1][c2] - sumArray[r2][c1-1] + sumArray[r1-1][c1-1]}
}

let nmk = readLine()!.split(separator: " ").map{Int($0)!}

var array = [[Int]](repeating: [Int](repeating: 0, count: nmk[1]), count: nmk[0])

var sumArray = [[Int]](repeating: [Int](repeating: 0, count: nmk[1]), count: nmk[0])


for i in 0..<nmk[0]{
    let numbers = readLine()!.split(separator: " ").map{Int($0)!}
    for j in 0..<nmk[1]{
        array[i][j] = numbers[j]
        if i == 0 && j == 0{
            sumArray[i][j] = numbers[j]
        }
        if j > 0 && i == 0{
            sumArray[i][j] = sumArray[i][j-1] + numbers[j]
        }
        if j == 0 && i > 0{
            sumArray[i][j] = sumArray[i-1][j] + numbers[j]
        }
        if j>0 && i > 0{
            sumArray[i][j] = numbers[j] + sumArray[i-1][j] + sumArray[i][j-1] - sumArray[i-1][j-1]
        }
    }
}
var answers = [Int]()
for _ in 0..<nmk[2]{
    let cords = readLine()!.split(separator: " ").map{Int($0)!-1}
    answers.append(cordination(r1: cords[0], c1: cords[1], r2: cords[2], c2: cords[3]))
}
answers.forEach({print($0)})
/*
3 3 2
1 2 3
1 1 2
1 3 4
 
2 2 2
1 1
2 1
1 1 2 1
1 1 2 1
*/
