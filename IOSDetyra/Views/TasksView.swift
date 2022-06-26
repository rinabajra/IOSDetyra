//
//  TasksView.swift
//  IOSDetyra
//

import SwiftUI

struct TasksView: View {
    @EnvironmentObject var realmManager: RealmManager
    
    var body: some View {
        VStack(alignment: .center){
            Text("My tasks")
                .font(.largeTitle)
                .bold()
                .padding()
                .font(Font.headline)
                .foregroundColor(.blue.opacity(0.5))
                .frame(maxWidth:.infinity, alignment:.center)
            
            List{
                ForEach(realmManager.tasks, id: \.id){
                    
                    task in
                    if(!task.isInvalidated){
                        TaskRow(task: task.title, completed:
                                    task.completed)
                            .onTapGesture {
                                realmManager.updateTask(id: task.id, completed:
                                    !task.completed)
                            }.swipeActions(edge: .trailing){
                                Button(role: .destructive){
                                    realmManager.deleteTask(id: task.id)
                                } label: {
                                    Label("Delete",systemImage: "Trash")
                                }
                            }
                         
                    }
                  
                }
                .listRowSeparator(.hidden)
            }
            .onAppear{
                UITableView.appearance().backgroundColor = UIColor.clear
                UITableViewCell.appearance().backgroundColor = UIColor.clear
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    
    }
}

struct TasksView_Previews: PreviewProvider {
    static var previews: some View {
        TasksView()
            .environmentObject(RealmManager())
    }
}
