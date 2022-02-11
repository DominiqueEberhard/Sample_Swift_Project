//
//  LoadingScreenView4.swift
//  SwiftUIAnimationPractice
//
//  Created by Dominique Eberhard on 4/15/21.
//

// DESCRIPTION: The Same Idea as Loading Screens 1-3, but this time with the pulsing nobs logo in full

import SwiftUI

struct LoadingScreenView4: View {
    @State var pulse: Bool = false
    @State var isMoving: Bool = false
    let darkGreen: Color = Color.init(red: 0, green: 0.498, blue: 0.435)
    let mintGreen: Color = Color.init(red: 0.26, green: 1, blue: 0.73)
    fileprivate let backgroundImageList: [String] = ["Comet", "Planet", "RocketShip", "Satellite", "UFO"]
    fileprivate let imageIndex = Int.random(in: 0..<5)
    
        
    var body: some View {
        ZStack {
            mintGreen
                .ignoresSafeArea(.all)
            Image(backgroundImageList[imageIndex])
                .resizable(resizingMode: .tile)
                .ignoresSafeArea(.all)
                .scaledToFill()
                .opacity(0.085)
                .offset(x: isMoving ? 380 : -300, y: 0) //isMoving ? -300 : 300)
                .onAppear() {
                    self.isMoving.toggle()
                }
                .animation(Animation.linear(duration: 20).repeatForever(autoreverses: false))
            NobsBoxLogo()
                .aspectRatio(contentMode: .fit)
                .scaleEffect(self.pulse ? 1 : 0.8)
                .opacity(self.pulse ? 1 : 0)
                .onAppear() {
                    self.pulse.toggle()
                }
                .animation(Animation.easeInOut(duration: 1.1).repeatForever(autoreverses: true))
        }
    }
}

struct LoadingScreenView4_Previews: PreviewProvider {
    static var previews: some View {
        LoadingScreenView4()
    }
}
