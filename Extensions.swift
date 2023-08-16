//
//  Extensions.swift
//  Overwatch Heros
//
//  Created by Ian Spresney on 4/2/22.
//

import SwiftUI
import WebKit


//For your youtube videos. Kinda cool
struct videoView: UIViewRepresentable {
   
    let videoID: String
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let youtubeURL = URL(string: "https://www.youtube.com/embed/\(videoID)") else {return}
        uiView.scrollView.isScrollEnabled = false
        uiView.load(URLRequest(url: youtubeURL))
    }
}


//For easier screen sizing
extension UIScreen{
   static let screenWidth = UIScreen.main.bounds.size.width
   static let screenHeight = UIScreen.main.bounds.size.height
   static let screenSize = UIScreen.main.bounds.size
}

