//
//  YoutubeVideo.swift
//  Overwatch Heros
//
//  Created by Ian Spresney on 4/2/22.
//

import SwiftUI

struct YoutubeVideo: View {
    
    var Hero: Hero
    
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            // SUBHEADLINE
            Text("\(Hero.otherTitle[1])".uppercased())
                .fontWeight(.bold)
                .foregroundColor(Hero.gradientColors[1])
                .frame(maxWidth: 640, alignment: .leading)
              
              // DESCRIPTION
            Text("\(Hero.otherBodies[1])")//Text(Hero.description)
                .multilineTextAlignment(.leading)
                .frame(maxWidth: 640, alignment: .leading)
              
             
              //Youtube Video
            ZStack {
                videoView(videoID: Hero.VideoIds[0])
                //You can do something with your Hero reference. Maybe 'Hero.YoutubeID'
                //Only use youtube video ID. Not full url.
                    .frame(width: UIScreen.screenWidth*0.91, height: UIScreen.screenWidth*0.65, alignment: .center)
                .cornerRadius(15)
            }
            Text("\(Hero.otherTitle[2])".uppercased())
                .fontWeight(.bold)
                .foregroundColor(Hero.gradientColors[1])
                .frame(maxWidth: 640, alignment: .leading)
              
              // DESCRIPTION
            Text("\(Hero.otherBodies[2])")//Text(Hero.description)
                .multilineTextAlignment(.leading)
                .frame(maxWidth: 640, alignment: .leading)
              
             
              //Youtube Video
            ZStack {
                videoView(videoID: Hero.VideoIds[1])
                //You can do something with your Hero reference. Maybe 'Hero.YoutubeID'
                //Only use youtube video ID. Not full url.
                    .frame(width: UIScreen.screenWidth*0.91, height: UIScreen.screenWidth*0.65, alignment: .center)
                .cornerRadius(15)
            }
            Text("\(Hero.otherTitle[3])".uppercased())
                .fontWeight(.bold)
                .foregroundColor(Hero.gradientColors[1])
                .frame(maxWidth: 640, alignment: .leading)
              
              // DESCRIPTION
            Text("\(Hero.otherBodies[3])")//Text(Hero.description)
                .multilineTextAlignment(.leading)
                .frame(maxWidth: 640, alignment: .leading)
              
             
              //Youtube Video
            ZStack {
                videoView(videoID: Hero.VideoIds[2])
                //You can do something with your Hero reference. Maybe 'Hero.YoutubeID'
                //Only use youtube video ID. Not full url.
                    .frame(width: UIScreen.screenWidth*0.91, height: UIScreen.screenWidth*0.65, alignment: .center)
                .cornerRadius(15)
            }
                  
              
              
        }
        
    }
}

struct YoutubeVideo_Previews: PreviewProvider {
    static var previews: some View {
        YoutubeVideo(Hero: HeroData[0])
    }
}
