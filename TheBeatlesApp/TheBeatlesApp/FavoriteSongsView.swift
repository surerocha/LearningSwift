import SwiftUI

struct FavoriteSongsView: View {
    
    let favoriteSongs = ["Yesterday", "All My Loving"]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(Array(favoriteSongs), id: \.self) { song in
                    Text(song)
                }
            }
            .navigationBarTitle("Favorite Songs")
        }
    }
    
}

struct FavoriteSongsView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteSongsView()
    }
}
