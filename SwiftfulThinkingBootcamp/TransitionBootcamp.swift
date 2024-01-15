//
//  TransitionBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 15/01/24.
//

import SwiftUI

struct TransitionBootcamp: View {
    @State var isShow = false
    var body: some View {
        VStack {
            Button("Show") {
                withAnimation(.easeInOut) {
                    isShow.toggle()
                }
            }
            Spacer()
            if isShow {
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.random())
                    .frame(height: UIScreen.main.bounds.height * 0.5)
//                    .transition(.move(edge: Edge.top))
                    .transition(.slide)

            }
        }.ignoresSafeArea(.all, edges: .bottom)
    }
}

#Preview {
    TransitionBootcamp()
}
