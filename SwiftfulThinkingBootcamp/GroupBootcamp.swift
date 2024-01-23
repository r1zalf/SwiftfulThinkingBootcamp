//
//  GroupBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 23/01/24.
//

import SwiftUI

struct GroupBootcamp: View {
    var body: some View {
        VStack {
            Text("text 1")
            Text("text 2")
            Group {
                Text("text 3")
                Text("text 4")
                Text("text 5")
            }
            .font(.largeTitle.bold())
            .foregroundStyle(.cyan)
            
            Text("text 6")
        }
    }
}

#Preview {
    GroupBootcamp()
}
