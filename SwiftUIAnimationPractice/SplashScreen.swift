//Description: This builds upon the previous TestTransition2 and allows the viewer to enter the open door once it has been opened. 

import SwiftUI

struct SplashScreen: View {
    @State var firstPartOver: Bool = false
    let mintGreen: Color = Color.init(red: 0.26, green: 1, blue: 0.73)
    let deviceScreenWidth = UIScreen.main.bounds.size.width
    let deviceScreenHeight = UIScreen.main.bounds.size.height
    let deviceScreenSize = UIScreen.main.bounds.size
    
    var body: some View {
        ZStack {
            ZStack {
                TestTransition2()
            }
            .scaleEffect(x: firstPartOver ? 16 : 1, y: firstPartOver ? 16 : 1)
        }
        .onAppear() {
            withAnimation(Animation.spring(response: 1).delay(1.7)) {
                self.firstPartOver = true
            }
            //playSound(sound: "angelicChoir", type: "mp3")
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
