//
//  ContentView.swift
//  ColecoesComForEach
//
//  Created by User on 19/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ArrayScreen()
                .tabItem{
                    Image(systemName: "list.bullet")
                    Text("Arrays")
                }
            DictionaryScreen()
                .tabItem{
                    Image(systemName: "list.book")
                    Text("Dicionários")
                }
            TupleScreen()
                .tabItem{
                    Image(systemName: "text.book.closed")
                    Text("Dicionários")
                }
            SetScreen()
                .tabItem{
                    Image(systemName: "square.and.pencil")
                    Text("Array")
                }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
