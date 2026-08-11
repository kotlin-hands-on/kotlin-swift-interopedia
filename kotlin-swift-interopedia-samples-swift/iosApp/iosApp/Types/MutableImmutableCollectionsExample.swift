import Foundation
import shared

func collectionsMutabilityExample() {
    var mutableList: [KotlinInt] = [1, 2, 3]
    let notMutableList: [KotlinInt] = [1, 2, 3]

    mutableList = types.listType(list: mutableList)
    print(types.listType(list: notMutableList))
}

func listTypeNoCrashes() {
    var list = types.listType(list: [12, 34])
    list.append(2)
    print(list)
}

func listMutableListExample() {
    var mutableList: [KotlinInt] = [1, 2, 3]
    let notMutableList: [KotlinInt] = [1, 2, 3]

    print(types.mutableListType(list: NSMutableArray(array: notMutableList)))
    print(types.mutableListType(list: NSMutableArray(array: mutableList)))
}

func setMutableSetExample() {
    var mutableSet: Set<KotlinInt> = Set(arrayLiteral: 1, 2, 3)
    let notMutableSet: Set<KotlinInt> = Set(arrayLiteral: 1, 2, 3)

    mutableSet = types.setType(set: mutableSet)
    print(types.setType(set: notMutableSet))

    print(types.mutableSetType(set: KotlinMutableSet(set: mutableSet)))
    print(types.mutableSetType(set: KotlinMutableSet(set: notMutableSet)))
}

func mutableSetExample() {
    var mutableSet: Set<KotlinInt> = Set(arrayLiteral: 1, 2, 3)

    mutableSet = types.mutableSetType(
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

    mutableMap = types.mapType(map: mutableMap)
    mutableMapLiteral = types.mapType(map: mutableMapLiteral)
    print(types.mapType(map: notMutableMap))
    print(types.mapType(map: notMutableMapLiteral))

    print(types.mutableMapType(
        map: KotlinMutableDictionary(dictionary: mutableMap)
    ))
    print(types.mutableMapType(
        map: KotlinMutableDictionary(dictionary: mutableMapLiteral)
    ))
    print(types.mutableMapType(
        map: KotlinMutableDictionary(dictionary: notMutableMap)
    ))
    print(types.mutableMapType(
        map: KotlinMutableDictionary(dictionary: notMutableMapLiteral)
    ))

    print(types.mutableMapType(
        map: KotlinMutableDictionary(dictionary: mutableMap)
    ) as! Dictionary<String, KotlinInt>)
}
