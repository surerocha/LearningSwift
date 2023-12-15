import SwiftUI

struct ContentView: View {
    
    @AppStorage("filter") var filter = false
    
    @State var list = TaskList(tasks: [])
    
    @State var newTaskTitle = ""
    
    let url = URL.documentsDirectory.appending(path: "tasks.json")
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    ForEach(list.tasksFilteredByNotDone(filter)) { task in
                        HStack {
                            Text(task.title)
                            Spacer()
                            Button {
                                if task.isDone {
                                    list.unmarkTaskAsDone(id: task.id)
                                } else {
                                    list.markTaskAsDone(id: task.id)
                                }
                            } label: {
                                Image(systemName: task.isDone ? "checkmark.circle.fill" : "circle")
                            }
                        }
                        .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                            Button(role: .destructive) {
                                list.removeTask(id: task.id)
                            } label: {
                                Image(systemName: "trash")
                            }
                            
                        }
                    }
                    HStack {
                        TextField("Nova Tarefa", text: $newTaskTitle)
                        Spacer()
                        Button {
                            list.addTask(newTaskTitle)
                            newTaskTitle = ""
                        } label: {
                            Image(systemName: "plus.circle.fill")
                        }
                        .disabled(newTaskTitle.isEmpty)
                    }
                } header: {
                    if filter {
                        Text("Tarefas Não Feitas")
                            .fontWeight(.semibold)
                            .frame(maxWidth: .infinity)
                    }
                }
            }
            .navigationTitle("Tarefas")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                Button {
                    filter.toggle()
                } label: {
                    Image(systemName: filter ? "line.3.horizontal.decrease.circle.fill" : "line.3.horizontal.decrease.circle")
                }
            }
            .onChange(of: list.tasks) { _ in
                saveTasks()
            }
            .onAppear {
                loadTasks()
            }
        }
    }
    
    func saveTasks() {
        do {
            let tasks = list.tasks
            let encoder = JSONEncoder()
            let data = try encoder.encode(tasks)
            try data.write(to: url)
        } catch {
            print(error)
        }
        
    }
    
    func loadTasks() {
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            let tasks = try decoder.decode([Task].self, from: data)
            list.tasks = tasks
        } catch {
            print(error)
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
