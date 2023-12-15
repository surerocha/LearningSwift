//
//  AlbumWikipediaView.swift
//  TheBeatlesApp
//
//  Created by Mateus Rodrigues on 10/10/23.
//

import SwiftUI

struct AlbumWikipediaView: View {
    
    let album: Album
    
    var body: some View {
        Text(album.wikipedia)
            .padding()
            .presentationDetents([.medium])
    }
}
