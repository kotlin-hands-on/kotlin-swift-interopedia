import Foundation
import shared

func getCollectionsExample(){
    let a: Array<KotlinInt> = overview.CollectionsKt.getList()
    print(a)
    let a2: kotlin.Array<KotlinInt> = overview.CollectionsKt.getArray()
    print(a2)
    let d: Dictionary<String, KotlinInt> = overview.CollectionsKt.getMap()
    print(d)
    let s: Set<KotlinInt> = overview.CollectionsKt.getSet()
    print(s)
}

func setCollectionsExample(){
    overview.CollectionsKt.set(collection: [1,2,3])
}
