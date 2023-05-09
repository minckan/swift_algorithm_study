/**
⭐️ 버블정렬
 1. 두 인접한 데이터를 비교한다
 2. 앞에 있는 데이터가 뒤에 있는 데이터보다 크면, 둘의 자리를 바꿔준다.
 
 시간 복잡도 O(n^2)
 */

func bubbleSort(_ array: inout [Int]) {
    for index1 in 0..<(array.count - 1) { // 스캔작업 반복
        var isSwap = false
        for index2 in 0..<((array.count - index1) - 1) { // 스캔작업 (인접 인덱스 비교 및 스왑 반복) : (탐색하려는 요소의 갯수 - 1 => 탐색하려는 요소의 갯수는 스캔 횟수에 따라 차감됨 (스캔 횟수만큼 정렬되어 있을테니)
            if array[index2] > array[index2 + 1] {
                array.swapAt(index2, index2 + 1)
                isSwap = true
            }
        }
        if isSwap == false {return} // 단 한번도 스왑이 일어나지 않았다는 뜻. == 이미 모든 요소가 정렬되어 있다.
    }
}




/**
 ⭐️선택정렬
 1. 데이터 중 가장 작은 값을 찾는다.
 2. 찾은 값을 데이터 맨 앞 값과 교체한다.
 3. 맨 앞 데이터를 제외하고 위 과정을 반복한다.
 
 시간 복잡도 O(n^2)
 */


func selectionSort(_ array: inout [Int]) {
    for stand in 0..<(array.count - 1) {
        var minIndex = stand
        for index in (stand + 1)..<array.count {
            if array[index] < array[minIndex] {
                minIndex = index
            }
        }
        array.swapAt(stand, minIndex)
    }
}


/**
 ⭐️삽입정렬
 1. 정렬은 두 번째 요소부터 시작한다.
 2. 기준이 되는 index 와 인접한 index 부터 비교하며 삽입한다.
 3. 삽입이 끝나면, 기준 index의 다음 index를 기준으로 잡는다.
 
 시간 복잡도 O(n^2)
 */


func insertionSort(_ array: inout [Int]) {
    for stand in 1..<array.count {
        print("=============")
        for index in stride(from: stand, to: 0, by: -1) {
            if array[index] < array[index - 1] {
                array.swapAt(index, index - 1)
            } else {
                print("break")
                break
            }
        }
    }
}


var array = [3,6,80,10,22,1,88,9]
insertionSort(&array)
print(array)

