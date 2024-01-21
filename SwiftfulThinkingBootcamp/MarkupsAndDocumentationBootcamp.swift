//
//  MarkupsAndDocumentationBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 19/01/24.
//

import SwiftUI

struct MarkupsAndDocumentationBootcamp: View {
    
    //MARK: PROPERTIES
    
    @State var isShow = false
    let errorMsg = ""
    let fruits = ["banana", "manggo", "watermelon"]
    
    
    //MARK: BODY
    
    /*
     Working copy - things to do:
     1) fix title
     2) fix alert
     3) fix other
     
     */
    var body: some View {
        NavigationStack { // START: NAV
            ZStack {
                bgColor
                
                content
            }
        } // END: NAV
    }
        
    /// This is background layer
    var bgColor: Color = .red
    
    
    /// This is foreground layer that hold a content inside scrollview
    private var content: some View {
        ScrollView { // START: SCROLL VIEW
            customText("anjay")
        }  // END: SCROLL VIEW
    }
    
    
    
    /// Custom Text
    ///
    /// This function creates and returns an alert immediately. The alert will have a title based on the text parameter but it will NOT have a message
    ///
    ///```
    ///customText("Hello") -> Text("Hello")
    ///```
    ///
    /// - Warning: No option for value
    /// - Parameter value: This is value for text
    /// - Returns: Returns an text with value
    func customText(_ value: String) -> Text {
        return Text(value)
            .font(.largeTitle)
    }
}

#Preview {
    MarkupsAndDocumentationBootcamp()
}
