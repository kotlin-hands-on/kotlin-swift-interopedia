import Foundation
import shared

func enumClassExample() {
    let e1 = classesandinterfaces.EnumClass.ENTRY_ONE
    let _ = classesandinterfaces.EnumClass.ENTRY_TWO

    let _ = classesandinterfaces.EnumClass.ENTRY_ONE.description
    let _ = classesandinterfaces.EnumClass.ENTRY_TWO.type

    let _ = classesandinterfaces.EnumClass.Companion.shared.findByType(type: "entry_two")
    let optionalResult = classesandinterfaces.EnumClass.Companion.shared.findByType(type: "entry_two_trheee")

    print("Enum example: \(e1)")
    print("Switching: \(switchEnumClass(enumClassExample: e1))")
    print("Non-existing entry: \(String(describing: optionalResult))")
}

private func switchEnumClass(enumClassExample: classesandinterfaces.EnumClass) -> String {
    switch enumClassExample {
    case .ENTRY_ONE: return "entryOne"
    case .ENTRY_TWO: return "entryTwo"
    default: return "default"
    }
}
