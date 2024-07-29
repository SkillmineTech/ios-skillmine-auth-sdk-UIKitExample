import UIKit
import SkillmineAuthSDK
import WebKit

class ViewController: UIViewController, UIKitOAuthPresentable {

    var token: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getToken()
    }
    
    func getToken() {
        presentAuthenticator(urlString: "https://nightly-accounts-api.complyment.com/authz-srv/authz", clientId: "236b91c8-b2f0-4891-a83c-f358a109a843", redirectUri: "http://localhost:3000") { token in
            self.token = token
        }
    }
    
}
