// DESCRIPTION: First three steps of a four step animation. Step 1: Outline of the Nobs door is drawn in mint green onto the dark green background. Step 2: Outline of the nobs door logo is filled in with mint green. Step 3: Nobs door logo opens up, grows and changes from mint green to black in color. Meanwhile, background color transitions from dark green to mint green. Sound effect plays. There is also a sound element, with which there is a .5 probability that my voice plays. The other .5 is probability that a creaking door sound plays.

import SwiftUI

struct TestTransition2: View {
    @State var isTurned: Bool = true
    let darkGreen: Color = Color.init(red: 0, green: 0.498, blue: 0.435)
    let mintGreen: Color = Color.init(red: 0.26, green: 1, blue: 0.73)
    @State var endAmount: CGFloat = 0
    @State var hasFill: Bool = false
    @State var doneTurning: Bool = false
    let animationStep1: Double = 0.3
    let animationStep2: Double = 0.3
    let animationStep3: Double = 0.7
    let animationStep4: Double = 1
    let deviceScreenWidth = UIScreen.main.bounds.size.width
    let deviceScreenHeight = UIScreen.main.bounds.size.height
    let deviceScreenSize = UIScreen.main.bounds.size
    let chanceOfBeingMyVoice = Int.random(in: 0..<2)
    fileprivate let soundFxIndex = Int.random(in: 0..<2)
    fileprivate let soundFxList: [String] = ["DominiqueChoir, angelicChoir, openingDoorFx"]
    
    var body: some View {
        ZStack {
            Color.init(red: isTurned ? 0 : 0.26, green: isTurned ? 0.498 : 1, blue: isTurned ?  0.435 : 0.73)
                .ignoresSafeArea(.all)
                //.animation(Animation.spring(response: 0.7, dampingFraction: 0.7, blendDuration: 1))
                //.animation(Animation.easeInOut(duration: 1))
            ZStack {
                ZStack {
                        NobsN()
                            .trim(from: 0, to: endAmount)
                            .stroke(lineWidth: 0.5)
                            .fill(self.mintGreen)
                            .frame(width: 50, height: 50, alignment: .center)
                            .opacity(isTurned ? 1 : 0)
                        NobsN()
                            .fill(self.mintGreen)
                            .frame(width: 50, height: 50, alignment: .center)
                            .opacity(hasFill ? 1 : 0)
                        NobsDoor()
                            .stroke(isTurned ? self.mintGreen : Color.black, lineWidth: 2)
                            .frame(width: 50, height: 50, alignment: .center)
                            .opacity(isTurned ? 0 : 1)
                        NobsN()
                            .fill(isTurned ? self.mintGreen : Color.black)
                            .frame(width: 50, height: 50, alignment: .center)
                            .rotation3DEffect(
                                .degrees(isTurned ? 0 : 110),
                                axis: (x: 0, y: 0.5, z: 0),
                                anchor: .center,
                                anchorZ: 1.0,
                                perspective: 1.0
                            )
                            .offset(x: isTurned ? 0 : 31, y: isTurned ? 0 : 6)
                            .opacity(isTurned ? 0 : 1)
                            //.opacity(doneTurning ? 0 : 1)
                    }
                    .scaleEffect(x: 1.0, y: 1.2, anchor: .center)
                .scaleEffect(x: isTurned ? 1.0 : 2.5, y: isTurned ? 1.0 : 2.5, anchor: .center)
            }
        }
        .onAppear() {
            withAnimation(Animation.easeInOut(duration: animationStep1)) {
                self.endAmount = 1
            }
            withAnimation(Animation.easeInOut(duration: animationStep2).delay(animationStep2)) {
                self.hasFill = true
            }
            withAnimation(Animation.spring(response: animationStep3, dampingFraction: 0.65, blendDuration: 1).delay(animationStep2 + animationStep3)) {
                self.isTurned = false
                DispatchQueue.main.asyncAfter(deadline: .now() + animationStep1 + animationStep2) {
                    if chanceOfBeingMyVoice == 1 {
                        playSound(sound: "DominiqueChoir", type: "mp3")
                    } else {
                        playSound(sound: "openingDoorFx", type: "mp3")
                    }
                    //playSound(sound: "angelicChoir", type: "mp3")
                    //playSound(sound: soundFxList[soundFxIndex], type: "mp3")
                }
            }
            withAnimation(Animation.easeIn(duration: animationStep4).delay(animationStep1 + animationStep2 + animationStep3 + animationStep4)) {
                self.doneTurning = true
            }
        }
    }
}


 struct NobsDoorPlusOpenN: View {
    var body: some View {
        ZStack {
            NobsDoor()
                .stroke(Color.black, lineWidth: 2)
                .frame(width: 50, height: 50, alignment: .center)
                .opacity(1)
            NobsN()
                .fill(Color.black)
                .frame(width: 50, height: 50, alignment: .center)
                .rotation3DEffect(
                    .degrees(110),
                    axis: (x: 0, y: 0.5, z: 0),
                    anchor: .center,
                    anchorZ: 1.0,
                    perspective: 1.0
                )
                .offset(x: 31, y: 6)
        }
        .scaleEffect(x: 1.0, y: 1.2, anchor: .center)
    }
}


struct TestTransition2_Previews: PreviewProvider {
    static var previews: some View {
        TestTransition2()
    }
}
