//
//  SmallAddButton.swift
//  IOSDetyra
//

import SwiftUI

struct SmallAddButton: View {
    var body: some View {
        ZStack(alignment: .center){
            Circle().frame(width:50 )
                .foregroundColor(Color(hue: 0.50, saturation: 0.6, brightness: 0.4))
            Text("+")
                .font(.title)
                .foregroundColor(.white)
            
        }.frame( height: 50)
    }
}

struct SmallAddButton_Previews: PreviewProvider {
    static var previews: some View {
        SmallAddButton()
    }
}
