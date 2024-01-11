//
//  ShapeBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 11/01/24.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
                Circle()
//                    .trim(from: 0.5, to: 1)
//                    .stroke(style: StrokeStyle(lineWidth: 30, lineCap: .round, dash: [50]))
                    .fill(.cyan)
                    .frame(width: 250, height: 250)
                    .foregroundStyle(.red)
        //        Rectangle()
        //        RoundedRectangle(cornerRadius: 20)
        //        Capsule(style: .circular)
        //        Ellipse()
        //            .frame(width: 100, height: 200)
        
    }
}

#Preview {
    ShapesBootcamp()
}
