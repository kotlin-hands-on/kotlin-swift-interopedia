import Foundation
import shared
import KotlinRuntime
import KotlinRuntimeSupport

@MainActor
func flowsExample() {
    Task {
        let flow = coroutines.NumberFlowRepository().getNumbersSimple()._flow as! ExportedKotlinPackages.kotlinx.coroutines.flow.Flow
        let collector: AnyCollector = (nil as AnyCollector?)! // AnyCollector()
        try await flow.collect(collector: collector)
    }
}

class AnyCollector: KotlinBase, ExportedKotlinPackages.kotlinx.coroutines.flow.FlowCollector {
    func emit(value: (any KotlinRuntimeSupport._KotlinBridgeable)?) async throws {
        print("Got number: \(value!)")
    }
}
