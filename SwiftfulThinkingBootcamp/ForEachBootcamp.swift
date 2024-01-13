//
//  ForEachBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 13/01/24.
//

import SwiftUI

struct ForEachBootcamp: View {
    var body: some View {
        VStack {
            ForEach(0..<5) {
                Circle()
                    .fill(.red)
                     .frame(width: 70, height: 70)
                     .overlay(
                        Text("\($0)")
                            .foregroundStyle(.white)
                            .font(.largeTitle).bold()
                     )
            }
        }
    }
}

#Preview {
    ForEachBootcamp()
}
