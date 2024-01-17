//
//  ColorPickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 17/01/24.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    @State var colorSelect: Color = .white
    var body: some View {
        
        ZStack {
            colorSelect
            
            ColorPicker("Color: \(colorSelect.description)", selection: $colorSelect)
            
                .padding()
                .background(.gray)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .padding()
        }
    }
}

#Preview {
    ColorPickerBootcamp()
}
