//
//  ExtractedFunctionBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 14/01/24.
//

import SwiftUI

struct ExtractedFunctionBootcamp: View {
    var backgroundColor: Color = .red
    var body: some View {
        ZStack {
            // background
            backgroundColor
            
            //content
            Button("Clicked", action: buttonClicked)
        }
    }
    
    func buttonClicked() {
        print("buttonClicked")
    }
}

#Preview {
    ExtractedFunctionBootcamp()
}
