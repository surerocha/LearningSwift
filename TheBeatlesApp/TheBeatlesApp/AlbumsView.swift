import SwiftUI

struct AlbumsView: View {
        
    private let albums = Bundle.main.decode([Album].self, from: "albums.json")
        
    var body: some View {
        NavigationStack {
            List {
                ForEach(albums.sorted(by: \.year), id: \.name) { album in
                    NavigationLink {
                        AlbumDetailsView(album: album)
                    } label: {
                        AlbumView(album: album)
                    }
                }
            }
            .listStyle(.plain)
            .navigationBarTitle("Albums")
        }
    }
    
}

struct AlbumsView_Previews: PreviewProvider {
    static var previews: some View {
        AlbumsView()
    }
}
