import Foundation
import shared

func collectionsWithCustomTypesExample(){
    let notPrimitive = types.NotPrimitiveType(item: "abc123")
    let inList = [notPrimitive]
    let inSet: Set<types.NotPrimitiveType> = [notPrimitive]
    let inMap: [String: types.NotPrimitiveType] = ["key": notPrimitive]

    let myList: [types.NotPrimitiveType] = types.CollectionsWithCustomTypesKt.notPrimitiveTypeList(list: inList)
    print(myList)
    let mySet: Set<types.NotPrimitiveType> = types.CollectionsWithCustomTypesKt.notPrimitiveTypeSet(set: inSet)
    print(mySet)
    let myMap: [String: types.NotPrimitiveType] = types.CollectionsWithCustomTypesKt.notPrimitiveTypeMap(map: inMap)
    print(myMap)
}
