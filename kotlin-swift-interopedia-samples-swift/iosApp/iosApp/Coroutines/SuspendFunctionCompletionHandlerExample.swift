import Foundation
import shared

func suspendFunctionCompletionHandlerExample() {
    ThingRepository().getThingSimple(succeed: true, completionHandler: { thing, error in
        print("Thing is \(thing). Error is \(error)")
    })
}
