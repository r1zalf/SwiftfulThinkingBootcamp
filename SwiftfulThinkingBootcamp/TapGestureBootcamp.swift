//
//  TapGestureBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 19/01/24.
//

import SwiftUI

struct TapGestureBootcamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .foregroundStyle(.white)
            .padding()
            .background(.blue)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .onTapGesture {
                print("Hello, World!")
            }
    }
}

#Preview {
    TapGestureBootcamp()
}
