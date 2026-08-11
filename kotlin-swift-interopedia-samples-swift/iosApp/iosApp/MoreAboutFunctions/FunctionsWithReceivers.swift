import Foundation
import shared

func functionsWithReceivers() {
    dslBlock { dsl in
        dsl.experiments { e in e.enable(experiment: Experiment(key: "key1", description: "param123"))}
        return dsl
    }
}

private func dslBlock(block: (Dsl) -> Dsl) -> Dsl {
    var dsl = Dsl()
    dsl = block(dsl)
    return dsl
}
