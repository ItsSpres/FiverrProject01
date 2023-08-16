//
//  MapsDetailView.swift
//  Overwatch Heros
//
//  Created by Ian Spresney on 4/9/22.
//

import SwiftUI

struct MapDetailView: View {
    
  // MARK: - PROPERTIES
    var Map: Map
    var map: [Map] = MapData
  // MARK: - BODY
    
  var body: some View {
    //NavigationView {
      ScrollView(.vertical, showsIndicators: false) {
          VStack(alignment: .center, spacing: 20) {
          // HEADER
          MapHeaderView(Map: Map)
          
          VStack(alignment: .leading) {
            // TITLE
            Text(Map.title)
              .font(.largeTitle)
              .fontWeight(.heavy)
              .padding([.bottom,
                        .leading,
                        .trailing
              ])
              .foregroundColor(Map.gradientColors[1])
              .frame(width: UIScreen.screenWidth, alignment: .leading)
              
            
            // HEADLINE
            Text(Map.headline)
              .font(.headline)
              .multilineTextAlignment(.leading)
              .padding([.bottom,
                        .leading,
                        .trailing
              ])
              .frame(width: UIScreen.screenWidth, alignment: .leading)
            
            
            
            // DESCRIPTION
              Text("\(Map.body)")//Text(Hero.description)
                .multilineTextAlignment(.leading)
                .padding([
                          .leading,
                          .trailing
                ])
                .frame(width: UIScreen.screenWidth, alignment: .leading)
              
            
              MapsImagesAndText(Map: Map)
                  
            
              
              Text("\(Map.characterTitle)".uppercased())
                .fontWeight(.bold)
                .foregroundColor(Map.gradientColors[1])
                .padding([.top,
                          .bottom,
                          .leading,
                          .trailing
                ])
                .frame(width: UIScreen.screenWidth, alignment: .leading)
              
              
             //When you make your data complete you can replace hero[0] with the proper data.
              NavigationLink(destination: HeroDetailViewYT(Hero: Map.characterSelection[0] as! Hero)) {
                  BottomButtonsDesign(Hero: Map.characterSelection[0] as! Hero)
                      .foregroundColor(.black)
                      .frame(width: UIScreen.screenWidth,alignment: .center)
                  
              }
              NavigationLink(destination: HeroDetailViewYT(Hero: Map.characterSelection[1] as! Hero)) {
                  BottomButtonsDesign(Hero: Map.characterSelection[1] as! Hero)
                      .foregroundColor(.black)
                      .frame(width: UIScreen.screenWidth,alignment: .center)
                  
              }
              NavigationLink(destination: HeroDetailViewYT(Hero: Map.characterSelection[2] as! Hero)) {
                  BottomButtonsDesign(Hero: Map.characterSelection[2] as! Hero)
                      .foregroundColor(.black)
                      .frame(width: UIScreen.screenWidth,alignment: .center)
                  
              }
              Spacer(minLength: 100)
              
              
              
            
           
          } //: VSTACK
          //.padding(.horizontal, 20)
          //.padding([.leading,.trailing])
          .frame(width: UIScreen.screenWidth, alignment: .center)
          
        } //: VSTACK
         // .frame(maxWidth: UIScreen.screenWidth, alignment: .center)
        //.navigationBarTitle(Map.title, displayMode: .inline)
        //.navigationBarHidden(true)
      } //: SCROLL
      //.frame(width: UIScreen.screenWidth, alignment: .center)
      .edgesIgnoringSafeArea(.top)
    //} //: NAVIGATION
    .navigationViewStyle(StackNavigationViewStyle())
  }
}

// MARK: - PREVIEW

struct MapDetailView_Previews: PreviewProvider {
  static var previews: some View {
      Group {
          MapDetailView(Map: MapData[0])
              .previewDevice("iPhone 13 Pro Max")
          
      }
      
  }
}
