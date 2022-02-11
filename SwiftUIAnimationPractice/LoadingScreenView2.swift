// Description: Full nobs logo pulsing with the moving background images
// see LoadingScreenView1 for comments further comments
import SwiftUI

struct LoadingScreenView2: View {
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
                .offset(x: isMoving ? 380 : -300, y: 0) //isMoving ? -300 : 300)
                .onAppear() {
                    self.isMoving.toggle()
                }
                .animation(Animation.linear(duration: 8).repeatForever(autoreverses: false))
            //RoundedRectangle(cornerRadius: 3)
                //.stroke(lineWidth: 10)
                //.frame(width: 120, height: 120)
                //.foregroundColor(.black)
            NobsFullLogo()
                .foregroundColor(.black)
                //.foregroundColor(Color.init(red: 0.52, green: 0.6, blue: 0.55))
                .frame(width: 72, height: 88, alignment: .center)
                .aspectRatio(contentMode: .fit)
                .scaleEffect(self.pulse ? 1 : 0.8)
                .opacity(self.pulse ? 1 : 0)
                .onAppear() {
                    self.pulse.toggle()
                }
                .animation(Animation.easeInOut(duration: 1.1).repeatForever(autoreverses: true))
            
            
            /*
            // this is to have a 3D-like effect; comment the first modifier and uncomment the second one on the NobsFullLogo() instantiation above as well as uncomment this block of code to see what happens
            NobsFullLogo()
                .foregroundColor(.black)
                .frame(width: 72, height: 84, alignment: .center)
                .aspectRatio(contentMode: .fit)
                .offset(x: -5, y: -4)
                .scaleEffect(self.pulse ? 1 : 0.8)
                .opacity(self.pulse ? 1 : 0)
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

struct NobsFullLogo: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.8692*width, y: 0.67217*height))
        path.addCurve(to: CGPoint(x: 0.86907*width, y: 0.41934*height), control1: CGPoint(x: 0.8692*width, y: 0.58793*height), control2: CGPoint(x: 0.86987*width, y: 0.5037*height))
        path.addCurve(to: CGPoint(x: 0.57266*width, y: 0.11425*height), control1: CGPoint(x: 0.86762*width, y: 0.26813*height), control2: CGPoint(x: 0.74981*width, y: 0.14731*height))
        path.addCurve(to: CGPoint(x: 0.13927*width, y: 0.36788*height), control1: CGPoint(x: 0.37188*width, y: 0.07682*height), control2: CGPoint(x: 0.1595*width, y: 0.19881*height))
        path.addCurve(to: CGPoint(x: 0.1311*width, y: 0.60991*height), control1: CGPoint(x: 0.12965*width, y: 0.448*height), control2: CGPoint(x: 0.13198*width, y: 0.52919*height))
        path.addCurve(to: CGPoint(x: 0.13078*width, y: 0.93452*height), control1: CGPoint(x: 0.1299*width, y: 0.7181*height), control2: CGPoint(x: 0.13095*width, y: 0.82629*height))
        path.addCurve(to: CGPoint(x: 0.06727*width, y: 1.00002*height), control1: CGPoint(x: 0.13078*width, y: 0.97683*height), control2: CGPoint(x: 0.1083*width, y: 0.99967*height))
        path.addCurve(to: CGPoint(x: 0, y: 0.93619*height), control1: CGPoint(x: 0.02625*width, y: 1.00037*height), control2: CGPoint(x: -0.0003*width, y: 0.97666*height))
        path.addCurve(to: CGPoint(x: 0.00719*width, y: 0.37268*height), control1: CGPoint(x: 0.00137*width, y: 0.74833*height), control2: CGPoint(x: -0.00132*width, y: 0.56034*height))
        path.addCurve(to: CGPoint(x: 0.45586*width, y: 0.00113*height), control1: CGPoint(x: 0.01593*width, y: 0.18045*height), control2: CGPoint(x: 0.22605*width, y: 0.01438*height))
        path.addCurve(to: CGPoint(x: 0.98564*width, y: 0.3281*height), control1: CGPoint(x: 0.74192*width, y: -0.01545*height), control2: CGPoint(x: 0.94893*width, y: 0.15263*height))
        path.addCurve(to: CGPoint(x: 0.9997*width, y: 0.9148*height), control1: CGPoint(x: 1.00065*width, y: 0.60505*height), control2: CGPoint(x: 0.99973*width, y: 0.75993*height))
        path.addCurve(to: CGPoint(x: 0.999*width, y: 0.94562*height), control1: CGPoint(x: 0.9997*width, y: 0.92507*height), control2: CGPoint(x: 1.00037*width, y: 0.93535*height))
        path.addCurve(to: CGPoint(x: 0.93158*width, y: 0.99903*height), control1: CGPoint(x: 0.99461*width, y: 0.97804*height), control2: CGPoint(x: 0.96641*width, y: 0.99998*height))
        path.addCurve(to: CGPoint(x: 0.86952*width, y: 0.94221*height), control1: CGPoint(x: 0.89584*width, y: 0.99803*height), control2: CGPoint(x: 0.86982*width, y: 0.97559*height))
        path.addCurve(to: CGPoint(x: 0.8692*width, y: 0.67217*height), control1: CGPoint(x: 0.86865*width, y: 0.8521*height), control2: CGPoint(x: 0.86917*width, y: 0.76221*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.24909*width, y: 0.63675*height))
        path.addCurve(to: CGPoint(x: 0.1523*width, y: 0.55999*height), control1: CGPoint(x: 0.19765*width, y: 0.63732*height), control2: CGPoint(x: 0.15375*width, y: 0.60252*height))
        path.addCurve(to: CGPoint(x: 0.24418*width, y: 0.47987*height), control1: CGPoint(x: 0.15086*width, y: 0.51746*height), control2: CGPoint(x: 0.19261*width, y: 0.48091*height))
        path.addCurve(to: CGPoint(x: 0.34394*width, y: 0.55773*height), control1: CGPoint(x: 0.29764*width, y: 0.47867*height), control2: CGPoint(x: 0.34369*width, y: 0.51463*height))
        path.addCurve(to: CGPoint(x: 0.24909*width, y: 0.63675*height), control1: CGPoint(x: 0.34419*width, y: 0.59896*height), control2: CGPoint(x: 0.29966*width, y: 0.63615*height))
        path.closeSubpath()
        return path
    }
}


struct LoadingScreenView2_Previews: PreviewProvider {
    static var previews: some View {
        LoadingScreenView2()
    }
}

