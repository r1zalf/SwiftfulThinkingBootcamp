//
//  ContextMenuBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 16/01/24.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    var body: some View {
        
        
        VStack(alignment: .leading, spacing: 15) {
            Label("My name is Rizal", systemImage: "flame")
            Text("Context Menu example")
        }.font(.title.weight(.bold)).foregroundStyle(Color.random())
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 20).fill(Color.random())
        )
        .contextMenu(menuItems: {
            Label("My name is Rizal", systemImage: "flame")
            Label("My name is Rizal", systemImage: "flame")
            Button {
                print("do something")
            } label: {
                Label("My name is Rizal", systemImage: "flame")
            }
        })
//        .contextMenu {
//            Text("Apa ini contextMenu")
//        } preview: {
//            Circle()
//                .frame(width: 200)
//                .background(Color.random())
//        }

//        .contextMenu(ContextMenu(menuItems: {
//            Text("Menu Item 1")
//            Text("Menu Item 2")
//            Text("Menu Item 3")
//        }))
    }
}

#Preview {
    ContextMenuBootcamp()
}
