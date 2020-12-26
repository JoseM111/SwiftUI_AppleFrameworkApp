import SwiftUI

// MARK: - Preview
struct FrameworkTitleView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        FrameworkTitleSubView(framework: MockData.`default`)
            //.padding(.all, 100)
        .preferredColorScheme(.dark)
        //.previewLayout(.sizeThatFits)
        //.previewLayout(.fixed(width: 320, height: 640))
        // The preview below is for like a card
        .previewLayout(.fixed(width: 240, height: 270))
    }
}

struct FrameworkTitleSubView: View {
    // MARK: - ™PROPERTIES™
    ///™«««««««««««««««««««««««««««««««««««
    let framework: Framework
    ///™«««««««««««««««««««««««««««««««««««
    
    var body: some View {
        
        VStack {
            //∆ .... Image Of app-clip ....
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            
            //∆ ........... Text ...........
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                /// Handles our font name if it is super
                /// long & cannot shrink smaller then 60%
                .minimumScaleFactor(0.6)
        }
        .padding()
        //∆ HANGER 🪝👕🪝 .................
        
    }
    ///-|_End Of body_|
    
}
// END: [STRUCT]

/*©-----------------------------------------©*/

