import Foundation
import shared

func getCollectionsExample(){
     let a: Array<Int32> = overview.getList()
    print(a)
    let a2: kotlin.Array<Int32> = overview.getArray()
    print(a2)
    let d: Dictionary<String, Int32> = overview.getMap()
    print(d)
    let s: Set<Int32> = overview.getSet()
    print(s)
}

func setCollectionsExample(){
    overview.set(collection: [1,2,3])
}
