import SwiftUI

struct AlbumDetailsView: View {
         
    @State var displayWikipediaText: Bool = false
    
    let album: Album
        
    var body: some View {
        List {
            ForEach(album.songs, id: \.self) { song in
                makeRow(for: song)
            }
        }
        .scrollContentBackground(.hidden)
        .background {
            Image(album.cover)
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .overlay(.ultraThinMaterial)
        }
        .navigationTitle(album.name)
        .navigationBarTitleDisplayMode(.inline)
        .toolbarBackground(.visible, for: .navigationBar)
//        .toolbar(.hidden, for: .tabBar)
        .toolbar {
            Button {
                displayWikipediaText = true
            } label: {
                Image(systemName: "info.circle")
            }
        }
        .sheet(isPresented: $displayWikipediaText) {
            AlbumWikipediaView(album: album)
        }
    }
    
    private func makeRow(for song: String) -> some View {
        HStack {
            Text(song)
            Spacer()
        }
    }
    
}

struct AlbumDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TabView {
            NavigationStack {
                AlbumDetailsView(album: Album.all.first(where: { $0.name == "Please Please Me" })!)
            }
        }
    }
}
