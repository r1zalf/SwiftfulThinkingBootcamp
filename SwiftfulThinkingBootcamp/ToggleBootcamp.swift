//
//  ToggleBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 17/01/24.
//

import SwiftUI

struct ToggleBootcamp: View {
    @State var isOn = false
    var body: some View {
        Toggle(isOn: $isOn) {
            Text(isOn ? "ON" : "OFF")
        }.tint(.blue)
        .padding()
    }
}

#Preview {
    ToggleBootcamp()
}
