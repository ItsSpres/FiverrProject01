//
//  MapsListMain.swift
//  Overwatch Heros
//
//  Created by Ian Spresney on 3/26/22.
//

import SwiftUI

struct MapsListMain: View {
  // MARK: - PROPERTIES
  
  @State private var isShowingSettings: Bool = false
  
  var Map: [Map] = MapData

  // MARK: - BODY

  var body: some View {
      List {
        ForEach(Map.shuffled()) { item in
          NavigationLink(destination: MapDetailView(Map: item)) {
            MapRowView(Map: item)
              .padding(.vertical, 4)
              
          }
        }
      }
      .navigationTitle("Overwatch Maps")
      
  }
}

// MARK: - PREVIEW

struct MapsListMain_Previews: PreviewProvider {
  static var previews: some View {
      MapsListMain(Map: MapData)
      .previewDevice("iPhone 13 Pro Max")
  }
}
