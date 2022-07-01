//
//  MyDetailsView.swift
//  IOSDetyra
//
//

import SwiftUI

struct MyDetailsView: View {
    @EnvironmentObject var realmManager: RealmManager
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    var body: some View {
        ScrollView{
    VStack(spacing: 20){
        Spacer()
        
        Text("All your therapies: \(realmManager.allTask.count)")
            .font(.title2)
            .frame(maxWidth:.infinity,alignment: .leading)
            .padding(.horizontal)
            .foregroundColor(.black.opacity(0.8))
        
        Text("To do therapies: \(realmManager.toDoTasks.count)")
            .font(.title2)
            .frame(maxWidth:.infinity,alignment: .leading)
            .padding(.horizontal)
            .foregroundColor(.black.opacity(0.8))
        
        Text("Completed therapies: \(realmManager.completedTasks.count)")
            .font(.title2)
            .frame(maxWidth:.infinity,alignment: .leading)
            .padding(.horizontal)
            .foregroundColor(.black.opacity(0.8))
        
        Spacer()
      
        LazyVGrid(columns: columns, spacing: 20) {
            ForEach(quoteList, id: \.id) { quote in
                ZStack(alignment: .topTrailing) {
                    ZStack(alignment: .bottom) {
                        Image(quote.image)
                            .resizable()
                            .cornerRadius(20)
                            .frame(width: 180)
                            .scaledToFit()
                        
                      
                    }
                    .frame(width: 180, height: 250)
                    .shadow(radius: 3)
                    
               
                    }
                }
            }
        }
        .padding()
        .navigationTitle(Text("My details"))
   
        }
        .frame( maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .background(
            LinearGradient(gradient: Gradient(colors:
                [.green.opacity(0.2),
                .blue.opacity(0.5)]),
                startPoint: .top, endPoint: .bottom)
        )
    }
}

struct MyDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MyDetailsView()
    }
}
