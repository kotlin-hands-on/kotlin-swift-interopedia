import Foundation
import shared

func objectsExample() {
    print(MyKotlinObject.shared.CONST_VAL_EXAMPLE)
    print(MyKotlinObject.shared.myProperty.param1)
    print(MyKotlinObject.shared.functionExample())
    print(MyKotlinObject.shared.paramFunctionExample(funcParam1: "123"))
}
