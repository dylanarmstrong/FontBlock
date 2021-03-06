import Foundation
import SafariServices

final class Status: ObservableObject {
  @Published var isEnabled: Bool = false
  @Published var isDebug: Bool = false
  
  init() {
    self.getStateOfContentBlocker()
    
    let _ = Timer.scheduledTimer(withTimeInterval: 10, repeats: true)
    {
      _ in self.getStateOfContentBlocker()
    }
  }
  
  func getStateOfContentBlocker() {
    SFContentBlockerManager.getStateOfContentBlocker(withIdentifier: Constants.contentBlockerIdentifier)
    {
      (state, _) in
      if let state = state {
        DispatchQueue.main.async {
          self.isEnabled = state.isEnabled
        }
      }
    }
  }
}
