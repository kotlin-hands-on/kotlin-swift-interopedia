import Foundation
import shared

func starProjectionExample(){
    let starProj = MyGeneric(data: NSNumber(12))
    print(starProj.someStarProjection(myGeneric: starProj as! MyGeneric<AnyObject>))
    print(starProj.someStarProjection(
        myGeneric: MyGeneric<AnyObject>(data: NSString("111"))
    ))
}
