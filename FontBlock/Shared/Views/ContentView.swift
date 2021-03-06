import SwiftUI

struct ContentView: View {
  @EnvironmentObject var status: Status

  var body: some View {
    GeometryReader { geometry in
      VStack {
        Group {
          Image("Enabled")
            .resizable()
            .onTapGesture(count: 1, perform: {
              let isDebug = status.isDebug
              status.isDebug = !isDebug
            })
            .frame(width: geometry.size.width * 0.9, height: geometry.size.width * 0.9)
        }
        .frame(width: geometry.size.width, height: geometry.size.height * 0.66)
        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 0.932, green: 0.163, blue: 0.406)/*@END_MENU_TOKEN@*/)
        
        Group {
          if status.isEnabled {
            EnabledText()
          } else {
            DisabledText()
          }
        }
        .padding(.vertical)
        .frame(width: geometry.size.width, height: geometry.size.height * 0.33)
        
        if status.isDebug {
          DebugText()
        }
        
        Spacer()
      }
      .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.white/*@END_MENU_TOKEN@*/)
      .ignoresSafeArea(edges: .top)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .environmentObject(Status())
  }
}
