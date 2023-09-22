//
//  TaskListView.swift
//  ListaDeTarefasParte1
//
//  Created by User on 22/09/23.
//

import SwiftUI

struct TaskListView: View {
    
    let model: TaskList = TaskList()
  
    var body: some View {
        ScrollView {
            VStack (spacing: 10){//comand e mouse em cima
                ForEach(model.tasks, id: \.id) { task in
                    VStack (spacing: 2) {
                        HStack {
                            CirculoBoolean(isDone: task.isDone)
                            
                            Text(task.title)
                                .font(.headline)
                                .multilineTextAlignment(.center)
                                .padding()
                        }
                    }
                }
                
                .frame(maxWidth: .infinity, minHeight: 150)
                .background(Color.blue)
                .cornerRadius(15)
                .shadow(color: Color.gray.opacity(0.6), radius: 5, x: 0, y: 2)
                .padding(.init(top: 5, leading: 16, bottom: 5, trailing: 16))
                
            }
        }
    }
    
    
    struct TaskListView_Previews: PreviewProvider {
        static var previews: some View {
            TaskListView()
        }
    }
}
