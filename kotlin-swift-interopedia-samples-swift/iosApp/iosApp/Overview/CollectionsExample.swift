import Foundation
import shared

func getCollectionsExample(){
    let a: Array<KotlinInt> = CollectionsKt.getList()
    print(a)
    let a2: KotlinArray<KotlinInt> = CollectionsKt.getArray()
    print(a2)
    let d: Dictionary<String, KotlinInt> = CollectionsKt.getMap()
    print(d)
    let s: Set<KotlinInt> = CollectionsKt.getSet()
    print(s)
}

func setCollectionsExample(){
    CollectionsKt.set(collection: [1,2,3])
}
