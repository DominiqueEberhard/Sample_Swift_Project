import SwiftUI

struct SizeTesting: View {
    @State var isExpanding: Bool = false
    let deviceScreenWidth = UIScreen.main.bounds.size.width
    let deviceScreenHeight = UIScreen.main.bounds.size.height
    let deviceScreenSize = UIScreen.main.bounds.size
    var body: some View {
        ZStack {
            NobsDoorPlusOpenN()
                .scaleEffect(x: isExpanding ? 1.1 * deviceScreenWidth : 3.0, y: isExpanding ? 1.1 * deviceScreenHeight : 3.0)
        }
        .onAppear() {
            withAnimation(Animation.easeInOut(duration: 10)) {
                self.isExpanding = true
            }
        }
    }
}

struct SizeTesting_Previews: PreviewProvider {
    static var previews: some View {
        SizeTesting()
    }
}
