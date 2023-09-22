//
//  ContentView.swift
//  ListaDeTarefasParte1
//
//  Created by User on 22/09/23.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        TabView {
            TaskListView()
                .tabItem{
                    Image(systemName: "list.task.list")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
