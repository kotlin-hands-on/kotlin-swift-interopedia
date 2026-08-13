import Foundation
import shared
import KotlinRuntime
import KotlinRuntimeSupport

@MainActor
func flowsWithCancellationExample() {
    Task {
        let flow = coroutines.NumberFlowRepository().getNumbersSimple() as! ExportedKotlinPackages.kotlinx.coroutines.flow.Flow
        let collector: CancellationCollector = (nil as CancellationCollector?)! // CancellationCollector()
        try await flow.collect(collector: collector)
    }.cancel()
}

class CancellationCollector: KotlinBase, ExportedKotlinPackages.kotlinx.coroutines.flow.FlowCollector {
    func emit(value: (any KotlinRuntimeSupport._KotlinBridgeable)?) async throws {
        print("Got number: \(value!)")
    }
}
