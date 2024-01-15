//
//  AnimationTimingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 15/01/24.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    @State var isStart = false
    var duration = 10.0
    
    var body: some View {
        VStack(spacing: 20) {
            Button("Start") {
                isStart.toggle()
            }
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.random())
                .frame(maxWidth: isStart ? 120 : .infinity, maxHeight: 120)
                .animation(.spring(response: 0.5, dampingFraction: 0.7, blendDuration: 1.0), value: isStart)
            
            
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.random())
                            .frame(maxWidth: isStart ? 120 : .infinity, maxHeight: 120)
                            .animation(Animation.linear(duration: duration), value: isStart)
       
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.random())
                            .frame(maxWidth: isStart ? 120 : .infinity, maxHeight: 120)
                            .animation(.easeInOut(duration: duration), value: isStart)
            
            
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.random())
                            .frame(maxWidth: isStart ? 120 : .infinity, maxHeight: 120)
                            .animation(.easeOut(duration: duration), value: isStart)
            
            
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.random())
                            .frame(maxWidth: isStart ? 120 : .infinity, maxHeight: 120)
                            .animation(.easeIn(duration: duration), value: isStart)
        }
        .padding()
    }
}

#Preview {
    AnimationTimingBootcamp()
}
