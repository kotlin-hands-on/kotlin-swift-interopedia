import Foundation
import shared

func checkedExceptionExample()  {
    do {
        try overview.ExceptionsKt.functionThrowsDeclaredException()
        print("Shouldn't be reachable")
    } catch {
        print("Error is handled: \(error)")
    }
}

func uncheckedExceptionExample() {
    overview.ExceptionsKt.functionThrowsUndeclaredException()
}
