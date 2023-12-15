import SwiftUI

struct AlbumView: View {
    
    let album: Album
    
    var body: some View {
        HStack {
            Image(album.cover)
                .resizable()
                .scaledToFit()
                .frame(width: 50)
            VStack(alignment: .leading) {
                Text(album.name)
                    .bold()
                Text(String(album.year))
                    .foregroundColor(.gray)
            }
        }
    }
}

struct AlbumView_Previews: PreviewProvider {
    static var previews: some View {
        AlbumView(album: Album.all.first!)
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
