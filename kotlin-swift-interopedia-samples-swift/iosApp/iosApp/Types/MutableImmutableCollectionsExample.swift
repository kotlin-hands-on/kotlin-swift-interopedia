import Foundation
import shared

func collectionsMutabilityExample() {
    var mutableList: [KotlinInt] = [1, 2, 3]
    let notMutableList: [KotlinInt] = [1, 2, 3]

    mutableList = types.CommonTypesKt.listType(list: mutableList)
    print(types.CommonTypesKt.listType(list: notMutableList))
}

func listTypeNoCrashes() {
    var list = types.CommonTypesKt.listType(list: [12, 34])
    list.append(2)
    print(list)
}

func listMutableListExample() {
    var mutableList: [KotlinInt] = [1, 2, 3]
    let notMutableList: [KotlinInt] = [1, 2, 3]

    print(types.MutableImmutableCollectionsKt.mutableListType(list: NSMutableArray(array: notMutableList)))
    print(types.MutableImmutableCollectionsKt.mutableListType(list: NSMutableArray(array: mutableList)))
}

func setMutableSetExample() {
    var mutableSet: Set<KotlinInt> = Set(arrayLiteral: 1, 2, 3)
    let notMutableSet: Set<KotlinInt> = Set(arrayLiteral: 1, 2, 3)

    mutableSet = types.MutableImmutableCollectionsKt.setType(set: mutableSet)
    print(types.MutableImmutableCollectionsKt.setType(set: notMutableSet))

    print(types.MutableImmutableCollectionsKt.mutableSetType(set: KotlinMutableSet(set: mutableSet)))
    print(types.MutableImmutableCollectionsKt.mutableSetType(set: KotlinMutableSet(set: notMutableSet)))
}

func mutableSetExample() {
    var mutableSet: Set<KotlinInt> = Set(arrayLiteral: 1, 2, 3)

    mutableSet = types.MutableImmutableCollectionsKt.mutableSetType(
        set: KotlinMutableSet(set: mutableSet)
    ) as! Set<KotlinInt>
    print(mutableSet)
}

func mapMutableMapExample() {
    var mutableMap: Dictionary<String, KotlinInt> = Dictionary(dictionaryLiteral: ("1", 1), ("2", 2), ("3", 3))
    var mutableMapLiteral: [String: KotlinInt] = [
        "1": 1,
        "2": 2,
        "3": 3
    ]
    let notMutableMap: Dictionary<String, KotlinInt> = Dictionary(
        dictionaryLiteral: ("1", 1), ("2", 2), ("3", 3)
    )
    let notMutableMapLiteral: [String: KotlinInt] = [
        "1": 1,
        "2": 2,
        "3": 3
    ]

    mutableMap = types.MutableImmutableCollectionsKt.mapType(map: mutableMap)
    mutableMapLiteral = types.MutableImmutableCollectionsKt.mapType(map: mutableMapLiteral)
    print(types.MutableImmutableCollectionsKt.mapType(map: notMutableMap))
    print(types.MutableImmutableCollectionsKt.mapType(map: notMutableMapLiteral))

    print(types.MutableImmutableCollectionsKt.mutableMapType(
        map: KotlinMutableDictionary(dictionary: mutableMap)
    ))
    print(types.MutableImmutableCollectionsKt.mutableMapType(
        map: KotlinMutableDictionary(dictionary: mutableMapLiteral)
    ))
    print(types.MutableImmutableCollectionsKt.mutableMapType(
        map: KotlinMutableDictionary(dictionary: notMutableMap)
    ))
    print(types.MutableImmutableCollectionsKt.mutableMapType(
        map: KotlinMutableDictionary(dictionary: notMutableMapLiteral)
    ))

    print(types.MutableImmutableCollectionsKt.mutableMapType(
        map: KotlinMutableDictionary(dictionary: mutableMap)
    ) as! Dictionary<String, KotlinInt>)
}
