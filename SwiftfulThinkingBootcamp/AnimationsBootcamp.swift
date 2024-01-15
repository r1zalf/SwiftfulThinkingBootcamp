//
//  AnimationsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 15/01/24.
//

import SwiftUI

struct AnimationsBootcamp: View {
    @State var isStart = false

    
    var body: some View {
        VStack(spacing: 20) {
            
//            Button("change") {
//                withAnimation(.default) {
//                    isStart.toggle()
//                }
//            }
//            .foregroundColor(.white)
//            .background(
//                RoundedRectangle(cornerRadius: isStart ? 20 : 50 )
//                    .fill(isStart ? .red : .blue)
//                    .frame(width: isStart ? 60 : 120, height: isStart ? 60 : 120)
//            )
            
            Button("change") {
                isStart.toggle()
            }.padding()
            .foregroundColor(.white)
            .background(
                RoundedRectangle(cornerRadius: isStart ? 20 : 50 )
                    .fill(isStart ? .red : .blue)
                    .frame(width: isStart ? nil : 120, height: isStart ? nil : 120)
            )
            .rotationEffect(Angle(degrees: isStart ? 0 : 360))
            .offset(x: 0, y: isStart ? 0 : 200)
            .animation(.default.repeatForever(), value: isStart)
            

        }
    }
}

#Preview {
    AnimationsBootcamp()
}
