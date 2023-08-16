//
//  MapsImagesAndText.swift
//  Overwatch Heros
//
//  Created by Ian Spresney on 4/9/22.
//

import SwiftUI

struct MapsImagesAndText: View {
    var Map: Map
    var map: [Map] = MapData
    var body: some View {
        VStack {
            Text("\(Map.otherTitles[0])".uppercased())
                .fontWeight(.bold)
                .foregroundColor(Map.gradientColors[1])
                .padding([.bottom,
                          .leading,
                          .trailing,
                          .top
                ])
                .frame(width: UIScreen.screenWidth, alignment: .leading)
                
                // DESCRIPTION
            Text("\(Map.otherBodies[0])")//Text(Hero.description)
                .multilineTextAlignment(.leading)
                .padding([.bottom,
                          .leading,
                          .trailing
                ])
                .frame(width: UIScreen.screenWidth, alignment: .leading)
            
            Image("\(Map.mapImages[0])")
                .resizable()
                .frame(width: UIScreen.screenWidth*0.95, height: UIScreen.screenWidth*0.60, alignment: .center)
                .cornerRadius(15)
              
              Text("\(Map.otherTitles[1])".uppercased())
                  .fontWeight(.bold)
                  .foregroundColor(Map.gradientColors[1])
                  .padding([.bottom,
                            .leading,
                            .trailing,
                            .top
                  ])
                  .frame(width: UIScreen.screenWidth, alignment: .leading)
                  
                  // DESCRIPTION
              Text("\(Map.otherBodies[1])")//Text(Hero.description)
                  .multilineTextAlignment(.leading)
                  .padding([.bottom,
                            .leading,
                            .trailing
                  ])
                  .frame(width: UIScreen.screenWidth, alignment: .leading)
            Image("\(Map.mapImages[1])")
                .resizable()
                .frame(width: UIScreen.screenWidth*0.95, height: UIScreen.screenWidth*0.60, alignment: .center)
                .cornerRadius(15)
              
              Text("\(Map.otherTitles[2])".uppercased())
                  .fontWeight(.bold)
                  .foregroundColor(Map.gradientColors[1])
                  .padding([.bottom,
                            .leading,
                            .trailing,
                            .top
                  ])
                  .frame(width: UIScreen.screenWidth, alignment: .leading)
                  
                  // DESCRIPTION
              Text("\(Map.otherBodies[2])")//Text(Hero.description)
                  .multilineTextAlignment(.leading)
                  .padding([.bottom,
                            .leading,
                            .trailing
                  ])
                  .frame(width: UIScreen.screenWidth, alignment: .leading)
            
            Image("\(Map.mapImages[2])")
                .resizable()
                .frame(width: UIScreen.screenWidth*0.95, height: UIScreen.screenWidth*0.60, alignment: .center)
                .cornerRadius(15)
        }
        //.padding([.leading,.trailing])
        .frame(width: UIScreen.screenWidth)
       // .padding([.leading, .trailing])
    }
}

struct MapsImagesAndText_Previews: PreviewProvider {
    static var previews: some View {
        MapsImagesAndText(Map: MapData[0])
    }
}
