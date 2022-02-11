//DESCRIPTION: This is the full nobs logo drawn using various SwiftUI objects. Note 1: the N is drawn as a path, the O is a circle object, the B is a composite object built from a rounded rectangel and a circle, the S is drawn with a path and the box is a rounded rectangle. Note 2: Since the individual letters are of different types, for the color to be changed, the foregroundColor modifier of each must be set to the desired color.

import SwiftUI

struct NobsBoxLogo: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 1)
                .stroke(lineWidth: 6.3)
                .frame(width: 220, height: 93, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor(.black)
                
            HStack(alignment: .center, spacing: 4) {
                ZStack {
                    NobsN()
                        .foregroundColor(.black)
                        .scaledToFill()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .scaleEffect(x: 0.85, y: 1.0, anchor: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .offset(x: 1)
                    NobsN()
                        .stroke(Color.black, lineWidth: 0.5)
                        .scaledToFill()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .scaleEffect(x: 0.85, y: 1.0, anchor: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .offset(x: 1)
                    
                }
                Circle()
                    .strokeBorder(Color.black, lineWidth: 6)
                    .frame(width: 51, height: 51, alignment: .center)
                    
                NobsBBuild()
                    .foregroundColor(.black)
                    .scaledToFit()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50, alignment: .center)
                    .scaleEffect(x: 1.0, y: 1.0005)
                NobsS()
                    //.stroke(lineWidth: 1)
                    .scaledToFill()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50, alignment: .center)
                    .scaleEffect(x: 0.8, y: 1.0, anchor: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .offset(x: -7, y: 0)
                }
                .foregroundColor(.black)
            .offset(x: 5, y: 10.5)
            }
        }
    }

struct NobsN: Shape {
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


struct NobsB: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.12289*width, y: 0.94561*height))
        path.addCurve(to: CGPoint(x: 0.12289*width, y: 0.9597*height), control1: CGPoint(x: 0.12289*width, y: 0.95136*height), control2: CGPoint(x: 0.12289*width, y: 0.95556*height))
        path.addCurve(to: CGPoint(x: 0, y: 0.95326*height), control1: CGPoint(x: 0, y: 0.95861*height), control2: CGPoint(x: 0, y: 0.9559*height))
        path.addLine(to: CGPoint(x: 0, y: 0.04335*height))
        path.addCurve(to: CGPoint(x: 0.05926*width, y: 0), control1: CGPoint(x: 0, y: 0.01845*height), control2: CGPoint(x: 0.02454*width, y: 0.00063*height))
        path.addQuadCurve(to: CGPoint(x: 0.12289*width, y: 0.31758*height), control: CGPoint(x: 0.12289*width, y: 0.17891*height))
        path.addLine(to: CGPoint(x: 0.12289*width, y: 0.33201*height))
        path.addCurve(to: CGPoint(x: 0.63834*width, y: 0.30223*height), control1: CGPoint(x: 0.28886*width, y: 0.27107*height), control2: CGPoint(x: 0.46037*width, y: 0.25957*height))
        path.addCurve(to: CGPoint(x: 0.86248*width, y: 0.87507*height), control1: CGPoint(x: 1.04681*width, y: 0.58365*height), control2: CGPoint(x: 1.02163*width, y: 0.75607*height))
        path.addCurve(to: CGPoint(x: 0.12289*width, y: 0.94561*height), control1: CGPoint(x: 0.71632*width, y: 0.98396*height), control2: CGPoint(x: 0.41047*width, y: 1.05433*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.12416*width, y: 0.63815*height))
        path.addLine(to: CGPoint(x: 0.12316*width, y: 0.63815*height))
        path.addCurve(to: CGPoint(x: 0.1227*width, y: 0.83063*height), control1: CGPoint(x: 0.12316*width, y: 0.70231*height), control2: CGPoint(x: 0.1237*width, y: 0.76647*height))
        path.addCurve(to: CGPoint(x: 0.58735*width, y: 0.90336*height), control1: CGPoint(x: 0.27595*width, y: 0.92365*height), control2: CGPoint(x: 0.42601*width, y: 0.94113*height))
        path.addCurve(to: CGPoint(x: 0.82994*width, y: 0.51363*height), control1: CGPoint(x: 0.83548*width, y: 0.84523*height), control2: CGPoint(x: 0.94728*width, y: 0.66276*height))
        path.addCurve(to: CGPoint(x: 0.13634*width, y: 0.4244*height), control1: CGPoint(x: 0.69933*width, y: 0.34713*height), control2: CGPoint(x: 0.35648*width, y: 0.30327*height))
        path.addCurve(to: CGPoint(x: 0.12416*width, y: 0.63815*height), control1: CGPoint(x: 0.12425*width, y: 0.5073*height), control2: CGPoint(x: 0.12416*width, y: 0.57261*height))
        path.closeSubpath()
        return path
    }
}

struct NobsS: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.17382*width, y: 0.68172*height))
        path.addCurve(to: CGPoint(x: 0.30553*width, y: 0.85058*height), control1: CGPoint(x: 0.17382*width, y: 0.7581*height), control2: CGPoint(x: 0.22275*width, y: 0.8141*height))
        path.addCurve(to: CGPoint(x: 0.69419*width, y: 0.85039*height), control1: CGPoint(x: 0.43369*width, y: 0.90706*height), control2: CGPoint(x: 0.56614*width, y: 0.90741*height))
        path.addCurve(to: CGPoint(x: 0.82523*width, y: 0.67988*height), control1: CGPoint(x: 0.77739*width, y: 0.81339*height), control2: CGPoint(x: 0.8285*width, y: 0.75723*height))
        path.addCurve(to: CGPoint(x: 0.7363*width, y: 0.54819*height), control1: CGPoint(x: 0.82298*width, y: 0.62575*height), control2: CGPoint(x: 0.78847*width, y: 0.58291*height))
        path.addCurve(to: CGPoint(x: 0.53507*width, y: 0.48502*height), control1: CGPoint(x: 0.6786*width, y: 0.50976*height), control2: CGPoint(x: 0.60965*width, y: 0.49281*height))
        path.addCurve(to: CGPoint(x: 0.30451*width, y: 0.45092*height), control1: CGPoint(x: 0.45747*width, y: 0.4769*height), control2: CGPoint(x: 0.378*width, y: 0.47373*height))
        path.addCurve(to: CGPoint(x: 0.13213*width, y: 0.33671*height), control1: CGPoint(x: 0.23102*width, y: 0.4281*height), control2: CGPoint(x: 0.17083*width, y: 0.39138*height))
        path.addCurve(to: CGPoint(x: 0.1728*width, y: 0.09757*height), control1: CGPoint(x: 0.07585*width, y: 0.25711*height), control2: CGPoint(x: 0.09189*width, y: 0.16398*height))
        path.addCurve(to: CGPoint(x: 0.43495*width, y: 0.00198*height), control1: CGPoint(x: 0.24386*width, y: 0.03922*height), control2: CGPoint(x: 0.33262*width, y: 0.00972*height))
        path.addCurve(to: CGPoint(x: 0.73876*width, y: 0.06225*height), control1: CGPoint(x: 0.54577*width, y: -0.00639*height), control2: CGPoint(x: 0.64789*width, y: 0.01153*height))
        path.addCurve(to: CGPoint(x: 0.86101*width, y: 0.20536*height), control1: CGPoint(x: 0.80279*width, y: 0.09789*height), control2: CGPoint(x: 0.84627*width, y: 0.14452*height))
        path.addCurve(to: CGPoint(x: 0.79902*width, y: 0.27795*height), control1: CGPoint(x: 0.87029*width, y: 0.24374*height), control2: CGPoint(x: 0.8488*width, y: 0.26956*height))
        path.addCurve(to: CGPoint(x: 0.70963*width, y: 0.25976*height), control1: CGPoint(x: 0.76564*width, y: 0.28358*height), control2: CGPoint(x: 0.73464*width, y: 0.27849*height))
        path.addCurve(to: CGPoint(x: 0.69289*width, y: 0.23833*height), control1: CGPoint(x: 0.70203*width, y: 0.25408*height), control2: CGPoint(x: 0.6938*width, y: 0.24588*height))
        path.addCurve(to: CGPoint(x: 0.50373*width, y: 0.10975*height), control1: CGPoint(x: 0.6836*width, y: 0.16209*height), control2: CGPoint(x: 0.59977*width, y: 0.11581*height))
        path.addCurve(to: CGPoint(x: 0.30321*width, y: 0.1727*height), control1: CGPoint(x: 0.42422*width, y: 0.10471*height), control2: CGPoint(x: 0.35344*width, y: 0.12201*height))
        path.addCurve(to: CGPoint(x: 0.32569*width, y: 0.32569*height), control1: CGPoint(x: 0.25522*width, y: 0.22106*height), control2: CGPoint(x: 0.26638*width, y: 0.28507*height))
        path.addCurve(to: CGPoint(x: 0.47668*width, y: 0.3717*height), control1: CGPoint(x: 0.36903*width, y: 0.35546*height), control2: CGPoint(x: 0.4219*width, y: 0.3641*height))
        path.addCurve(to: CGPoint(x: 0.72997*width, y: 0.41341*height), control1: CGPoint(x: 0.5617*width, y: 0.38366*height), control2: CGPoint(x: 0.64993*width, y: 0.39032*height))
        path.addCurve(to: CGPoint(x: 0.99669*width, y: 0.65699*height), control1: CGPoint(x: 0.87455*width, y: 0.45511*height), control2: CGPoint(x: 0.97404*width, y: 0.53355*height))
        path.addCurve(to: CGPoint(x: 0.90361*width, y: 0.87172*height), control1: CGPoint(x: 1.01186*width, y: 0.73978*height), control2: CGPoint(x: 0.97559*width, y: 0.81104*height))
        path.addCurve(to: CGPoint(x: 0.55815*width, y: 0.9977*height), control1: CGPoint(x: 0.81102*width, y: 0.94969*height), control2: CGPoint(x: 0.69313*width, y: 0.98752*height))
        path.addCurve(to: CGPoint(x: 0.24087*width, y: 0.95494*height), control1: CGPoint(x: 0.44706*width, y: 1.00609*height), control2: CGPoint(x: 0.34074*width, y: 0.99313*height))
        path.addCurve(to: CGPoint(x: 0.0312*width, y: 0.79715*height), control1: CGPoint(x: 0.14941*width, y: 0.91992*height), control2: CGPoint(x: 0.07553*width, y: 0.86993*height))
        path.addCurve(to: CGPoint(x: 0.00186*width, y: 0.65929*height), control1: CGPoint(x: 0.00454*width, y: 0.75331*height), control2: CGPoint(x: -0.00398*width, y: 0.70697*height))
        path.addCurve(to: CGPoint(x: 0.10554*width, y: 0.60673*height), control1: CGPoint(x: 0.00626*width, y: 0.6231*height), control2: CGPoint(x: 0.05404*width, y: 0.59985*height))
        path.addCurve(to: CGPoint(x: 0.17382*width, y: 0.68172*height), control1: CGPoint(x: 0.15704*width, y: 0.6136*height), control2: CGPoint(x: 0.17516*width, y: 0.63331*height))
        path.closeSubpath()
        return path
    }
}


struct NobsBBuild: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 3)
                .stroke(Color(.black), lineWidth: 11)
                .frame(width: 3, height: 152, alignment: .center)
                .offset(x: -45, y: 0)
            NobsArc(startAngle: .degrees(135), endAngle: .degrees(225), clockwise: true)
                .stroke(Color.black, lineWidth: 14)
                .frame(width: 105, height: 105, alignment: .center)
                .offset(x: -7.4, y: 22.68)
        
        }
        .scaleEffect(CGSize(width: 0.425, height: 0.425))
        .offset(x: 0, y: -10)
    }
}


struct NobsArc: Shape {
    var startAngle: Angle
    var endAngle: Angle
    var clockwise: Bool
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.addArc(center: CGPoint(x: rect.midX, y: rect.midY), radius: rect.width/2, startAngle: startAngle, endAngle: endAngle, clockwise: clockwise)
        
        return path
    }
}

struct NobsBoxLogo_Previews: PreviewProvider {
    static var previews: some View {
        NobsBoxLogo()
    }
}
