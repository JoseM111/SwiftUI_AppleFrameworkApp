import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    // MARK: - ™PROPERTIES™
    ///™«««««««««««««««««««««««««««««««««««
    /// ™ Publishes the change when the view updates
    @Published var isShowingDetailView: Bool = false
    ///™«««««««««««««««««««««««««««««««««««
    
    // MARK: -∆  Computed Property  '''''''''''''''''''''
    /// ™ Anytime the `selectedFramework` changes `isShowingDetailView = true`
    
    var selectedFramework: Framework? {
        //∆.......... property observers
        ///∆ ...........
        ///  •  WE USE EITHER `didSet` TO EXECUTE CODE WHEN A PROPERTY HAS JUST BEEN `SET`,
        ///     OR `willSet` TO EXECUTE CODE `BEFORE` A PROPERTY HAS BEEN `SET`.
        ///  ............
        didSet { isShowingDetailView.toggle() } // To true
    }
    // ∆ END OF: Computed Property
}
// MARK: END OF: FrameworkGridViewModel
