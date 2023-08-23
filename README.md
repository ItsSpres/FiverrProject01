# Overwatch App
This was a Fiverr freelance gig for a fan-made iOS Overwatch app. The project was brought to me for UI navigation fixes and to have buttons and other features added to it. This repository also does not contain all the source code I did. However, it does contain what I am able to share. 
![](https://ianspresney.com/assets/img/overwatchapp.png)
## Language
-	SwiftUI
## Bugs I Fixed
The main bug was a navigation issue within the customer’s code. I quickly noticed that they hadn’t implemented the NavigationView properly. This caused for multiple page creation and a ton of other problems. However, this was quickly fixed and completely reworked. 
## YouTube Video Integration
The customer asked for a method to allow them to post videos from YouTube within the app. This code allows him to do that.
```
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
```
## Buttons for Detailed Views
These buttons were made as a way for the users to interact further with the detailed views. A user may tap on a character within the app and then navigate to the bottom to see similar or relate topics. 
```
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
```
## Screenshots of the App
Here is what some of the screens looked like.
![](https://ianspresney.com/assets/img/overwatchapp.png)
