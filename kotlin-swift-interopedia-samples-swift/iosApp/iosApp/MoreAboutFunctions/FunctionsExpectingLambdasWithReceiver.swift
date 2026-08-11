import Foundation
import shared

func functionsExpectingLambdasWithReceiverExample() {
    FunctionExpectingLambdaWithReceiverKt.funcWithExtension(extension: { usualClassExample in
        usualClassExample.param1 = "changed"
        usualClassExample.param2 = 2
        usualClassExample.param3 = 3
        usualClassExample.param4 = 4.0
        usualClassExample.param5 = 5.0
        usualClassExample.param6 = true
        print("\(usualClassExample.param1) \(usualClassExample.param2) \(usualClassExample.param3) \(usualClassExample.param4) \(usualClassExample.param5) \(usualClassExample.param6)")
    })
}
