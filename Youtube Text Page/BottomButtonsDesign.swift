//
//  BottomButtonsDesign.swift
//  Overwatch Heros
//
//  Created by Ian Spresney on 4/5/22.
//

import SwiftUI

struct BottomButtonsDesign: View {
  // MARK: - PROPERTIES
  
  var Hero: Hero

  // MARK: - BODY

  var body: some View {
      ZStack {
          RoundedRectangle(cornerRadius: 15)
              .foregroundColor(Color("lGray"))
              .frame(width: (UIScreen.screenWidth)*0.95, height: (UIScreen.screenWidth)*0.15)
          HStack {
          
          VStack(alignment: .leading) {
              Text(Hero.title)
                  .font(.body)
                  .fontWeight(.bold)
                  
                  
            
          }
            Spacer()
            Image(systemName: "chevron.right")
              .renderingMode(.original)
              .resizable()
              .scaledToFit()
              .frame(width: 20, height: 20, alignment: .center)
        } //: HSTACK
          .frame(width: (UIScreen.screenWidth)*0.88, height: (UIScreen.screenWidth)*0.09)
      } //ZSTACK
  }
}

// MARK: - PREVIEW

struct BottomButtonsDesign_Previews: PreviewProvider {
  static var previews: some View {
      BottomButtonsDesign(Hero: HeroData[0])
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
