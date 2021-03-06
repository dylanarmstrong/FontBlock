import Foundation

struct Constants {
  static let blockerListURL:URL = URL.init(string:"https://raw.githubusercontent.com/dylanarmstrong/FontBlock/master/FontBlock.safariextension/blockerList.json")!
  
  static let identifier: String = Bundle.main.infoDictionary!["CFBundleIdentifier"] as! String
  static let contentBlockerIdentifier: String = "\(identifier).ContentBlocker"
  static let appName: String = Bundle.main.infoDictionary!["CFBundleName"] as! String
  static let appVersion: String = Bundle.main.infoDictionary!["CFBundleShortVersionString"] as! String
  static let bundleVersion: String = Bundle.main.infoDictionary!["CFBundleVersion"] as! String
}
