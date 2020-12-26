import SwiftUI

// MARK: - Preview
struct FrameworkGridView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        FrameworkGridView()//.padding(.all, 100)
        .preferredColorScheme(.dark)
        //.previewLayout(.sizeThatFits)
        //.previewLayout(.fixed(width: 320, height: 640))
        // The preview below is for like a card
        //.previewLayout(.fixed(width: 440, height: 270))
    }
}

struct FrameworkGridView: View {
    // MARK: - ™PROPERTIES™
    ///™«««««««««««««««««««««««««««««««««««
    // @StateObject: Data will persist & won't be destroyed & recreated
    @StateObject var frameworkGridVM = FrameworkGridViewModel()
    //™•••••••••••••••••••••••••••••••••••«
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    ///™«««««««««««««««««««««««««««««««««««
    
    var body: some View {
        
        //.............................
        
        NavigationView {
            
            //∆ .... CHILD ScrollView ....
            ScrollView {
                
                //∆ .... CHILD LazyVGrid ....
                LazyVGrid(columns: columns) {
                    
                    //∆ .... CHILD ForEach ....
                    ForEach(MockData.FRAMEWORKS_MOCKDATA) { framework in
                        //∆..........
                        ///∆ .... FrameworkTitleView ForEach ....
                        FrameworkTitleSubView(framework: framework)
                        // MARK: - onTapGesture
                        //--|............................................
                            .onTapGesture {
                                //∆..........
                                frameworkGridVM.selectedFramework = framework
                            }
                        //--|............................................
                        // MARK: - sheet: When a you tap on a framework, you should the FrameworkDetailView
                        //--|............................................
                            .sheet(isPresented: $frameworkGridVM.isShowingDetailView) {
                                //∆..........
                                /// ™ NOTE: selectedFramework? is an optional
                                FrameworkDetailView(
                                    framework: frameworkGridVM.selectedFramework
                                        ?? MockData.default,
                                    isShowingDetailView: $frameworkGridVM.isShowingDetailView)
                            }
                        //--|............................................
                            
                    }
                    // ∆ END OF: ForEach
                    //∆..........
                }
                // ∆ END OF: LAZYVGRID
            }
            // ∆ END ScrollView
            .navigationTitle(" Frameworks")
            .navigationBarTitleDisplayMode(.inline)
            //∆ HANGER 🪝👕🪝 .................
            
        }
        ///||END__PARENT-NAVIGATIONVIEW||
        
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
