



import SwiftUI

struct TherapyCard: View {
    @EnvironmentObject var realmManager: RealmManager
    var therapy: Therapy
    @State private var added = false
    
    var body: some View {
        HStack(spacing:20) {
            ZStack(alignment: .bottom) {
                Image(therapy.image)
                    .resizable()
                    .cornerRadius(20)
                    .frame(width: 180)
                    .scaledToFit()
                
            Button {
                if(!added){
                    realmManager.addTask(taskTitle: therapy.title, description: therapy.descr, image: therapy.image)
                    added = true
                    }
            } label: {
                Image(systemName: added ?
                      "checkmark.circle" : "circle")
                    .padding(10)
                    .foregroundColor(.white)
                    .background(.green.opacity(0.7))
                    .cornerRadius(50)
                    .padding()
            }
        }
            VStack(alignment: .leading) {
            Text(therapy.title)
                .bold()
            
            Text(therapy.descr.prefix(10))
                .font(.caption)
        }
        .padding()
        .frame(width: 180, alignment: .leading)
        .background(.mint.opacity(0.7))
        .cornerRadius(20)
    }
    .frame(width: 180, height: 250)
    .shadow(radius: 3)
        
    }
}

