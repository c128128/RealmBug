import Foundation
import RealmSwift

enum Shared {
    private static func location() -> URL {
        guard let url = FileManager.default.urls(for: .downloadsDirectory, in: .userDomainMask).first else {
            fatalError("FIXME")
        }
        
        return url
    }
    
    static func config() -> Realm.Configuration {
        return Realm.Configuration(
            fileURL: Self.location().appendingPathComponent("Test.realm"),
            encryptionKey: Data(repeating: 1, count: 64)
        )
    }
    
    static func realm(config: Realm.Configuration) -> Realm {
        print("====> ", config.fileURL)
        
        return try! Realm(configuration: config)
    }
}
