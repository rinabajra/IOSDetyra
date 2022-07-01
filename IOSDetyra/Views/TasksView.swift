//
//  TasksView.swift
//  IOSDetyra
//

import SwiftUI

struct TasksView: View {
    @EnvironmentObject var realmManager: RealmManager
    @State var showAlert: Bool = false

    var body: some View {
        ScrollView(){
        VStack(alignment: .center){
            HStack{
                Text("To Do Therapies").bold().foregroundColor(.gray).padding(.top,5).padding(.horizontal,10)
                
                if(!realmManager.toDoTasks.isEmpty){
                Image(systemName:"trash")
                    .foregroundColor(.red)
                    .padding()
                    .onTapGesture {
                            showAlert = true
                       
                    }
                    .alert( isPresented:$showAlert){
                        Alert(
                            title: Text("Deleting Completed Therapies"),
                            message: Text("Are you sure you wanna clear completed  therapies list"),
                            primaryButton: .cancel(Text("No")),
                            secondaryButton :  .default(Text("Yes").bold()){
                                realmManager.deleteTasks(completed: false)
                            }
                        )
                    
                        }
                }
            }
            if(!realmManager.toDoTasks.isEmpty){
                ForEach(realmManager.toDoTasks, id: \.id) {
                    task in
                    if(!task.isInvalidated){
                        TaskRow(task: task)
                    }
            }
            } else{
                Text("You don't have any therapies to do").foregroundColor(.gray.opacity(0.6))
            }
            HStack{
                Text("Completed Therapies").bold().foregroundColor(.gray).padding(.top,5).padding(.horizontal,10)
                
                if(!realmManager.completedTasks.isEmpty){
                Image(systemName:"trash")
                    .foregroundColor(.red)
                    .padding()
                    .onTapGesture {
                            showAlert = true
                  
                    }
                    .alert( isPresented:$showAlert){
                        Alert(
                            title: Text("Deleting Completed Therapies"),
                            message: Text("Are you sure you wanna clear completed  therapies list"),
                            primaryButton: .cancel(Text("No")),
                            secondaryButton :  .default(Text("Yes").bold()){
                                realmManager.deleteTasks(completed: true)
                            }
                        )
                    
                        }
                }
                
            }
            if(!realmManager.completedTasks.isEmpty){
                ForEach(realmManager.completedTasks, id: \.id) {
                    task in
                    if(!task.isInvalidated){
                        TaskRow(task: task)
                            .opacity(0.7)
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
