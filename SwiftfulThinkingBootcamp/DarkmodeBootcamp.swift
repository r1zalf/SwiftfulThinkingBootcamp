//
//  DarkmodeBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 17/01/24.
//

import SwiftUI

struct DarkmodeBootcamp: View {
    
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        VStack {
            Text("Hello, World! rizal")
                .foregroundStyle(.rizal)
            Text("Hello, World! primary")
                .foregroundStyle(.primary)
            Text("Hello, World! secondary")
                .foregroundStyle(.secondary)
            Text("Hello, World! white")
                .foregroundStyle(.white)
            Text("Hello, World! black")
                .foregroundStyle(.black)
            
            Text("Hello, World! black")
                .foregroundStyle(colorScheme == .dark ? .orange : .blue)
        }
    }
}

#Preview {
    DarkmodeBootcamp()
}
