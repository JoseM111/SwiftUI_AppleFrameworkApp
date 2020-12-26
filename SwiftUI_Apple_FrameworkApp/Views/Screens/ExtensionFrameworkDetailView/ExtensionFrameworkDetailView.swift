import SwiftUI

// MARK: -∆  EXTENSION OF: [( FrameworkDetailView )] •••••••••
extension FrameworkDetailView {
    
    // MARK: @------- [Computed some-View Properties] -------
    
    // ™ œœœœœ[ learnMoreButton ]œœœœœœœœœœœœœœœ
    var learnMoreButton: some View {
        //∆..........
        Button(action: { isShowingSafariView.toggle() }) {
            //∆..... LABEL .....
            Text("Learn More")
                .foregroundColor(.primaryColor)
                .font(.title3)
                .fontWeight(.semibold)
        }
        /// ∆ END OF: Button
        .buttonStyle(PrimaryButtonStyle(paddingAll: 10, bgColorAlt: .lightBlue,
                                        bgColor: .twitterBlue, w: 150, h: 40))
        .animation(.easeIn)
        .padding(.bottom, 40)
        // MARK: - fullScreenCover
        //--|............................................
        .fullScreenCover(isPresented: $isShowingSafariView) {
            //∆..........
            SafariView(url: URL(string: framework.urlString)
                        ?? URL(string: "COULD NOT FIND URL...")!)
        }
        //--|............................................
    }
    /// ∆ END OF: learnMoreButton
    
    // ™ œœœœœ[ xMarkButton ]œœœœœœœœœœœœœœœ
    var xMarkButton: some View {
        //∆..........
        Button(action: {
            //∆.......... Must be set to false to dismiss the sheet
            isShowingDetailView = false
        }) {
            //∆..... LABEL .....
            Image(systemName: "xmark")
                .foregroundColor(Color(.label))
                .imageScale(.large)
                // Add a touch target in a frame
                .frame(width: 44, height: 44)
        }
        // ∆ END OF: Button
        
    }
    ////// ∆ END OF: xMarkButton
    
}
// MARK: END OF EXTENSION: FrameworkDetailView
