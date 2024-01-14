//
//  TernaryBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 14/01/24.
//

import SwiftUI

struct TernaryBootcamp: View {
    @State var isStart = false
    var body: some View {
        VStack {
            
            Button("start") {
                isStart.toggle()
            }
            
            RoundedRectangle(cornerRadius: isStart ? 20 : 50 )
                .fill(isStart ? .red : .blue)
                .frame(width: isStart ? 60 : 120, height: isStart ? 60 : 120)
            
        }
    }
}

#Preview {
    TernaryBootcamp()
}
