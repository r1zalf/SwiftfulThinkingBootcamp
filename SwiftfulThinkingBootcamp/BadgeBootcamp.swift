//
//  BadgeBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 22/01/24.
//

import SwiftUI

struct BadgeBootcamp: View {
    var body: some View {
        TabView {
            SecondBadgeBootcamp()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            Text("Profile")
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle")
                }
                .badge(/*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        }
        
    }
}

struct SecondBadgeBootcamp: View {
    let fruits = ["orange", "banana", "manggo"]
    var body: some View {
        List {
            ForEach(fruits, id: \.self) {
                Text($0)
                    .badge("NEW!")
            }
        }
    }
}

#Preview {
    BadgeBootcamp()
}
