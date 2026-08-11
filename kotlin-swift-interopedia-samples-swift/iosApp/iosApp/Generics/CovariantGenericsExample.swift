import Foundation
import shared

func covariantGenericsExample(){
    outGenericUsage(generic: generics.OutGeneric(data: "123"))
}
    
private func outGenericUsage(generic: generics.OutGeneric<NSString>) {
    print(generic as! generics.OutGeneric<AnyObject>)
}
