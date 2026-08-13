import Foundation
import shared

func functionsWithReceivers() {
    dslBlock { dsl in
        dsl.experiments { e in e.enable(experiment: moreaboutfunctions.Experiment(key: "key1", description: "param123"))}
        return dsl
    }
}

private func dslBlock(block: (moreaboutfunctions.Dsl) -> moreaboutfunctions.Dsl) -> moreaboutfunctions.Dsl {
    var dsl = moreaboutfunctions.Dsl()
    dsl = block(dsl)
    return dsl
}
