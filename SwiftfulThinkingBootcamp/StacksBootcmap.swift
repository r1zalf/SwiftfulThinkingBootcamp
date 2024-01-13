//
//  StacksBootcmap.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 13/01/24.
//

import SwiftUI

struct StacksBootcmap: View {
    // HStack = horizontal
    // VStack = vertical
    // ZStack = numpuk
    var body: some View {
        ZStack {
            Circle()
                .fill(.rizal)
            HStack {
                VStack(spacing: 0) {
                    Rectangle()
                        .fill(.red)
                        .frame(width: 100, height: 100)
                    Rectangle()
                        .fill(.purple)
                        .frame(width: 100, height: 100)
                }
                
                ZStack(alignment: .topLeading) {
                    Rectangle()
                        .fill(.green)
                    .frame(height: 200)
                    Text("Rizal ganteng")
                        .foregroundStyle(.white)
                }
            }
        }
    }
}

#Preview {
    StacksBootcmap()
}
