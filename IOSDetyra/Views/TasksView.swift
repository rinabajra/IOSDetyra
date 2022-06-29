//
//  TasksView.swift
//  IOSDetyra
//

import SwiftUI

struct TasksView: View {
    @EnvironmentObject var realmManager: RealmManager
    
    var body: some View {
        ScrollView{
        VStack(alignment: .leading){
            Text("To Do Therapies").bold().foregroundColor(.gray).padding(.vertical,5)
            
            if(!realmManager.toDoTasks.isEmpty){
                ForEach(realmManager.toDoTasks, id: \.id) {
                    task in
                    if(!task.isInvalidated){
                        TaskRow(task: task)
                            .swipeActions(edge: .trailing){
                                Button(role: .destructive){
                                    realmManager.deleteTask(id: task.id)
                                } label: {
                                    Label("Delete",systemImage: "Trash")
                                }
                            }
                    }
            }
            } else{
                Text("You don't have any therapies to do").foregroundColor(.gray.opacity(0.6))
            }
            
            Text("Completed Therapies").bold().foregroundColor(.gray).padding(.vertical,5)
            
            if(!realmManager.completedTasks.isEmpty){
                ForEach(realmManager.completedTasks, id: \.id) {
                    task in
                    if(!task.isInvalidated){
                        TaskRow(task: task)
                            .swipeActions(edge: .trailing){
                                Button(role: .destructive){
                                    realmManager.deleteTask(id: task.id)
                                } label: {
                                    Label("Delete",systemImage: "Trash")
                                }
                            }
                         
                    }
                  
                }
            } else{
                Text("You haven't completed any therapies yet").foregroundColor(.gray.opacity(0.6))
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity,alignment: .top)
        }
    }
}

struct TasksView_Previews: PreviewProvider {
    static var previews: some View {
        TasksView()
            .environmentObject(RealmManager())
    }
}
