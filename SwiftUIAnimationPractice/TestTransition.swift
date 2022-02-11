import SwiftUI

struct TestTransition: View {
    @State var morph: Bool = false
    
    var body: some View {
        ZStack {
            Color.init(red: 0.26, green: 1, blue: 0.73)
                .ignoresSafeArea(.all)
            /*Image("nobsPixelLogo")
                .resizable(resizingMode: .tile)
                .ignoresSafeArea(.all)
                .opacity(0.3)
                .scaleEffect(x: morph ? 1.0 : 1.3, y: morph ? 1.0 : 1.3, anchor: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .animation(.easeInOut(duration: 2))
            */
            NobsDoor()
                .stroke(lineWidth: 2)
                .frame(width: 50, height: 50, alignment: .center)
                .opacity(morph ? 0 : 1)
                .animation(.easeInOut(duration: 1))
            
            NobsN()
                .frame(width: 50, height: 50, alignment: .center)
                .opacity(morph ? 1 : 0)
                .animation(.easeInOut(duration: 1))
                .rotation3DEffect(
                    /*@START_MENU_TOKEN@*/.zero/*@END_MENU_TOKEN@*/,
                    axis: /*@START_MENU_TOKEN@*/(x: 0.0, y: 1.0, z: 0.0)/*@END_MENU_TOKEN@*/,
                    anchor: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/,
                    anchorZ: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/,
                    perspective: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/
                )
                
            Noblox()
                //.foregroundColor(.white)
                .scaleEffect(x: 1.4, y: 1.4, anchor: .center)
                .offset(x: -10, y: 4)
                .frame(width: 50, height: 50, alignment: .center)
                .opacity(morph ? 0 : 1)
                .animation(.easeInOut(duration: 1))
        }
        .onTapGesture {
            self.morph.toggle()
        }
    }
}

struct TestTransition_Previews: PreviewProvider {
    static var previews: some View {
        TestTransition()
    }
}
