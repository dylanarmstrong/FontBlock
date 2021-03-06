import SwiftUI

struct DebugText: View {
  var body: some View {
    VStack {
      Text("v\(Constants.appVersion).\(Constants.bundleVersion)")
    }
  }
}

struct DebugText_Previews: PreviewProvider {
  static var previews: some View {
    DebugText()
  }
}
