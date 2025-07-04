import RealmSwift
import Foundation

class Dog: Object {
    @Persisted var name: String
    @Persisted var data: Data
}
