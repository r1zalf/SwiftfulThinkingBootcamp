//
//  SafeareaBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 14/01/24.
//

import SwiftUI

struct SafeareaBootcamp: View {
    var body: some View {
//        Color.red.ignoresSafeArea(.all, edges: .bottom)
        
        ScrollView {
            VStack {
                ForEach(0..<100) { _ in
                    Rectangle()
                        .fill(.yellow)
                        .frame(height: 150)
                }
            }
        }
        .background(.red)
//        .ignoresSafeArea(.all, edges: .top)
    }
}

#Preview {
    SafeareaBootcamp()
}
