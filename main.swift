

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedIntegers = [5, 1, 4, 2, 8]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


// Add your code below:

var integers = unsortedIntegers
var array = [String]()
while let line = readLine() {
    array.append(line)
}
    func lowercase(array: inout [String]) {
    for x in 0 ..< array.count{
        array[x] = array[x].lowercased()
    }
}
func swap(array: inout [String], firstIndex: Int, secondIndex: Int) {
let swaps = array[firstIndex]
    array[firstIndex] = array[secondIndex]
    array[secondIndex] = swaps
}

//print("Pass: 0, Swaps: 0/0, Array: \(array)")
func insertionSort(array: inout [String]) {
lowercase(array: &array)
    for currentIndex in 0..<(array.count - 1) {
        var minIndex = currentIndex
        for i in (currentIndex + 1)..<array.count {
            if (array[i] < array[minIndex]) {
                minIndex = i;
            }
        }
        if (minIndex != currentIndex) {
            let temp = array[currentIndex];
            array[currentIndex] = array[minIndex];
            array[minIndex] = temp;
        }
    }
    print(array)
}
insertionSort(array: &array)
