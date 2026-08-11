import Foundation
import shared

extension Person {
    var name: (firstName: String, lastName: String) {
        let namePair = __namePair
        return (namePair.first! as String, namePair.second! as String)
    }
}

func shouldRefineInSwiftExample(){
    let authorNames = RealPerson().name
    print("Author is: \(authorNames.firstName) \(authorNames.lastName)")
}
