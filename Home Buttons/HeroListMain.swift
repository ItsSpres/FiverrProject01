//
//  ContentView.swift
//  Overwatch Heros
//
//  Created by Harry Gwinnell on 22/03/2022.
//

import SwiftUI

struct HeroListMain: View {
  // MARK: - PROPERTIES
  
  @State private var isShowingSettings: Bool = false
    
  
  var Hero: [Hero] = HeroData

  // MARK: - BODY

  var body: some View {
      List {
        ForEach(Hero.shuffled()) { item in
          NavigationLink(destination: HeroDetailViewYT(Hero: item)) {
            HeroRowView(Hero: item)
              .padding(.vertical, 4)
              
          }
        }
      }
      .navigationTitle("Overwatch Heros")
  }
}

// MARK: - PREVIEW

struct HeroListMain_Previews: PreviewProvider {
  static var previews: some View {
    HeroListMain(Hero: HeroData)
      .previewDevice("iPhone 11 Pro")
  }
}
