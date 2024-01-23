//
//  NavigationStackBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 23/01/24.
//

import SwiftUI

struct NavigationStackBootcamp: View {
    
    let fruits = ["apple", "orange", "banana", "watermelon"]
    
    
    @State var navStack: [String] = [String]()
    
    var body: some View {
        NavigationStack(path: $navStack) {
            List {
                Button("Via stack") {
                    navStack.append("New Page")
                }
                
                ForEach(fruits, id: \.self) {
                    NavigationLink($0, value: $0)
                    
                }
                
                ForEach(0..<10) {
                    NavigationLink(String($0), value: $0)
                }
            }
            .navigationTitle("Fruits")
            .navigationDestination(for: String.self) { value in
                SecondNavigationStackBootcamp(title: value)
            }
            .navigationDestination(for: Int.self) { value in
                Text(String(value))
            }
        }
        
    }
}

struct SecondNavigationStackBootcamp: View {
    
    let title: String
    
    init(title: String) {
        self.title = title
    }
    
    var body: some View {
        ScrollView{
            Text(title)
        }.navigationTitle("Second View")
    }
}

#Preview {
    NavigationStackBootcamp()
}
