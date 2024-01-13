//
//  SpacerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 13/01/24.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        VStack {
            HStack {
                Rectangle()
                    .fill(.orange)
                    .frame(width: 100, height: 100)
                Spacer()
                    .frame(height: 10)
                    .background(.black)
                Rectangle()
                    .fill(.pink)
                    .frame(width: 100, height: 100)
            }
            Spacer()
                .frame(width: 10)
                .background(.black)
        }
    }
}

#Preview {
    SpacerBootcamp()
}
