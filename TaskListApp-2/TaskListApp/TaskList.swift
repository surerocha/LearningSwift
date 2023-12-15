import Foundation

struct TaskList {
    
    var tasks: [Task]
    
    mutating func addTask(_ title: String) {
        tasks.append(Task(title: title, isDone: false))
    }
    
    mutating func removeTask(id: UUID) {
        guard let index = tasks.firstIndex(where: { $0.id == id }) else { return }
        tasks.remove(at: index)
    }
    
    mutating func markTaskAsDone(id: UUID) {
        guard let index = tasks.firstIndex(where: { $0.id == id }) else { return }
        tasks[index].isDone = true
    }

    mutating func unmarkTaskAsDone(id: UUID) {
        guard let index = tasks.firstIndex(where: { $0.id == id }) else { return }
        tasks[index].isDone = false
    }
    
    func tasksFilteredByNotDone(_ filter: Bool) -> [Task] {
        if filter {
            return tasks.filter({ !$0.isDone })
        } else {
            return tasks
        }
    }
    
    
    
}
