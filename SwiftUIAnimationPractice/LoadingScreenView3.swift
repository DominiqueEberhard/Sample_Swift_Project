// Description: Attempt at making a loading screen like LoadingScreenView2, but with the box nobs logo
// see LoadingScreenView1 for comments
// TODO: Find a way to make the Path draw the full nobs logo with the box




 import SwiftUI

struct LoadingScreenView3: View {
    @State var pulse: Bool = false
    @State var isMoving: Bool = false
    fileprivate let backgroundImageList: [String] = ["Comet", "Planet", "RocketShip", "Satellite", "UFO"]
    fileprivate let imageIndex = Int.random(in: 0..<5)
    //@State var pulse2: Bool = false
    var body: some View {
        ZStack {
            Color.init(red: 0.26, green: 1.00, blue: 0.73)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Image(backgroundImageList[imageIndex])
                .resizable(resizingMode: .tile)
                //.resizable()
                .edgesIgnoringSafeArea(.all)
                .scaledToFill()
                .opacity(0.085)
                .offset(x: isMoving ? 300 : -300, y: 0) //isMoving ? -300 : 300)
                .onAppear() {
                    self.isMoving.toggle()
                }
                .animation(Animation.linear(duration: 7).repeatForever(autoreverses: false))
            /*NobsBoxLogo()
                //.foregroundColor(.black)
                .frame(width: 72, height: 88, alignment: .center)
                .aspectRatio(contentMode: .fit)
                .scaleEffect(self.pulse ? 1 : 0.7)
                .opacity(self.pulse ? 1 : 0)
                .onAppear() {
                    self.pulse.toggle()
                }
                .animation(Animation.easeInOut(duration: 1.1).repeatForever(autoreverses: true))
            */
            
            
            /*
            Circle()
                .stroke(Color(.black), lineWidth: self.pulse2 ? 20 : 2)
                .frame(width: 200, height: 200, alignment: .center)
                //.scaleEffect(self.pulse2 ? 1 : 0.7)
                //.opacity(self.pulse2 ? 1 : 0)
                .animation(Animation.easeInOut(duration: 1.1).repeatForever(autoreverses: true))
 
             */
        }
    }
}


struct NobsFullerLogo: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: width, y: 0.50011*height))
        path.addLine(to: CGPoint(x: width, y: 0.95475*height))
        path.addCurve(to: CGPoint(x: 0.95494*width, y: 1.00022*height), control1: CGPoint(x: width, y: 0.98991*height), control2: CGPoint(x: 0.98986*width, y: 1.00011*height))
        path.addLine(to: CGPoint(x: 0.04454*width, y: 1.00022*height))
        path.addCurve(to: CGPoint(x: 0, y: 0.95538*height), control1: CGPoint(x: 0.01084*width, y: 0.99998*height), control2: CGPoint(x: 0, y: 0.98924*height))
        path.addLine(to: CGPoint(x: 0, y: 0.04462*height))
        path.addCurve(to: CGPoint(x: 0.04457*width, y: 0), control1: CGPoint(x: 0, y: 0.01082*height), control2: CGPoint(x: 0.01084*width, y: 0))
        path.addLine(to: CGPoint(x: 0.95643*width, y: 0))
        path.addCurve(to: CGPoint(x: 0.99998*width, y: 0.04384*height), control1: CGPoint(x: 0.98921*width, y: 0), control2: CGPoint(x: 0.99998*width, y: 0.01082*height))
        path.addQuadCurve(to: CGPoint(x: width, y: 0.50011*height), control: CGPoint(x: 1.00004*width, y: 0.27192*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.93302*width, y: 0.06711*height))
        path.addLine(to: CGPoint(x: 0.06815*width, y: 0.06711*height))
        path.addLine(to: CGPoint(x: 0.06815*width, y: 0.93293*height))
        path.addLine(to: CGPoint(x: 0.93302*width, y: 0.93293*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.79117*width, y: 0.6079*height))
        path.addCurve(to: CGPoint(x: 0.79117*width, y: 0.80162*height), control1: CGPoint(x: 0.79117*width, y: 0.67248*height), control2: CGPoint(x: 0.7913*width, y: 0.73706*height))
        path.addCurve(to: CGPoint(x: 0.75944*width, y: 0.84401*height), control1: CGPoint(x: 0.79117*width, y: 0.82479*height), control2: CGPoint(x: 0.77854*width, y: 0.84107*height))
        path.addCurve(to: CGPoint(x: 0.71542*width, y: 0.80398*height), control1: CGPoint(x: 0.73497*width, y: 0.84778*height), control2: CGPoint(x: 0.71546*width, y: 0.83035*height))
        path.addCurve(to: CGPoint(x: 0.71483*width, y: 0.45081*height), control1: CGPoint(x: 0.71529*width, y: 0.68625*height), control2: CGPoint(x: 0.71604*width, y: 0.56852*height))
        path.addCurve(to: CGPoint(x: 0.48537*width, y: 0.22763*height), control1: CGPoint(x: 0.67664*width, y: 0.27965*height), control2: CGPoint(x: 0.58447*width, y: 0.21803*height))
        path.addQuadCurve(to: CGPoint(x: 0.29627*width, y: 0.79809*height), control: CGPoint(x: 0.29586*width, y: 0.62602*height))
        path.addCurve(to: CGPoint(x: 0.27279*width, y: 0.84235*height), control1: CGPoint(x: 0.29627*width, y: 0.81719*height), control2: CGPoint(x: 0.29193*width, y: 0.83375*height))
        path.addCurve(to: CGPoint(x: 0.21988*width, y: 0.79965*height), control1: CGPoint(x: 0.21982*width, y: 0.80662*height), control2: CGPoint(x: 0.21988*width, y: 0.80314*height))
        path.addCurve(to: CGPoint(x: 0.2201*width, y: 0.442*height), control1: CGPoint(x: 0.21988*width, y: 0.68045*height), control2: CGPoint(x: 0.21949*width, y: 0.56123*height))
        path.addCurve(to: CGPoint(x: 0.30773*width, y: 0.2307*height), control1: CGPoint(x: 0.22049*width, y: 0.35993*height), control2: CGPoint(x: 0.24854*width, y: 0.28861*height))
        path.addCurve(to: CGPoint(x: 0.7669*width, y: 0.32399*height), control1: CGPoint(x: 0.4496*width, y: 0.09195*height), control2: CGPoint(x: 0.69029*width, y: 0.14105*height))
        path.addCurve(to: CGPoint(x: 0.79117*width, y: 0.6079*height), control1: CGPoint(x: 0.79117*width, y: 0.50061*height), control2: CGPoint(x: 0.79117*width, y: 0.55425*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.37554*width, y: 0.59695*height))
        path.addCurve(to: CGPoint(x: 0.37554*width, y: 0.48142*height), control1: CGPoint(x: 0.31872*width, y: 0.50838*height), control2: CGPoint(x: 0.34528*width, y: 0.48168*height))
        path.addCurve(to: CGPoint(x: 0.43371*width, y: 0.53958*height), control1: CGPoint(x: 0.4058*width, y: 0.48116*height), control2: CGPoint(x: 0.43363*width, y: 0.50875*height))
        path.addCurve(to: CGPoint(x: 0.37554*width, y: 0.59695*height), control1: CGPoint(x: 0.4338*width, y: 0.57097*height), control2: CGPoint(x: 0.40738*width, y: 0.59703*height))
        path.closeSubpath()
        return path
    }
}

struct LoadingScreenView3_Previews: PreviewProvider {
    static var previews: some View {
        LoadingScreenView2()
    }
}
 


