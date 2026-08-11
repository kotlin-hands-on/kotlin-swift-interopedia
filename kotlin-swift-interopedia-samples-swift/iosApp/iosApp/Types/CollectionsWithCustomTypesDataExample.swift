import Foundation
import shared

func collectionsWithCustomTypesExample(){
    let notPrimitive = types.NotPrimitiveType(item: "abc123")
    let inList = [notPrimitive]
    let inSet: Set<types.NotPrimitiveType> = [notPrimitive]
    let inMap: [String: types.NotPrimitiveType] = ["key": notPrimitive]

    let myList: [types.NotPrimitiveType] = types.notPrimitiveTypeList(list: inList)
    print(myList)
    let mySet: Set<types.NotPrimitiveType> = types.notPrimitiveTypeSet(set: inSet)
    print(mySet)
    let myMap: [String: types.NotPrimitiveType] = types.notPrimitiveTypeMap(map: inMap)
    print(myMap)
}
