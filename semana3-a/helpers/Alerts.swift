import Foundation
import UIKit

class Alerts {
    
    static func makeAlert(title: String?, message: String?, controller: UIViewController) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel)
        alert.addAction(action)
        controller.present(alert, animated: true)
    }
}
