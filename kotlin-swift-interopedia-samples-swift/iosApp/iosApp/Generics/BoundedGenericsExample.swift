import Foundation
import shared

func boundedGenericsExample(){
    class MyStricted : ForStricted {}

    let result1 = StrictedGeneric(data: MyStricted())
    print(result1)
    let result2 = StrictedGeneric(data: NSString("1122")) // Compiles
    print(result2)
}
