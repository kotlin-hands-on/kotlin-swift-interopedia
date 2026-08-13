import Foundation
import shared
import KMPNativeCoroutinesAsync
import KMPNativeCoroutinesCore

@MainActor
func cancellationOfFlowsWithKMPNativeCoroutinesExample() {
    Task {
        do {
           let sequence = asyncSequence(for: coroutines.NumberFlowRepository().getNumbersAnnotated())
           for try await number in sequence {
               print("Got number: \(number)")
           }
        } catch {
            print("Failed with error: \(error)")
        }
    }.cancel()
}
