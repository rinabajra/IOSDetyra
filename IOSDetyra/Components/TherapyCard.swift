



import SwiftUI

struct TherapyCard: View {
    @EnvironmentObject var realmManager: RealmManager
    @State private var showTherapyView = false
    var therapy: Therapy
    var added: Bool

    
    var body: some View {
        HStack(spacing:20) {
            ZStack(alignment: .topTrailing) {
                
                ZStack(alignment: .bottom){
                Image(therapy.image)
                    .resizable()
                    .cornerRadius(20)
                    .frame(width: 300, height: 200)
                    .scaledToFit()
                    .onTapGesture {
                        showTherapyView.toggle()
                    }
                    .sheet(isPresented: $showTherapyView){
                        TherapyView(title: therapy.title, image: therapy.image, description: therapy.descr)
                        .environmentObject(realmManager)
                    }
                
                VStack(alignment: .leading) {
                Text(therapy.title)
                    .bold()
                    .foregroundColor(.black.opacity(0.9))
                
                Text(therapy.descr.prefix(10) + "...")
                    .font(.caption)
                    .foregroundColor(.black.opacity(0.9))
            }
            .padding()
            .frame(width: 300, alignment: .leading)
            .background(.mint.opacity(0.7))
            .cornerRadius(20)
                    
                }
                
                Button {
                    if (!added) {
                        realmManager.addTask(taskTitle: therapy.title, description: therapy.descr, image: therapy.image)
                    }
                
                } label: {
                    Image(systemName: added ?
                          "checkmark.circle" : "circle")
                        .padding(2)
                        .foregroundColor(.white)
                        .background(added ?.green.opacity(0.7): .gray.opacity(0.7))
                        .cornerRadius(50)
                        .padding()
                }
        }
            
    }
    .frame(width: 300, height: 200)
    .shadow(radius: 3)
        
    }
}

