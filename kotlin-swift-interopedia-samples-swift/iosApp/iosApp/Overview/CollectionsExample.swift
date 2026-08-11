import Foundation
import shared

func getCollectionsExample(){
    let a: Array<KotlinInt> = overview.getList()
    print(a)
    let a2: kotlin.Array<KotlinInt> = overview.getArray()
    print(a2)
    let d: Dictionary<String, KotlinInt> = overview.getMap()
    print(d)
    let s: Set<KotlinInt> = overview.getSet()
    print(s)
}

func setCollectionsExample(){
    overview.set(collection: [1,2,3])
}
