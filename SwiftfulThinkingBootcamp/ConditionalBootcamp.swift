//
//  ConditionalBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 14/01/24.
//

import SwiftUI

struct ConditionalBootcamp: View {
    @State var isLoading = false
    var body: some View {
        VStack {
            Button("show loading") {
                isLoading.toggle()
            }
            if isLoading {
                ProgressView()
            }
        }
    }
}

#Preview {
    ConditionalBootcamp()
}
