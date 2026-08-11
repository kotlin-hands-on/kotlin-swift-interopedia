import Foundation
import shared

func enumClassExample() {
    let e1 = classesandinterfaces.EnumClass.entryOne
    let _ = classesandinterfaces.EnumClass.entryTwo

    let _ = classesandinterfaces.EnumClass.entryOne.name
    let _ = classesandinterfaces.EnumClass.entryOne.type

    let _ = classesandinterfaces.EnumClass.companion.findByType(type: "entry_two")
    let optionalResult = classesandinterfaces.EnumClass.companion.findByType(type: "entry_two_trheee")

    print("Enum example: \(e1)")
    print("Switching: \(switchEnumClass(enumClassExample: e1))")
    print("Non-existing entry: \(String(describing: optionalResult))")
}

private func switchEnumClass(enumClassExample: classesandinterfaces.EnumClass) -> String {
    switch enumClassExample {
    case .entryOne: return "entryOne"
    case .entryTwo: return "entryTwo"
    default: return "default"
    }
}
