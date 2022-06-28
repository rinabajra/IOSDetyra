//
//  TaskRow.swift
//  IOSDetyra
//

import SwiftUI

struct TaskRow: View {
    @EnvironmentObject var realmManager: RealmManager
    var task: Task
    
    var body: some View {
        HStack(spacing:5) {
            ZStack(alignment: .bottom) {
                Image(task.image)
                    .resizable()
                    .cornerRadius(20)
                    .frame(width: 300, height: 200)
                    .scaledToFit()
                
                VStack(alignment: .leading) {
                           Text(task.title)
                               .bold()
                           
                           Text(task.descr.prefix(10))
                               .font(.caption)
                       }
                       .padding()
                       .frame(width: 180,height: 100, alignment: .leading)
                       .background(.mint.opacity(0.7))
                       .cornerRadius(20)
            
            Button {
                realmManager.updateTask(id: task.id,completed: !task.completed)
            } label: {
                Image(systemName: task.completed ?
                      "checkmark.circle" : "circle")
                 
                    .foregroundColor(.white)
                    .background(.white.opacity(0.3))
                    .cornerRadius(50)
                    .padding()
            }
        }
           
    }
    .frame(width: 180, height: 250)
    .shadow(radius: 3)
        
    }
}

