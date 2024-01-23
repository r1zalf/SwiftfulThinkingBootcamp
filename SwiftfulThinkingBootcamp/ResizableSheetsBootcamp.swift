//
//  ResizableSheetsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 23/01/24.
//

import SwiftUI

struct ResizableSheetsBootcamp: View {
    @State var isPresented = false
    var body: some View {
        Button("Show") {
            isPresented.toggle()
        }.sheet(isPresented: $isPresented, content: {
            SheetResizableSheetsBootcamp()
                .presentationDetents([.fraction(0.3), .height(350),.medium, .large])
//                .presentationDetents([.medium, .large])
//                .interactiveDismissDisabled()
//                .presentationDragIndicator(.hidden)
        })
    }
}

struct SheetResizableSheetsBootcamp: View {
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            Text("hello")
        }
    }
}


#Preview {
    ResizableSheetsBootcamp()
}
