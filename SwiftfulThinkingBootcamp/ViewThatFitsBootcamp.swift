//
//  ViewThatFitsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 23/01/24.
//

import SwiftUI

struct ViewThatFitsBootcamp: View {
    var body: some View {
        ZStack {
            Color.red
            
            ViewThatFits {
                Text("This is some text that I would like to display to the")
                Text("This is some text that I would like to display")
                Text("This is some text")
            }
        }
        .frame(height: 300)
//        .padding(.all, 0)
//        .padding(.all, 20)
        .padding(40)
    }
}

#Preview {
    ViewThatFitsBootcamp()
}
