import Foundation
import shared

func topLevelMutableVarPropertiesExample() {
    let initial = functionsandproperties.topLevelPropertyMutable
    print(initial)
    functionsandproperties.topLevelPropertyMutable = "Property changed from Swift"
    print(functionsandproperties.topLevelPropertyMutable)
}
