import Foundation
import shared

func starProjectionExample(){
    let starProj = generics.MyGeneric(data: NSNumber(12))
    print(starProj.someStarProjection(myGeneric: starProj as! generics.MyGeneric))
    print(starProj.someStarProjection(
        myGeneric: generics.MyGeneric(data: NSString("111"))
    ))
}
