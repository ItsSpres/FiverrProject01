//
//  MapHeaderView.swift
//  Overwatch Heros
//
//  Created by Ian Spresney on 4/10/22.
//

import SwiftUI

struct MapHeaderView: View {
  // MARK: - PROPERTIES
  
  var Map: Map
  
  @State private var isAnimatingImage: Bool = false

  // MARK: - BODY

  var body: some View {
    ZStack {
        Image(Map.mapMainImage)
            .resizable()
            //.aspectRatio(contentMode: .fill)
            .scaledToFill()
            .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
        //.padding(.vertical, 20)
            .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
            .frame(height: 300,alignment: .bottom)//originally 440 for height
        //.position(x: 186, y: 241)
    } //: ZSTACK
    .frame(width: UIScreen.screenWidth,height: 300,alignment: .bottom)
    .onAppear() {
      withAnimation(.easeOut(duration: 0.5)) {
        isAnimatingImage = true
      }
    }
  }
}

// MARK: - PREVIEW

struct MapHeaderView_Previews: PreviewProvider {
  static var previews: some View {
      MapHeaderView(Map: MapData[0])
      .previewLayout(.fixed(width: 375, height: 440))
  }
}
