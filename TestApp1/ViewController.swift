import UIKit
import RealmSwift

class ViewController: UIViewController {
    private var token: NotificationToken?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let config = Shared.config()
        
        _ = try! Realm.deleteFiles(for: config)
        
        let realm = Shared.realm(config: config)
        
        self.token = realm.objects(Dog.self)
            .observe { changes in
                print("changes: \(changes)")
            }
    }
}
