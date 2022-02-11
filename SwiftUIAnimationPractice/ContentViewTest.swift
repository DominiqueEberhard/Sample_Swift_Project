//DESCRIPTION: This is a test that simulates how the splash screen leads smoothly into one of three loading screens chosen at random.

import SwiftUI

struct ContentViewTest: View {
    @State var splashScreen: Bool = true
    @State var loadingScreenIndex = Int.random(in: 0...2)
    
    var body: some View {
        ZStack {
            if loadingScreenIndex == 0 {
                LoadingScreenView1()
            } else if loadingScreenIndex == 1 {
                LoadingScreenView2()
            } else {
                LoadingScreenView4()
            }
            SplashScreen()
                .opacity(splashScreen ? 1 : 0)
                .onAppear() {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        withAnimation(Animation.linear) {
                            self.splashScreen = false
                        }
                    }
                }
                .onDisappear() {
                    self.splashScreen = true
                }
        }
    }
}

struct ContentViewTest_previews: PreviewProvider {
    static var previews: some View {
        ContentViewTest()
    }
}

