//
//  HeroDetailView(YT).swift
//  Overwatch Heros
//
//  Created by Ian Spresney on 4/1/22.
//




import SwiftUI

struct HeroDetailViewYT: View {
    
  // MARK: - PROPERTIES
    var Hero: Hero
    var hero: [Hero] = HeroData
  // MARK: - BODY
    
  var body: some View {
    //NavigationView {
      ScrollView(.vertical, showsIndicators: false) {
          VStack(alignment: .center, spacing: 20) {
          // HEADER
          HeroHeaderView(Hero: Hero)
          
          VStack(alignment: .leading) {
            // TITLE
            Text(Hero.title)
              .font(.largeTitle)
              .fontWeight(.heavy)
              .foregroundColor(Hero.gradientColors[1])
              
            
            // HEADLINE
            Text(Hero.headline)
              .font(.headline)
              .multilineTextAlignment(.leading)
            
            // NUTRIENTS
              HeroStatsView(Hero: Hero)
            
            // SUBHEADLINE
              Text("\(Hero.otherTitle[0])".uppercased())
                .fontWeight(.bold)
                .foregroundColor(Hero.gradientColors[1])
                .padding([.bottom,.top])
            
            // DESCRIPTION
            Text("\(Hero.otherBodies[0])")//Text(Hero.description)
                .multilineTextAlignment(.leading)
                .padding([.bottom])
              
            YoutubeVideo(Hero: Hero)
              
            Text("Check out more".uppercased())
                .fontWeight(.bold)
                .foregroundColor(Hero.gradientColors[1])
                .padding([.bottom,.top])
              
              
             //When you make your data complete you can replace hero[0] with the proper data.
              NavigationLink(destination: HeroDetailViewYT(Hero: HeroData[Hero.characterSelection[0] as! Int])) {
                  BottomButtonsDesign(Hero: HeroData[Hero.characterSelection[0] as! Int])
                      .foregroundColor(.black)
                      .padding(.vertical, 4)

              }
              NavigationLink(destination: HeroDetailViewYT(Hero: HeroData[Hero.characterSelection[1] as! Int])) {
                  BottomButtonsDesign(Hero: HeroData[Hero.characterSelection[1] as! Int])
                      .foregroundColor(.black)
                      .padding(.vertical, 4)

              }
              NavigationLink(destination: HeroDetailViewYT(Hero: HeroData[Hero.characterSelection[2] as! Int])) {
                  BottomButtonsDesign(Hero: HeroData[Hero.characterSelection[2] as! Int])
                      .foregroundColor(.black)
                      .padding(.vertical, 4)

              }
              
              
            
           
          } //: VSTACK
          .padding(.horizontal, 20)
          .frame(maxWidth: 640, alignment: .center)
        Spacer(minLength: 100)
        } //: VSTACK
        //.navigationBarTitle(Hero.title, displayMode: .inline)
        //.navigationBarHidden(true)
      } //: SCROLL
      .edgesIgnoringSafeArea(.top)
    //} //: NAVIGATION
    //.navigationViewStyle(StackNavigationViewStyle())
  }
}

// MARK: - PREVIEW

struct HeroDetailViewYT_Previews: PreviewProvider {
  static var previews: some View {
      Group {
          HeroDetailViewYT(Hero: HeroData[0])
              .previewDevice("iPhone 13 Pro Max")
          
      }
      
  }
}
