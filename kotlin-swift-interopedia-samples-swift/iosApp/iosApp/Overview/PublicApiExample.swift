import Foundation
import shared

func publicPropertyExample(){
    print(overview.PublicClass().publicProperty)
}

func protectedPropertyExample(){
    //Does not compile
    //print(overview.PublicClass().protectedProperty)
}

func internalPropertyExample(){
    //Does not compile
    //print(overview.PublicClass().internalProperty)
}

func privatePropertyExample(){
    //Does not compile
    //print(overview.PublicClass().privateProperty)
}

func publicFunctionExample(){
    overview.PublicClass().publicFun()
}

func protectedFunctionExample(){
    //Does not compile
    //overview.PublicClass().protectedFun()
}

func internalFunctionExample(){
    //Does not compile
    //overview.PublicClass().internalFun()
}

func privateFunctionExample(){
    //Does not compile
    //overview.PublicClass().privateFun()
}

func internalClassExample(){
    //Does not compile
    //overview.InternalClass()
}

