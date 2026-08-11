import Foundation
import shared

func checkedExceptionExample()  {
    do {
        try ExceptionsKt.functionThrowsDeclaredException()
        print("Shouldn't be reachable")
    } catch {
        print("Error is handled: \(error)")
    }
}

func uncheckedExceptionExample() {
    ExceptionsKt.functionThrowsUndeclaredException()
}
