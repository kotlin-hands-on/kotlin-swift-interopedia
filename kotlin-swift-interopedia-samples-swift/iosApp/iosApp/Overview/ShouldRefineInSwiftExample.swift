import Foundation
import shared

extension overview.Person {
    var name: (firstName: String, lastName: String) {
        let namePair = __namePair
        return (namePair.first! as String, namePair.second! as String)
    }
}

func shouldRefineInSwiftExample(){
    let authorNames = overview.RealPerson().name
    print("Author is: \(authorNames.firstName) \(authorNames.lastName)")
}
