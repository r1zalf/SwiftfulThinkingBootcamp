//
//  ToolbarBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 23/01/24.
//

import SwiftUI

struct ToolbarBootcamp: View {
    @State var name: String = ""
    var body: some View {
        NavigationStack {
            Form {
                Text("Rizal")
                TextField("Input your name", text: $name)
                Text("Toolbar")
                
                ForEach(1..<20) {
                    Text(String($0))
                }
                
            }
            .navigationTitle("Toolbar")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "square.and.arrow.up")
                }
                
                ToolbarItem(placement: .topBarLeading) {
                    Image(systemName: "gamecontroller")
                }
                
                ToolbarItem(placement: .keyboard) {
                    Image(systemName: "lasso")
                }
            }
            .toolbarTitleMenu {
                Button("Act1") {
                    
                }
                Button("Act2") {
                    
                }
            }
            .toolbarColorScheme(.dark, for: .navigationBar)
//            .toolbar(.hidden, for: .navigationBar)
            
        }
    }
}

#Preview {
    ToolbarBootcamp()
}
