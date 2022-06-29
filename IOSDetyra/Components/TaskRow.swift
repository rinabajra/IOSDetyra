//
//  TaskRow.swift
//  IOSDetyra
//

import SwiftUI

struct TaskRow: View {
    @EnvironmentObject var realmManager: RealmManager
    @State var showAlert: Bool = false
    var task: Task
    
    var body: some View {
            ZStack(alignment: .bottom) {
                Image(task.image)
                    .resizable()
                    .cornerRadius(20)
                    .frame(width: 300, height: 200)
                    .scaledToFit()
                
                VStack(alignment: .leading) {
                        Text(task.title)
                        .bold()
                        .foregroundColor(.black.opacity(0.8))
                           
                        Text(task.descr.prefix(10))
                        .font(.caption)
                        .foregroundColor(.black.opacity(0.8))
                       }
                       .padding()
                       .frame(width: 300,height: 80, alignment: .leading)
                       .background(task.completed ?.orange.opacity(0.7): .mint.opacity(0.7))
                       .cornerRadius(20)
            
            Button {
                if(!task.completed){
                    showAlert = true                }
            } label: {
                Image(systemName: task.completed ?
                      "checkmark.circle" : "circle")
                    .foregroundColor(.white)
                    .background(.white.opacity(0.3))
                    .cornerRadius(50)
                    .padding()
            }
            .alert( isPresented:$showAlert){
                Alert(
                    title: Text("Did you complete this therapy today"),
                    message: Text("This therapy will be moved to completed section"),
                    primaryButton: .cancel(Text("No")),
                    secondaryButton :  .default(Text("Yes").bold()){
                        realmManager.updateTask(id: task.id,completed: !task.completed)
                    }
                )
            
                }
        }
           
    
    .frame(width: 180, height: 250)
    .shadow(radius: 3)
        
    }
}

