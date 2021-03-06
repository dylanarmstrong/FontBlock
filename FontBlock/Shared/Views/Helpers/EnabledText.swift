import SwiftUI

struct EnabledText: View {
  var body: some View {
    VStack {
      Text("External font blocking is enabled!")
      Text("You’re all set!")
    }
  }
}

struct EnabledText_Previews: PreviewProvider {
  static var previews: some View {
    EnabledText()
  }
}
