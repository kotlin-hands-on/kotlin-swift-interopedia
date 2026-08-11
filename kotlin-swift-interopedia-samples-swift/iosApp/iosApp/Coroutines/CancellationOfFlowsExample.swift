import Foundation
import shared

@MainActor
func flowsWithCancellationExample() {
    Task {
        try await coroutines.NumberFlowRepository().getNumbersSimple().collect(collector: CancellationCollector())
    }.cancel()
}

class CancellationCollector: ExportedKotlinPackages.kotlinx.coroutines.flow.FlowCollector {
    func emit(value: Any?) async throws {
        print("Got number: \(value!)")
    }
}
