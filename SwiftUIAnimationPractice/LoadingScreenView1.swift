// Description: pulsing nobs logo without the dot; two door "nobs" orbit around the nobs door. Moving background images
// LoadingScreenView2 and LoadingScreen3 are similarly structured; thus, only this file is commented
// TODO: Make sure the tile images render smoothly (i.e. get rid of the "jolt" on the left side as the animation restarts); perhaps change "fileprivate" in the future.
import SwiftUI

struct LoadingScreenView1: View {
    // state variable that moves the dot in a circular path
    @State var moveOnCircularPath: Bool = false
    // state variable that makes nobs logo pulse
    @State var pulse: Bool = true
    //@State var isVisible: Bool = false
    // state variable that moves the background image
    @State var isMoving: Bool = false
    // private because this list is equally in the other versions of the loading screen; the array could differ in the future
    fileprivate let backgroundImageList: [String] = ["Comet", "Planet", "RocketShip", "Satellite", "UFO"]
    // random number that corresponds to the index of the image in the array above
    fileprivate let imageIndex = Int.random(in: 0..<5)
    
    var body: some View {
        ZStack {
            // background color
            Color.init(red: 0.26, green: 1.00, blue: 0.73)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            // background images
            Image(backgroundImageList[imageIndex])
                .resizable(resizingMode: .tile)
                //.resizable()
                //.edgesIgnoringSafeArea(.all)
                .ignoresSafeArea(.all)
                .scaledToFill()
                .opacity(0.085)
                .offset(x: isMoving ? 380 : -300, y: 0) //isMoving ? -300 : 300)
                .onAppear() {
                    self.isMoving.toggle()
                }
                .animation(Animation.linear(duration: 10).repeatForever(autoreverses: false))
                //.rotationEffect(Angle(radians: -.pi / 4))
            // nobs logo without the dot
            NobsDoor()
                .foregroundColor(.black)
                .frame(width: 72, height: 88, alignment: .center)
                .aspectRatio(contentMode: .fit)
                .scaleEffect(self.pulse ? 1 : 0.7)
                .opacity(self.pulse ? 1 : 0)
                .onAppear() {
                    self.pulse.toggle()
                }
                .animation(Animation.linear(duration: 0.9).repeatForever(autoreverses: true))
                
            /*
 
            NobsDot()
                .foregroundColor(.black)
                .frame(width: 20, height: 20, alignment: .center)
                .aspectRatio(contentMode: .fit)
 
            */
           
            
            /*
            
            Circle()
                .stroke(Color.init(red: 0.3, green: 0.72, blue: 0.4, opacity: 1), lineWidth: 17)
                .frame(width: 200, height: 200, alignment: .center)
 
 
            */
           
            
            /*
            Circle()
                .stroke(Color(.black), lineWidth: 4)
                .frame(width: 200, height: 200, alignment: .center)
                .opacity(1)
 
 
            */
            
            Circle()
                .foregroundColor(.black)
                .frame(width: 17, height: 17)
                .offset(x: 0, y: -100)
                //.opacity(self.isVisible ? 1 : 0)
                .rotationEffect(.degrees(moveOnCircularPath ? 0 :  -360))
                .animation(Animation.easeInOut(duration: 1.8).repeatForever(autoreverses: false))
                //.animation(Animation.linear(duration: 1.2).repeatForever(autoreverses: false))
                .onAppear() {
                    //self.isVisible.toggle()
                    self.moveOnCircularPath.toggle()
                }
            Circle()
                .foregroundColor(.black)
                .frame(width: 17, height: 17)
                .offset(x: 0, y: 100)
                //.opacity(self.isVisible ? 1 : 0)
                .rotationEffect(.degrees(moveOnCircularPath ? 0 :  -360))
                .animation(Animation.easeInOut(duration: 1.8).repeatForever(autoreverses: false))
                //.animation(Animation.linear(duration: 1.2).repeatForever(autoreverses: false))
                .onAppear()
             
            
        }
    }
}


// nobs logo without the dot/doorknob as a SwiftUI Path type conforming to the Shape protocol
struct NobsDoor: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.87707*width, y: 0.67382*height))
        path.addCurve(to: CGPoint(x: 0.87683*width, y: 0.41627*height), control1: CGPoint(x: 0.87707*width, y: 0.58797*height), control2: CGPoint(x: 0.87812*width, y: 0.50211*height))
        path.addCurve(to: CGPoint(x: 0.5913*width, y: 0.11255*height), control1: CGPoint(x: 0.87469*width, y: 0.27018*height), control2: CGPoint(x: 0.75958*width, y: 0.14858*height))
        path.addCurve(to: CGPoint(x: 0.13041*width, y: 0.36474*height), control1: CGPoint(x: 0.37953*width, y: 0.06721*height), control2: CGPoint(x: 0.16073*width, y: 0.1866*height))
        path.addCurve(to: CGPoint(x: 0.12312*width, y: 0.92336*height), control1: CGPoint(x: 0.12285*width, y: 0.60532*height), control2: CGPoint(x: 0.1232*width, y: 0.76434*height))
        path.addCurve(to: CGPoint(x: 0.12151*width, y: 0.95838*height), control1: CGPoint(x: 0.12312*width, y: 0.93506*height), control2: CGPoint(x: 0.12432*width, y: 0.947*height))
        path.addCurve(to: CGPoint(x: 0.06531*width, y: 0.99987*height), control1: CGPoint(x: 0.11541*width, y: 0.98294*height), control2: CGPoint(x: 0.09672*width, y: 0.99828*height))
        path.addCurve(to: CGPoint(x: 0.00546*width, y: 0.96638*height), control1: CGPoint(x: 0.0356*width, y: 1.00139*height), control2: CGPoint(x: 0.01485*width, y: 0.98908*height))
        path.addCurve(to: CGPoint(x: 0.0002*width, y: 0.93189*height), control1: CGPoint(x: 0.00102*width, y: 0.95561*height), control2: CGPoint(x: 0.00024*width, y: 0.94343*height))
        path.addQuadCurve(to: CGPoint(x: 0, y: 0.4402*height), control: CGPoint(x: -0.00022*width, y: 0.68605*height))
        path.addCurve(to: CGPoint(x: 0.21462*width, y: 0.07648*height), control1: CGPoint(x: 0.00014*width, y: 0.29063*height), control2: CGPoint(x: 0.06136*width, y: 0.16396*height))
        path.addCurve(to: CGPoint(x: 0.70243*width, y: 0.03828*height), control1: CGPoint(x: 0.36719*width, y: -0.01051*height), control2: CGPoint(x: 0.5335*width, y: -0.02346*height))
        path.addCurve(to: CGPoint(x: 0.99049*width, y: 0.36229*height), control1: CGPoint(x: 0.87168*width, y: 0.10015*height), control2: CGPoint(x: 0.9792*width, y: 0.21072*height))
        path.addCurve(to: CGPoint(x: 0.99951*width, y: 0.94429*height), control1: CGPoint(x: 1.0049*width, y: 0.55573*height), control2: CGPoint(x: 0.9983*width, y: 0.75026*height))
        path.addCurve(to: CGPoint(x: 0.9355*width, y: 0.99937*height), control1: CGPoint(x: 0.99971*width, y: 0.97747*height), control2: CGPoint(x: 0.96961*width, y: 1.00072*height))
        path.addCurve(to: CGPoint(x: 0.87747*width, y: 0.94308*height), control1: CGPoint(x: 0.90212*width, y: 0.99805*height), control2: CGPoint(x: 0.8777*width, y: 0.97555*height))
        path.addCurve(to: CGPoint(x: 0.87725*width, y: 0.67382*height), control1: CGPoint(x: 0.87685*width, y: 0.85333*height), control2: CGPoint(x: 0.87725*width, y: 0.76359*height))
        path.closeSubpath()
        return path
    }
}


/*

struct NobsDot: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.50053*width, y: 0))
        path.addCurve(to: CGPoint(x: 1.00007*width, y: 0.50059*height), control1: CGPoint(x: 0.77284*width, y: 0.00016*height), control2: CGPoint(x: 1.00026*width, y: 0.22808*height))
        path.addCurve(to: CGPoint(x: 0.49888*width, y: 1.00007*height), control1: CGPoint(x: 0.9998*width, y: 0.77225*height), control2: CGPoint(x: 0.77107*width, y: 1.00007*height))
        path.addCurve(to: CGPoint(x: 0, y: 0.49885*height), control1: CGPoint(x: 0.2267*width, y: 1.00007*height), control2: CGPoint(x: -0.00026*width, y: 0.77169*height))
        path.addCurve(to: CGPoint(x: 0.50053*width, y: 0), control1: CGPoint(x: 0.00026*width, y: 0.22601*height), control2: CGPoint(x: 0.22703*width, y: 0))
        path.closeSubpath()
        return path
    }
}

*/


struct LoadingScreenView1_Previews: PreviewProvider {
    static var previews: some View {
        LoadingScreenView1()
    }
}
