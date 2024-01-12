//
//  ColorsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 11/01/24.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
//            .fill(Color(UIColor.secondarySystemBackground))
            .fill(.rizal) // custom from assets
            .frame(width: 200, height: 200)
            .shadow(color: .rizal.opacity(0.3), radius: 20, x: 20, y: -20)
    }
}

#Preview {
    ColorsBootcamp()
}
