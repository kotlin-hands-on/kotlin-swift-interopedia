import Foundation
import shared

open class SuperClass {}
class ChildClass : SuperClass {}

func contravariantGenericsExample(){
    inGenericUsage(
        generic: generics.InGenericItem<ChildClass>() as! generics.InGenericItem<SuperClass>
    )
}
    
private func inGenericUsage(generic: generics.InGenericItem<SuperClass>) {
    let _: generics.InGenericItem<ChildClass> = generic as! generics.InGenericItem<ChildClass>
    print("inGenericUsage - ok")
}
