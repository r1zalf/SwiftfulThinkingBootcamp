//
//  GridBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 13/01/24.
//

import SwiftUI

struct GridBootcamp: View {
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, pinnedViews: [.sectionHeaders], content: {
                Section(header: Text("Section 1")
                    .frame(maxWidth: .infinity ,alignment: .leading)
                    .padding()
                    .background(.red)
                ) {
                    ForEach(0..<24) { _ in
                        Rectangle()
                            .fill(.yellow)
                            .frame(height: 150)
                    }
                }
            })
            
            LazyVGrid(columns: columns, pinnedViews: [.sectionHeaders], content: {
                Section(header: Text("Section 2")
                    .frame(maxWidth: .infinity ,alignment: .leading)
                    .padding()
                    .background(.purple)
                ) {
                    ForEach(0..<24) { _ in
                        Rectangle()
                            .fill(.green)
                            .frame(height: 150)
                    }
                }
            })
        }
    }
}

#Preview {
    GridBootcamp()
}
