//
//  AddTaskView.swift
//  IOSDetyra
//

import SwiftUI

struct AddTaskView: View {
    @EnvironmentObject var realmManager: RealmManager
    var body: some View {
        VStack(alignment:.leading,spacing: 20){
            Text("Add a new therapie to your daily to do ones").font(.title3)
                .frame(maxWidth:.infinity,alignment: .leading)
          
            Text("All therapies").bold().foregroundColor(.gray).padding(.vertical,5)
       
            List{
                ForEach(therapyList, id: \.id) {
                    task in
                    
                    TherapyCard(therapy:  task)
                          
                    }
                  
                }
              
             .listRowSeparator(.hidden)
            .onAppear{
                UITableView.appearance().backgroundColor = UIColor.clear
                UITableViewCell.appearance().backgroundColor = UIColor.clear
            }
                
            
            Spacer()
            
            
        }
        .padding(.top,40)
        .padding(.horizontal)
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
