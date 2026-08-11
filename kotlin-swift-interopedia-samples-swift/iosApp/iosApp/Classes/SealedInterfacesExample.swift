import Foundation
import shared

func sealedInterfacesExample(){
    switchOnSealedInterfaces(sealedInterfaces: SealedInterfacesFirstImpl())
    switchOnSealedInterfaces(sealedInterfaces: SealedInterfacesSecondImpl())
}
    
private func switchOnSealedInterfaces(sealedInterfaces: classesandinterfaces.SealedInterfaces){
    switch(sealedInterfaces){
    case is classesandinterfaces.SealedInterfacesFirst: print((sealedInterfaces as! any classesandinterfaces.SealedInterfacesFirst as classesandinterfaces.SealedInterfacesFirst).firstFunctionExample())
    case is classesandinterfaces.SealedInterfacesSecond: print((sealedInterfaces as! any classesandinterfaces.SealedInterfacesSecond as classesandinterfaces.SealedInterfacesSecond).secondFunctionExample())
    default: print("default")
    }
}


class SealedInterfacesFirstImpl : classesandinterfaces.SealedInterfacesFirst {
    func firstFunctionExample() -> String {
        return "first"
    }
}

class SealedInterfacesSecondImpl : classesandinterfaces.SealedInterfacesSecond {
    func secondFunctionExample() -> String {
        return "second"
    }
}
