//
//  MapRowView.swift
//  Overwatch Heros
//
//  Created by Ian Spresney on 4/10/22.
//

import SwiftUI

struct MapRowView: View {
  // MARK: - PROPERTIES
  
  var Map: Map

  // MARK: - BODY

  var body: some View {
    HStack {
        Image(Map.mapMainImage)
        .renderingMode(.original)
        .resizable()
        .scaledToFit()
        .frame(width: 80, height: 80, alignment: .center)
        .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
        .background(
          LinearGradient(gradient: Gradient(colors: Map.gradientColors), startPoint: .top, endPoint: .bottom)
        )
        .cornerRadius(8)
      
      VStack(alignment: .leading, spacing: 5) {
        Text(Map.title)
          .font(.title2)
          .fontWeight(.bold)
        Text(Map.headline)
          .font(.caption)
          .foregroundColor(Color.secondary)
      }
    } //: HSTACK
  }
}

// MARK: - PREVIEW

struct MapRowView_Previews: PreviewProvider {
  static var previews: some View {
      MapRowView(Map: MapData[0])
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
