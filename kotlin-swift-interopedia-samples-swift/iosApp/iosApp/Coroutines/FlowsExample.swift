import Foundation
import shared

@MainActor
func flowsExample() {
    Task {
        try await coroutines.NumberFlowRepository().getNumbersSimple().collect(collector: AnyCollector())
    }
}

class AnyCollector: ExportedKotlinPackages.kotlinx.coroutines.flow.FlowCollector {
    func emit(value: Any?) async throws {
        print("Got number: \(value!)")
    }
}
