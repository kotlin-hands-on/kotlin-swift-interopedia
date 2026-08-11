import Foundation
import shared

func topLevelMutableVarPropertiesExample() {
    let initial = functionsandproperties.TopLevelPropertyMutableKt.topLevelPropertyMutable
    print(initial)
    functionsandproperties.TopLevelPropertyMutableKt.topLevelPropertyMutable = "Property changed from Swift"
    print(functionsandproperties.TopLevelPropertyMutableKt.topLevelPropertyMutable)
}
