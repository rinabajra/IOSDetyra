//
//  ContentView.swift
//  IOSDetyra
//
//

import SwiftUI

struct ContentView: View {
    @StateObject var realmManager  = RealmManager()
    @State private var showAddTaskView = false

    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.gray]
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.gray]
        UINavigationBar.appearance().barTintColor = .systemMint
    }
    
    var body: some View {
        NavigationView {
        ZStack(alignment: .bottomTrailing){
            TasksView()
                .environmentObject(realmManager)
        
            
            SmallAddButton()
                .padding()
                .onTapGesture {
                    showAddTaskView.toggle()
                }
        }.sheet(isPresented: $showAddTaskView){
            //TODO
        }
         .frame( maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .background(
            LinearGradient(gradient: Gradient(colors:
                [.green.opacity(0.2),
                .blue.opacity(0.5)]),
                startPoint: .top, endPoint: .bottom)
        )
            .navigationTitle(Text("My Daily Therapies"))
                .foregroundColor(.gray)
                .frame(alignment:.center)
              
                .toolbar {
                    NavigationLink {
                        AddTaskView()
                            .environmentObject(realmManager)
                    } label: {
                        Image(systemName:"book")
                            .padding(.top, 5)
                            .foregroundColor(.black.opacity(0.8)
                        )
                    }
                }
                .navigationViewStyle(StackNavigationViewStyle())
        }

        
    }
        

    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
