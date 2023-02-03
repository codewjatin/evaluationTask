import SwiftUI

struct MainTabView: View {
    @State private var selectedRowIndex = 0
    
    var body: some View {
        TabView(selection: $selectedRowIndex) {
            VStack {
                Image("dp_formal")
                    .resizable()
                    .frame(width: 300, height: 300)
                
                Text("Hi, this is Jatin Kumar.\nI'm a App Dev member in Swift Coding CLub")
                    .frame(width: 320)
                
            }
                .onAppear {
                    selectedRowIndex = 0
                }
                .tabItem {
                    Label("Previous", systemImage: "backward")
                }
                .tag(0)
            
            VStack {
                Image("sitanshu")
                    .resizable()
                    .frame(width: 300, height: 300)
                
                Text("Sitanshu bhaiya is one of the best leads i have met in SCC.")
                    .frame(width: 320)
            }
                .onAppear {
                    selectedRowIndex = 1
                }
                .tabItem {
                    Label("Previous", systemImage: "forward")
                }
                .tag(1)
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
