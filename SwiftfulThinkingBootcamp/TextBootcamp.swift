//
//  TextBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 11/01/24.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Today is the project overview day, which is where we’ll be looking at the isolated pieces of code that you")
//            .font(.headline) // ngikutin font dari setting iphone
//            .fontWeight(.heavy)
//            .bold()
//            .underline()
//            .underline(true, color: .red)
//            .italic()
//            .strikethrough(pattern: .dot, color: .brown)
//            .font(.system(size: 24, weight: .semibold, design: .monospaced))
            .frame(width: 250, height: 70, alignment: .center)
            .minimumScaleFactor(0.1)
            .foregroundStyle(.blue)
    }
}

#Preview {
    TextBootcamp()
}
