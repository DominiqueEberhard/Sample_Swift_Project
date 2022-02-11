import SwiftUI

struct LoadingLine: View {
    
    @State private var isLoading = false
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.red, Color.purple]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea(.all)
            Text("You Finna Get some werk son")
                .font(Font.custom("Night Machine", size: 18))
                .offset(x: 0, y: -25)
                .scaledToFill()
            
            RoundedRectangle(cornerRadius: 3)
                .stroke(Color(.systemTeal), lineWidth: 3)
                .frame(width: 250, height: 3)
            
            RoundedRectangle(cornerRadius: 3)
                .stroke(Color(.systemPink), lineWidth: 3)
                .frame(width: 50, height: 3)
                .offset(x: isLoading ? 110 : -110, y: 0)
                .animation(Animation.linear(duration: 1).repeatForever(autoreverses: false))
        }
        .foregroundColor(.init(red: 0.9, green: 0.3, blue: 0.3))
        .onAppear() {
            self.isLoading = true
        }
    }
}

struct LoadingLine_Previews: PreviewProvider {
    static var previews: some View {
        LoadingLine()
    }
}
