import SwiftUI

// MacOS Specific
struct DisabledText: View {
  var body: some View {
    VStack {
      Text("Enable \(Constants.appName) in")
      #if os(macOS)
        Text("Safari → Settings → Extensions")
      #else
        Text("Settings → Safari → Content Blockers")
      #endif
      Text("to enjoy a faster web.")
    }
  }
}

struct DisabledText_Previews: PreviewProvider {
  static var previews: some View {
    DisabledText()
  }
}
