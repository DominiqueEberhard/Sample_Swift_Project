import SwiftUI

struct TestView: View {
    var body: some View {
        VStack {
            Noblox()
                .frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }
    }
}

struct Noblox: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.91935*width, y: 0.56654*height))
        path.addCurve(to: CGPoint(x: 0.91935*width, y: 0.38696*height), control1: CGPoint(x: 0.91935*width, y: 0.5067*height), control2: CGPoint(x: 0.91978*width, y: 0.44685*height))
        path.addCurve(to: CGPoint(x: 0.69692*width, y: 0.12893*height), control1: CGPoint(x: 0.91842*width, y: 0.2794*height), control2: CGPoint(x: 0.83725*width, y: 0.17973*height))
        path.addCurve(to: CGPoint(x: 0.21724*width, y: 0.30576*height), control1: CGPoint(x: 0.50387*width, y: 0.05904*height), control2: CGPoint(x: 0.24558*width, y: 0.1327*height))
        path.addCurve(to: CGPoint(x: 0.20563*width, y: 0.56002*height), control1: CGPoint(x: 0.20352*width, y: 0.38938*height), control2: CGPoint(x: 0.20685*width, y: 0.47495*height))
        path.addCurve(to: CGPoint(x: 0.20517*width, y: 0.90209*height), control1: CGPoint(x: 0.20392*width, y: 0.67417*height), control2: CGPoint(x: 0.20543*width, y: 0.78801*height))
        path.addCurve(to: CGPoint(x: 0.11013*width, y: 0.99394*height), control1: CGPoint(x: 0.20517*width, y: 0.94667*height), control2: CGPoint(x: 0.17244*width, y: 0.97859*height))
        path.addCurve(to: CGPoint(x: 0, y: 0.94685*height), control1: CGPoint(x: 0.04418*width, y: 1.01017*height), control2: CGPoint(x: -0.00052*width, y: 0.9936*height))
        path.addCurve(to: CGPoint(x: 0.01227*width, y: 0.29824*height), control1: CGPoint(x: 0.00235*width, y: 0.73008*height), control2: CGPoint(x: -0.00226*width, y: 0.51381*height))
        path.addCurve(to: CGPoint(x: 0.58966*width, y: 0.01071*height), control1: CGPoint(x: 0.02704*width, y: 0.08017*height), control2: CGPoint(x: 0.33378*width, y: -0.03749*height))
        path.addCurve(to: CGPoint(x: 0.99159*width, y: 0.32805*height), control1: CGPoint(x: 0.83138*width, y: 0.05618*height), control2: CGPoint(x: 0.96971*width, y: 0.20579*height))
        path.addQuadCurve(to: CGPoint(x: 0.99948*width, y: 0.41072*height), control: CGPoint(x: 0.99907*width, y: 0.36938*height))
        path.addCurve(to: CGPoint(x: 0.99983*width, y: 0.72291*height), control1: CGPoint(x: 1.00038*width, y: 0.51477*height), control2: CGPoint(x: 0.99985*width, y: 0.61886*height))
        path.addCurve(to: CGPoint(x: 0.99942*width, y: 0.74375*height), control1: CGPoint(x: 0.99983*width, y: 0.7298*height), control2: CGPoint(x: 1.00023*width, y: 0.73664*height))
        path.addCurve(to: CGPoint(x: 0.95895*width, y: 0.78936*height), control1: CGPoint(x: 0.99684*width, y: 0.76612*height), control2: CGPoint(x: 0.98016*width, y: 0.78491*height))
        path.addCurve(to: CGPoint(x: 0.91967*width, y: 0.75843*height), control1: CGPoint(x: 0.93652*width, y: 0.79397*height), control2: CGPoint(x: 0.91967*width, y: 0.78206*height))
        path.addCurve(to: CGPoint(x: 0.91935*width, y: 0.56654*height), control1: CGPoint(x: 0.919*width, y: 0.69446*height), control2: CGPoint(x: 0.91932*width, y: 0.63054*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.36264*width, y: 0.57796*height))
        path.addCurve(to: CGPoint(x: 0.23554*width, y: 0.50656*height), control1: CGPoint(x: 0.29702*width, y: 0.58285*height), control2: CGPoint(x: 0.23758*width, y: 0.5507*height))
        path.addCurve(to: CGPoint(x: 0.35652*width, y: 0.42446*height), control1: CGPoint(x: 0.23351*width, y: 0.46242*height), control2: CGPoint(x: 0.29035*width, y: 0.42488*height))
        path.addCurve(to: CGPoint(x: 0.47344*width, y: 0.49761*height), control1: CGPoint(x: 0.4209*width, y: 0.42395*height), control2: CGPoint(x: 0.47318*width, y: 0.45775*height))
        path.addCurve(to: CGPoint(x: 0.36264*width, y: 0.57796*height), control1: CGPoint(x: 0.47376*width, y: 0.53572*height), control2: CGPoint(x: 0.42328*width, y: 0.57341*height))
        path.closeSubpath()
        return path
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
