//
//  SliderBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 17/01/24.
//

import SwiftUI

struct SliderBootcamp: View {
    @State var sliderValue: Float = 0
    var body: some View {
        VStack {
            
            Text(String(format: "%.0f", sliderValue))
            
            Slider(value: $sliderValue, in: 0...100)
                .tint(.white)
                .padding()
                .background(.gray)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .padding()
        }
    }
}

#Preview {
    SliderBootcamp()
}
