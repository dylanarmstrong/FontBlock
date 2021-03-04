import SafariServices
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var disabledLabel: UILabel!
    @IBOutlet weak var enabledLabel: UILabel!

    override var preferredStatusBarStyle : UIStatusBarStyle {
        return UIStatusBarStyle.lightContent;
    }

    override func viewWillAppear(_ animated: Bool) {
        NotificationCenter.default.addObserver(self, selector: #selector(checkEnabled), name: UIApplication.didBecomeActiveNotification, object: nil)
        
        checkEnabled()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        NotificationCenter.default.removeObserver(self, name: UIApplication.didBecomeActiveNotification, object: nil)
    }
    
    @objc func checkEnabled() {
        SFContentBlockerManager.getStateOfContentBlocker(withIdentifier: "com.kablock.ios.KaBlockContentBlocker", completionHandler: {
            (state, error) in

            if let state = state {
                DispatchQueue.main.async {
                    self.enabledLabel.isHidden = !state.isEnabled
                    self.disabledLabel.isHidden = state.isEnabled
                }
            }
        })
    }
}
