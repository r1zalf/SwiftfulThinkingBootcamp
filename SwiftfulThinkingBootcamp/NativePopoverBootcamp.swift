//
//  NativePopoverBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 23/01/24.
//

import SwiftUI

struct NativePopoverBootcamp: View {
    @State var isPresented = false
    var body: some View {
        Button("Popover") {
            isPresented.toggle()
        }.popover(isPresented: $isPresented, attachmentAnchor: .point(.leading)) {
            SecondNativePopoverBootcamp()
                .presentationCompactAdaptation(.popover)
        }
    }
}

struct SecondNativePopoverBootcamp: View {
    var body: some View {
        VStack {
            Label("Menu 1", systemImage: "flame")
            Label("Menu 2", systemImage: "scribble")
        }.padding()
    }
}


#Preview {
    NativePopoverBootcamp()
}
