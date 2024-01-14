//
//  ExtractedBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 14/01/24.
//

import SwiftUI

struct ExtractedViewAndBindingBootcamp: View {
    @State var backgroundColor: Color = .red
    @State var count: Int = 1
    var body: some View {
        ZStack {
            backgroundColor
            
            someView
        }
    }
    
    var someView: some View {
        VStack {
            
            Text("Count : \(count)")
            ItemView(backgroundColor: $backgroundColor, count: $count)

        }
    }
}

struct ItemView: View {
    @Binding var backgroundColor: Color
    @Binding var count: Int
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.random())
                .frame(width: 120, height: 120)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            
            Button("Change Color") {
                count += 1 
                backgroundColor = .random()
            }.foregroundStyle(.white)
        }
    }
}

#Preview {
    ExtractedViewAndBindingBootcamp()
}
