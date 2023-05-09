
// ⭐️ 재귀함수로 펙토리얼 함수 만들어보기
var testStr: String?
func factorial(_ num: Int) -> Int {
    if (num <= 1) {
        return 1
    }
    
    testStr = "\(num - 1) x " + (testStr ?? "")
    print(testStr)
    return (num * factorial(num - 1))
}


let factorialNum = factorial(5)
//print(factorialNum)


/**
 시간 복잡도 : O(n)
 공간 복잡도: O(n)
 */
