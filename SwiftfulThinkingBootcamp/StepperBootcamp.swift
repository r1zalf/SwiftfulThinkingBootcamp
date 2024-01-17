//
//  StepperBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 17/01/24.
//

import SwiftUI

struct StepperBootcamp: View {
    
    @State var stepperValue = 0
    
    @State var rectangleSize = 0
    
    var body: some View {
        VStack(spacing: 20) {
            Stepper("Stepper \(stepperValue)", value: $stepperValue)
                .padding()
                .background(Color.random())
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .padding()
            
            
            
            
            Stepper("Stepper otheer") {
                valueChange(num: +100)
            } onDecrement: {
                valueChange(num: -100)
            }.padding()
                .background(Color.random())
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .padding()
            
            
            RoundedRectangle(cornerRadius: 20, style:.circular)
                .frame(width: 100 + CGFloat(rectangleSize), height: 100)
        }
    }
    
    func valueChange(num: Int) {
        withAnimation(.spring) {
            rectangleSize += num
        }
    }
}

#Preview {
    StepperBootcamp()
}
