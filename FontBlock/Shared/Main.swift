import SwiftUI

@main
struct Main: App {
  @StateObject private var status = Status()
  
  var body: some Scene {
    #if os(macOS)
      WindowGroup {
        ContentView()
          .environmentObject(status)
          .frame(width: 350, height: 700)
      }
      .windowStyle(HiddenTitleBarWindowStyle())
    #else
      WindowGroup {
        ContentView()
          .environmentObject(status)
      }
    #endif
  }
}
