//
//  FrameBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 13/01/24.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(.green)
            .frame(width: 60, height: 60,alignment: .trailing)
            .background(.red)
            .frame(width: 120, height: 120)
            .background(.cyan)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(.pink)
            .frame(height: 240, alignment: .top)
            .background(.brown)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
            .background(.yellow)
    }
}

#Preview {
    FrameBootcamp()
}
