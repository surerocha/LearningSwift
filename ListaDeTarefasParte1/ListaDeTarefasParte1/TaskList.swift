//
//  TaskList.swift
//  ListaDeTarefasParte1
//
//  Created by User on 22/09/23.
//

import SwiftUI

struct Task{
    var id = UUID()
    var title: String
    var isDone: Bool
    
    init(id: UUID, title: String, isDone: Bool) {
        self.id = id
        self.title = title
        self.isDone = isDone
    }
}


struct TaskList{
    var tasks : [Task] = [
        
        Task(id: UUID(), title: "Tarefa 1", isDone: true),
        Task(id: UUID(), title: "Tarefa 2", isDone: false),
        Task(id: UUID(), title: "Tarefa 3", isDone: true),
    ]
    mutating func addTask(title: String) {
        let task = Task(id: UUID(), title: title, isDone: false)
        tasks.append(task)
    }
    
    mutating func removeTask(title:String){
        tasks = tasks.filter { $0.title != title}
    }
    
    mutating func markTaskAsDone(id: UUID){
        if let index = tasks.firstIndex(where: { $0.id == id }) {
            tasks[index].isDone = true
        }
    }
    mutating func unmarckTaskAsDone(id: UUID) {
        if let index = tasks.firstIndex(where: { $0.id == id }) {
            tasks[index].isDone = false
        }
    }
    
}
