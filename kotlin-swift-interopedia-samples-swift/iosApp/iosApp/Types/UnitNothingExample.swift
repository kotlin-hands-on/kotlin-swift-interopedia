import Foundation
import shared

func unitNothingExample(){
    let example = UnitNothing()
    example.unitType(p: KotlinUnit())
    //Doesn't compile - no init() function
    //example.nothingType(n: KotlinNothing())
    print(example.returnUnit())
    //Crashes app - exception
    //example.returnNothing()
}
