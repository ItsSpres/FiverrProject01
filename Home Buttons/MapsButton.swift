//
//  MapsButton.swift
//  Overwatch Heros
//
//  Created by Ian Spresney on 3/28/22.
//

import SwiftUI

struct MapsButton: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 8)
                .foregroundColor(Color("ColorLemonDark"))
                .frame(width: (UIScreen.screenWidth)*0.44, height: (UIScreen.screenWidth)*0.25, alignment: .center)
            VStack{
                Image(systemName: "figure.walk")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(Color.white)
                    .frame(width: (UIScreen.screenWidth)*0.10, height: (UIScreen.screenWidth)*0.12, alignment: .center)
                Text("OW Maps")
                    .font(.custom("Futura", size: 20))
                    .fontWeight(.regular)
                    .foregroundColor(Color.white)
            } //VSTACK
        } //ZSTACK
        .padding(5)
                        
    }
}

struct MapsButton_Previews: PreviewProvider {
    static var previews: some View {
        MapsButton()
    }
}
