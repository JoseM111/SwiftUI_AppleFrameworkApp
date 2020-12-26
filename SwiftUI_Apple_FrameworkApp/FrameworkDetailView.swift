import SwiftUI

// MARK: -∆  EXTENSION OF: [( FrameworkDetailView )] •••••••••
extension FrameworkDetailView {
    
    // MARK: @------- [Computed some-View Properties] -------
    
    // ™ œœœœœ[ learnMoreButton ]œœœœœœœœœœœœœœœ
    var learnMoreButton: some View {
        //∆..........
        Button(action: {
            //∆..........
            
            
        }) {
            //∆..... LABEL .....
           Text("Learn More")
            .font(.title3)
            .fontWeight(.semibold)
        }
        /// ∆ END OF: Button
        .buttonStyle(
            PrimaryButtonStyle(paddingAll: 10, bgColorAlt: .black,
                               bgColor: .twitterBlue, w: 150, h: 40)
        )
        .animation(.easeIn)
        .padding(.bottom, 40)
        
        
    }
    /// ∆ END OF: learnMoreButton
    
    // ™ œœœœœ[ xMarkButton ]œœœœœœœœœœœœœœœ
    var xMarkButton: some View {
        //∆..........
        Button(action: { /* TODO */ }) {
            //∆..... LABEL .....
            Image(systemName: "xmark")
                .foregroundColor(.primary)
                .imageScale(.large)
                // Add a touch target in a frame
                .frame(width: 44, height: 44)
        }
        // ∆ END OF: Button
        
    }
    ////// ∆ END OF: xMarkButton
    
}
/// ∆ END OF EXTENSION: FrameworkDetailView

// MARK: END OF: FrameworkDetailView

struct FrameworkDetailView: View {
    // MARK: - ™PROPERTIES™
    ///™«««««««««««««««««««««««««««««««««««
    var framework: Framework
    var colorChanged = Color.twitterBlue.opacity(0.4)
    //™•••••••••••••••••••••••••••••••••••«
    ///™«««««««««««««««««««««««««««««««««««
    
    
    var body: some View {
        
        //.............................
        VStack {
            
            // MARK: -∆  Button(x-mark) '''''''''''''''''''''
            HStack {
                ///ººº..................................•••
                Spacer(minLength: 0) // Spaced Horizontally
                ///ººº..................................•••
                
                xMarkButton
            }
            /// ∆ END OF: HStack
            .padding()
            
            ///ººº..................................•••
            Spacer(minLength: 0) // Spaced Vertically
            ///ººº..................................•••
            
            ///∆ ..... FrameworkTitleView .....
            FrameworkTitleSubView(framework: framework)
            
            ///∆ ........... Description ...........
            Text(framework.description)
                .font(.body)
                .fontWeight(.semibold)
                .fixedSize(horizontal: false, vertical: true)
                .padding()
            
            ///ººº..................................•••
            Spacer(minLength: 0) // Spaced Horizontally
            ///ººº..................................•••
            
            ///∆ ........... Button(learnMore) ...........
            learnMoreButton
            
        }
        ///||END__PARENT-VSTACK||
        
        //.............................
    }
    ///-|_End Of body_|
    /*©-----------------------------------------©*/
    
}// END: [STRUCT]

// MARK: - Preview
struct FrameworkDetailView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        FrameworkDetailView(framework: MockData.default)//.padding(.all, 100)
        .preferredColorScheme(.dark)
        //.previewLayout(.sizeThatFits)
        //.previewLayout(.fixed(width: 320, height: 640))
        // The preview below is for like a card
        //.previewLayout(.fixed(width: 440, height: 270))
    }
}
