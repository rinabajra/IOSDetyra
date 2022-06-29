//
//  AddTaskView.swift
//  IOSDetyra
//

import SwiftUI

struct AddTaskView: View {
    @EnvironmentObject var realmManager: RealmManager
    var body: some View {
            ScrollView{
        VStack(spacing: 20){
            Text("Add a new therapie to your daily \"To Do\" ones")
                .font(.title3)
                .frame(maxWidth:.infinity,alignment: .leading)
                .padding(.horizontal)
                .foregroundColor(.gray)
          
            Text("All therapies").bold().foregroundColor(.gray).padding(.vertical,5)
       
                ForEach(therapyList, id: \.id) {
                    task in
        
                    TherapyCard(therapy:  task)
                }
        }
            }
            .frame( maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
            .background(
                LinearGradient(gradient: Gradient(colors:
                    [.green.opacity(0.2),
                    .blue.opacity(0.5)]),
                    startPoint: .top, endPoint: .bottom)
            )
            
    }
}

struct AddTaskView_Previews: PreviewProvider {
    static var previews: some View {
        AddTaskView()
            .environmentObject(RealmManager())
    }
}
