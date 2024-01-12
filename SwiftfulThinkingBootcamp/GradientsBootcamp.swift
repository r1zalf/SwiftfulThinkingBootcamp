//
//  GradientsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 12/01/24.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
//                LinearGradient(colors: [.blue, .mint], startPoint: .leading, endPoint: .trailing)
//                RadialGradient(colors: [.blue, .mint], center: .center, startRadius: 10, endRadius: 60)
                AngularGradient(colors:  [.blue, .mint], center: .topLeading, angle:  .degrees(180))
            )
            .frame(width: 200, height: 100)
        
    }
}

#Preview {
    GradientsBootcamp()
}
