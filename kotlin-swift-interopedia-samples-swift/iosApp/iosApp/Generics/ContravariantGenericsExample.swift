import Foundation
import shared

open class SuperClass {}
class ChildClass : SuperClass {}

func contravariantGenericsExample(){
    inGenericUsage(
        generic: generics.InGenericItem() as! generics.InGenericItem
    )
}
    
private func inGenericUsage(generic: generics.InGenericItem) {
    let _: generics.InGenericItem = generic as! generics.InGenericItem
    print("inGenericUsage - ok")
}
