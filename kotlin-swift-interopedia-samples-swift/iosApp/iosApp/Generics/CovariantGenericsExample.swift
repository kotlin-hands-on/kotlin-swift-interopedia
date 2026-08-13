import Foundation
import shared

func covariantGenericsExample(){
    outGenericUsage(generic: generics.OutGeneric(data: "123"))
}
    
private func outGenericUsage(generic: generics.OutGeneric) {
    print(generic as! generics.OutGeneric)
}
