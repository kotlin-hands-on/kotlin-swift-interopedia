import Foundation
import shared

func unitNothingExample(){
    let example = types.UnitNothing()
    example.unitType(p: ())
    //Doesn't compile - no init() function
    //example.nothingType(n: Never())
    print(example.returnUnit())
    //Crashes app - exception
    //example.returnNothing()
}
