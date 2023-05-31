import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color("BgColor")
                .ignoresSafeArea()
            VStack {
                Image("KelvinGao")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height:150)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Circle().stroke(.white,lineWidth: 2)
                    )
                Text("Kelvin Gao")
                    .font(.custom("Pacifico-Regular", fixedSize: 40))
                    .foregroundColor(.white)
                Text("IOS Developer")
                    .font(.system(size: 23))
                    .foregroundColor(.white)
                Divider()
                
                VStack {
                    InfoView(image: "mail.fill", info: "kaunghtetoo884@gmail.com")
                    InfoView(image: "phone.fill", info: "0636853167")
                }
                .padding(.top, 150)

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

