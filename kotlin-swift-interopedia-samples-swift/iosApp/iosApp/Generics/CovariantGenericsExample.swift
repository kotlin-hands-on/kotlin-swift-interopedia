import Foundation
import shared

func covariantGenericsExample(){
    outGenericUsage(generic: OutGeneric(data: "123"))
}
    
private func outGenericUsage(generic: OutGeneric<NSString>) {
    print(generic as! OutGeneric<AnyObject>)
}
