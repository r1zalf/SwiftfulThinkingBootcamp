//
//  AnimationUpdateBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 23/01/24.
//

import SwiftUI

struct AnimationUpdateBootcamp: View {
    
    @State var isAnimated1 = false
    @State var isAnimated2 = false
    
    var body: some View {
        VStack {
            Button("Animation 1") {
                isAnimated1.toggle()
            }
            Button("Animation 1") {
                isAnimated2.toggle()
            }
            
            ZStack {
                
                Rectangle()
                    .foregroundStyle(.green)
                    .frame(width: 100, height: 100)
                    .frame(maxWidth: .infinity, alignment: isAnimated1 ? .leading : .trailing)
                    .background(
                        Color.orange
                    )
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: isAnimated2 ? .top : .bottom)
                    .background(
                        Color.gray
                    )
                    .animation(.spring(), value: isAnimated1)
                    .animation(.easeInOut, value: isAnimated2)
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

#Preview {
    AnimationUpdateBootcamp()
}
