import SwiftUI

struct ContentView: View {
            
    var body: some View {
        TabView {
            AlbumsView()
                .tabItem {
                    Label("Albums", systemImage: "rectangle.grid.1x2.fill")
                }
            FavoriteSongsView()
                .tabItem {
                    Label("Favorite Songs", systemImage: "star")
                }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
