import Foundation
import shared

func collectionsWithCustomTypesExample(){
    let notPrimitive = NotPrimitiveType(item: "abc123")
    let inList = [notPrimitive]
    let inSet: Set<NotPrimitiveType> = [notPrimitive]
    let inMap: [String: NotPrimitiveType] = ["key": notPrimitive]

    let myList: [NotPrimitiveType] = CollectionsWithCustomTypesKt.notPrimitiveTypeList(list: inList)
    print(myList)
    let mySet: Set<NotPrimitiveType> = CollectionsWithCustomTypesKt.notPrimitiveTypeSet(set: inSet)
    print(mySet)
    let myMap: [String: NotPrimitiveType] = CollectionsWithCustomTypesKt.notPrimitiveTypeMap(map: inMap)
    print(myMap)
}
