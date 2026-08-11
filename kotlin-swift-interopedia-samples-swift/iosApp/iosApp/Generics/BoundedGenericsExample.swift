import Foundation
import shared

func boundedGenericsExample(){
    class MyStricted : generics.ForStricted {}

    let result1 = generics.StrictedGeneric(data: MyStricted())
    print(result1)
    let result2 = generics.StrictedGeneric(data: NSString("1122")) // Compiles
    print(result2)
}
