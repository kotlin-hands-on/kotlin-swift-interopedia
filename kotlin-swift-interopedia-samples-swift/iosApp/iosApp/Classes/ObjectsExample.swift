import Foundation
import shared

func objectsExample() {
    print(classesandinterfaces.MyKotlinObject.shared.CONST_VAL_EXAMPLE)
    print(classesandinterfaces.MyKotlinObject.shared.myProperty.param1)
    print(classesandinterfaces.MyKotlinObject.shared.functionExample())
    print(classesandinterfaces.MyKotlinObject.shared.paramFunctionExample(funcParam1: "123"))
}
