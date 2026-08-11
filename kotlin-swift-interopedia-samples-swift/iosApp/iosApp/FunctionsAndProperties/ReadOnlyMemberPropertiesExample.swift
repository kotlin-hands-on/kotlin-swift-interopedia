import Foundation
import shared

func readOnlyMemberPropertiesExample() {
    let myClass = functionsandproperties.MyClassValProperty(param: "param passed from Swift")
    print(myClass.property)
}
