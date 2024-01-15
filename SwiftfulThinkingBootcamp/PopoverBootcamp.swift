//
//  PopoverBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 15/01/24.
//

import SwiftUI

struct PopoverBootcamp: View {
    @State var isShow = false
    
    var body: some View {
        ZStack {
            Button("Show sheet"){
                withAnimation(.linear) {
                    isShow.toggle()
                }
            }
            //        .fullScreenCover(isPresented: $isShow, content: {
            //            SecondScreen()
            //        })
            // 1. SHEET
            //        .sheet(isPresented: $isShow)  {
            //            SecondScreen()
            //        }
            // 2. Transition & offset
            ZStack {
                
//                if isShow {
                    SecondScreen(isShow: $isShow)
                        .offset(y: isShow ? 0 : UIScreen.main.bounds.height)
//                        .transition(.move(edge: .bottom))
//                }
                
            }.zIndex(2)
        }
    }
}
private struct SecondScreen: View {
    // 1. SHEET
//    @Environment(\.presentationMode) var mode
    
    @Binding var isShow: Bool
    
    var body: some View {
        ZStack {
            Color.red
            Button("Dismiss") {
                isShow.toggle()
//                1. SHEET
//                mode.wrappedValue.dismiss()
                
            }
        }
    }
}

#Preview {
    PopoverBootcamp()
}
