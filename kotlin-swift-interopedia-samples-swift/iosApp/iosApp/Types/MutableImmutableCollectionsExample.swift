import Foundation
import shared

func collectionsMutabilityExample() {
    var mutableList: [KotlinInt] = [1, 2, 3]
    let notMutableList: [KotlinInt] = [1, 2, 3]

    mutableList = CommonTypesKt.listType(list: mutableList)
    print(CommonTypesKt.listType(list: notMutableList))
}

func listTypeNoCrashes() {
    var list = CommonTypesKt.listType(list: [12, 34])
    list.append(2)
    print(list)
}

func listMutableListExample() {
    var mutableList: [KotlinInt] = [1, 2, 3]
    let notMutableList: [KotlinInt] = [1, 2, 3]

    print(MutableImmutableCollectionsKt.mutableListType(list: NSMutableArray(array: notMutableList)))
    print(MutableImmutableCollectionsKt.mutableListType(list: NSMutableArray(array: mutableList)))
}

func setMutableSetExample() {
    var mutableSet: Set<KotlinInt> = Set(arrayLiteral: 1, 2, 3)
    let notMutableSet: Set<KotlinInt> = Set(arrayLiteral: 1, 2, 3)

    mutableSet = MutableImmutableCollectionsKt.setType(set: mutableSet)
    print(MutableImmutableCollectionsKt.setType(set: notMutableSet))

    print(MutableImmutableCollectionsKt.mutableSetType(set: KotlinMutableSet(set: mutableSet)))
    print(MutableImmutableCollectionsKt.mutableSetType(set: KotlinMutableSet(set: notMutableSet)))
}

func mutableSetExample() {
    var mutableSet: Set<KotlinInt> = Set(arrayLiteral: 1, 2, 3)

    mutableSet = MutableImmutableCollectionsKt.mutableSetType(
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

    mutableMap = MutableImmutableCollectionsKt.mapType(map: mutableMap)
    mutableMapLiteral = MutableImmutableCollectionsKt.mapType(map: mutableMapLiteral)
    print(MutableImmutableCollectionsKt.mapType(map: notMutableMap))
    print(MutableImmutableCollectionsKt.mapType(map: notMutableMapLiteral))

    print(MutableImmutableCollectionsKt.mutableMapType(
        map: KotlinMutableDictionary(dictionary: mutableMap)
    ))
    print(MutableImmutableCollectionsKt.mutableMapType(
        map: KotlinMutableDictionary(dictionary: mutableMapLiteral)
    ))
    print(MutableImmutableCollectionsKt.mutableMapType(
        map: KotlinMutableDictionary(dictionary: notMutableMap)
    ))
    print(MutableImmutableCollectionsKt.mutableMapType(
        map: KotlinMutableDictionary(dictionary: notMutableMapLiteral)
    ))

    print(MutableImmutableCollectionsKt.mutableMapType(
        map: KotlinMutableDictionary(dictionary: mutableMap)
    ) as! Dictionary<String, KotlinInt>)
}