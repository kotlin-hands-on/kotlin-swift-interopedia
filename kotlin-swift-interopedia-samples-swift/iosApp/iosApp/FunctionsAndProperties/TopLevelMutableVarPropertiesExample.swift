import Foundation
import shared

func topLevelMutableVarPropertiesExample() {
    let initial = TopLevelPropertyMutableKt.topLevelPropertyMutable
    print(initial)
    TopLevelPropertyMutableKt.topLevelPropertyMutable = "Property changed from Swift"
    print(TopLevelPropertyMutableKt.topLevelPropertyMutable)
}
