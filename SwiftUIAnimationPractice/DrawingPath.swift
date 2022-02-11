// DESCRIPTION: This is just practice to draw the outline of a path and then fill it. 

import SwiftUI

struct DrawingPath: View {
    @State var endAmount: CGFloat = 0
    @State var hasFill: Bool = false
    let animationStep1: Double = 0.7
    var body: some View {
        ZStack {
            NobsN()
                .trim(from: 0, to: endAmount)
                .stroke(lineWidth: 2)
                .frame(width: 50, height: 50, alignment: .center)
            NobsN()
                .frame(width: 50, height: 50, alignment: .center)
                .opacity(hasFill ? 1 : 0)
        }
        .onAppear() {
            withAnimation(Animation.linear(duration: animationStep1)) {
                self.endAmount = 1
            }
            withAnimation(Animation.linear(duration: 0.3).delay(animationStep1)) {
                self.hasFill = true
            }
        }
    }
}

struct DrawingPath_Previews: PreviewProvider {
    static var previews: some View {
        DrawingPath()
    }
}
