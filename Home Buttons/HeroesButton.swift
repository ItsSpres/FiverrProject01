//
//  HerosMapsButtons.swift
//  Overwatch Heros
//
//  Created by Ian Spresney on 3/25/22.
//

import SwiftUI

struct HeroesButton: View {
    
    @State private var selection: String? = nil
    
   
    
    var body: some View {
                    
        ZStack {
            RoundedRectangle(cornerRadius: 8)
                .foregroundColor(Color("darkBlue"))
                .frame(width: (UIScreen.screenWidth)*0.44, height: (UIScreen.screenWidth)*0.25, alignment: .center)
            VStack{
                Image(systemName: "figure.walk")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(Color.white)
                    .frame(width: (UIScreen.screenWidth)*0.10, height: (UIScreen.screenWidth)*0.12, alignment: .center)
                Text("OW Heroes")
                    .font(.custom("Futura", size: 20))
                    .fontWeight(.regular)
                    .foregroundColor(Color.white)
            } //VSTACK
        } //ZSTACK
        .padding(5)
                        

            
    }//BODY
}

struct HeroesButton_Previews: PreviewProvider {
    static var previews: some View {
        HeroesButton()
    }
}


