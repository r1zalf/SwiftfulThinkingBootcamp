//
//  AnyLayoutBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 23/01/24.
//

import SwiftUI

struct AnyLayoutBootcamp: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    var body: some View {
        VStack {
            Text("horizontalSizeClass: \(horizontalSizeClass.debugDescription)" )
            Text("verticalSizeClass: \(verticalSizeClass.debugDescription)" )
            
            let layout = horizontalSizeClass == .compact ? AnyLayout(VStackLayout()) :  AnyLayout(HStackLayout())
            
            layout {
                Text("Text 1")
                Text("Text 2")
                Text("Text 3")
            }
        }
    }
}

#Preview {
    AnyLayoutBootcamp()
}
