import Foundation
import shared

func collectionsWithBasicTypesExample() {
    collectionsExample(intList: [9, 8, 7])
}

private func collectionsExample(intList: [Int]) {
    CollectionWithBasicTypesKt.intList(list: [1, 2, 3]) // ok
    let result2: [KotlinInt] = [1, 2, 3] + CommonTypesKt.listType(list: [1, 3, 4]) // ok
    print(result2)

    // Mapping
    let li2: [KotlinInt] = CommonTypesKt.listType(
        list: intList.map({ p in KotlinInt(value: Int32(p)) })
    )
    print(li2)
}
