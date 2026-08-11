import Foundation
import shared

func genericsClassesExample(){
    //Doesn't work with primitives
    
    //Works with primitives as strings
    let result1: NSString = StateHolderWithoutAny<NSString>(data:"'222'").pullState() as! NSString
    
    print(result1)
}
