//
//  OnAppearAndOnDisappearBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 19/01/24.
//

import SwiftUI

struct OnAppearAndOnDisappearBootcamp: View {
    var body: some View {
        NavigationStack {
            ZStack {
                NavigationLink("Move", destination: NewView())
            }.onAppear {
                print("onAppear: Main View")
            }.onDisappear {
                print("onDisappear: Main View")
            }
        }
    }
}

struct NewView: View {
    var body: some View {
        Text("Value abc")
            .onAppear {
                print("onAppear: Second View")
            }.onDisappear {
                print("onDisappear: Second View")
            }
    }
}

#Preview {
    OnAppearAndOnDisappearBootcamp()
}
