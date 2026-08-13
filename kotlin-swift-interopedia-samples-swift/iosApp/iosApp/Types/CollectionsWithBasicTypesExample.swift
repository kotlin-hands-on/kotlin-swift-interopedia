import Foundation
import shared

func collectionsWithBasicTypesExample() {
    collectionsExample(intList: [9, 8, 7])
}

private func collectionsExample(intList: [Int]) {
    types.intList(list: [1, 2, 3]) // ok
    let result2: [Int32] = [1, 2, 3] + types.listType(list: [1, 3, 4]) // ok
    print(result2)

    // Mapping
    let li2: [Int32] = types.listType(
        list: intList.map({ p in Int32(p) })
    )
    print(li2)
}
