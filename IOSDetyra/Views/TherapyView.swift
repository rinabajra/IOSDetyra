//
//  TherapyView.swift
//  IOSDetyra
//
//

import SwiftUI

struct TherapyView: View {
    @EnvironmentObject var realmManager: RealmManager
    var  title: String
    var image: String
    var description: String
    var completed: Bool?


    
    var body: some View {
        ScrollView{
        VStack(spacing: 20){
        Spacer()
        
        Image(image)
            .resizable()
            .frame(width: .infinity, height: 300)
            .scaledToFit()
        
        Spacer()
      
            Text(title)
                .font(.title)
                .bold()
                .padding()
                .foregroundColor(.black.opacity(0.8))
            
            if(completed != nil){
            Text("Status :  \(completed! ? "Completed" : "To Do")")
                .font(.title2)
                .bold()
                .padding()
                .foregroundColor(completed! ? .mint.opacity(0.8) : .orange.opacity(0.8))
            }
            
            Text(description)
                .font(.title2)
                .bold()
                .padding(.horizontal)
                .foregroundColor(.black.opacity(0.8))
            
        }
   
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

