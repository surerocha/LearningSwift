//
//  ContentView.swift
//  AppSure
//
//  Created by User on 17/11/23.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        NavigationLink(destination: Test2()) {
            Text("Go")
        }
    }
}

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack{
                NavigationLink(destination: SecondView()){
                    ZStack{
                        Rectangle()
                            .frame(width: 300, height: 130, alignment: .center)
                            .foregroundColor(.gray)
                            .cornerRadius(30)
                        
                        HStack(spacing: 15){
                            Image("Icone1")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100, height: 100, alignment: .center)
                        }
                    }
                    
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundColor(.accentColor)
                    Text("Hello, Sure, how are you?")
                }
                .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
