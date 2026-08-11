import Foundation
import shared

@MainActor
func cancellationOfSuspendFunctionExample() {
    Task {
        do {
            let thing = try await coroutines.ThingRepository().getThingSimple(succeed: true)
            print("Thing is \(thing).")
        }
        catch {
            print("Found error: \(error)")
        }
    }.cancel()
}

