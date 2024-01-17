//
//  TabViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 17/01/24.
//

import SwiftUI

struct TabViewBootcamp: View {
    var body: some View {
        //        TabView {
        //            Text("Text")
        //                .tabItem {
        //                    Label("Test", systemImage: "flame")
        //                }
        //
        //            TabSeconView()
        //                .tabItem {
        //                    Label("Home", systemImage: "house")
        //                }
        //
        //            Text("Profile")
        //                .tabItem {
        //                    Label("Test", systemImage: "person.crop.circle")
        //                }
        //        }.tint(.red)
        
        TabView {
            ForEach(0..<4) { _ in
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.random())
            }
        }
        .tabViewStyle(.page)
        .frame(maxWidth: .infinity, maxHeight: 200)
        .padding(.horizontal)
    }
}


struct TabSeconView: View {
    var body: some View {
        ZStack {
            Color.red
            Text("Home")
        }
    }
}

#Preview {
    TabViewBootcamp()
}
