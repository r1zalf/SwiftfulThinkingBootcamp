//
//  PaddingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 13/01/24.
//

import SwiftUI

struct PaddingBootcamp: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Hello, World!")
                .font(.largeTitle).bold()
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec auctor sollicitudin mauris a ullamcorper. Praesent ac mattis urna")
                .font(.body)
        }
        .padding()
        
        .background(
            .white
        )
        .clipShape(
            RoundedRectangle(cornerRadius: 19)
        )
        .shadow(color: .black.opacity(0.3), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 0, y: 20)
        .padding(.all, 20)
        
        
    }
}

#Preview {
    PaddingBootcamp()
}
