import UIKit
import RealmSwift

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let realm = Shared.realm(config: Shared.config())
        
        while true {
            let dog = Dog()
            dog.name = UUID().uuidString
            dog.data = Data(repeating: 1, count: 4096 + 1)
            
            try! realm.write {
                realm.add(dog, update: .error)
            }
        }
    }
}
