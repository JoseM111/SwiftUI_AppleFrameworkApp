import SwiftUI

// MARK: - Preview
struct FrameworkGridView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        MainGridView()//.padding(.all, 100)
            .preferredColorScheme(.dark)
        //.previewLayout(.sizeThatFits)
        //.previewLayout(.fixed(width: 320, height: 640))
        // The preview below is for like a card
        //.previewLayout(.fixed(width: 440, height: 270))
    }
}

struct MainGridView: View {
    // MARK: - ™PROPERTIES™
    ///™«««««««««««««««««««««««««««««««««««
    // @StateObject: Data will persist & won't be destroyed & recreated
    @StateObject var frameworkGridVM = FrameworkGridViewModel()
    ///™«««««««««««««««««««««««««««««««««««
    
    var body: some View {
        
        //.............................
        
        NavigationView {
            
            
            //∆ .... CHILD List ....
            List {
                
                //∆ .... CHILD ForEach ....
                ForEach(MockData.FRAMEWORKS_MOCKDATA) { framework in
                    //∆.......... Segue to FrameworkDetailView when a cell is tapped
                    NavigationLink(
                        destination: FrameworkDetailView(
                            isShowingDetailView: $frameworkGridVM.isShowingDetailView,
                            framework: framework)) {
                        ///∆ .... FrameworkTitleView ForEach ....
                        FrameworkTitleSubView(framework: framework)
                        
                    }
                    // ∆ END OF: NavigationLink
                }
                // ∆ END OF: ForEach
                //∆..........
            }
            // ∆ END OF: List
            .navigationTitle(" Frameworks")
            .navigationBarTitleDisplayMode(.inline)
            //∆ HANGER 🪝👕🪝 .................
            
        }
        ///||END__PARENT-NAVIGATIONVIEW||
        .accentColor(.primaryColor)
        //∆ HANGER 🪝👕🪝 .................
        
    }
    ///-|_End Of body_|
    /*©-----------------------------------------©*/
    
    ///∆ ............... Class Methods ...............
    
    
}// END: [STRUCT]

/*©-----------------------------------------©*/
// MARK: Helper Function
func iAmHere(myStr: String) -> some View {
    return Text("\(myStr)")
        .font(.system(size: 22))
        .foregroundColor(.white)
        .bold()
        .background(Color.black)
}
