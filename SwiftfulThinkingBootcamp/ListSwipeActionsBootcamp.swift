//
//  ListSwipeActionsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 22/01/24.
//

import SwiftUI

struct ListSwipeActionsBootcamp: View {
    let fruits = ["orange", "banana", "manggo"]
    var body: some View {
        
        List {
            ForEach(fruits, id: \.self) {
                Text($0)
                    .swipeActions(edge: .trailing) {
                        Button("Add") {
                        }
                        .tint(.green)
                        
                        Button("Update") {
                        }
                        .tint(.blue)
                        
                        Button("Delere") {
                        }
                        .tint(.red)
                    }
                    .swipeActions(edge: .leading, allowsFullSwipe: false) {
                        Button("Share") {
                        }
                        .tint(.purple)
                    }
            }
        }
    }
}

#Preview {
    ListSwipeActionsBootcamp()
}
