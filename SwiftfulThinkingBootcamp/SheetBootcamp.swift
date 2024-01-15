//
//  SheetBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 15/01/24.
//

import SwiftUI

struct SheetBootcamp: View {
    @State var isShow = false
    
    var body: some View {
        Button("Show sheet"){
            isShow.toggle()
        }
//        .fullScreenCover(isPresented: $isShow, content: {
//            SecondScreen()
//        })
        .sheet(isPresented: $isShow)  {
            SecondScreen()
        }
    }
}

private struct SecondScreen: View {
    
    @Environment(\.presentationMode) var mode
    
    var body: some View {
        ZStack {
            Color.red
            Button("Dismiss") {
                mode.wrappedValue.dismiss()
            }
        }
    }
}

#Preview {
    SheetBootcamp()
}
