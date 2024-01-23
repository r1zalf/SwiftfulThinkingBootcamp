//
//  MenuBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 23/01/24.
//

import SwiftUI

struct MenuBootcamp: View {
    var body: some View {
        Menu("Click Me!") {
            Label("Menu 1", systemImage: "flame")
            Label("Menu", systemImage: "scribble")
        }
    }
}

#Preview {
    MenuBootcamp()
}
