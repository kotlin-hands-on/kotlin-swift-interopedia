import Foundation
import shared

func readOnlyMemberPropertiesExample() {
    let myClass = MyClassValProperty(param: "param passed from Swift")
    print(myClass.property)
}
