import Foundation
import shared
import KMPNativeCoroutinesAsync
import KMPNativeCoroutinesCore

@MainActor
func suspendFunctionsWithKMPNativeCoroutinesExample() {
    Task {
        do {
            let result = try await asyncFunction(for: coroutines.ThingRepository().getThingAnnotated(succeed: true))
            print("Got result: \(result)")
        } catch {
            print("Failed with error: \(error)")
        }
    }
}
