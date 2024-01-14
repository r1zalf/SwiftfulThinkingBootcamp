//
//  ScrollViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 13/01/24.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVStack {
                ForEach(0..<100) { _ in
                    ScrollView(.horizontal, showsIndicators: true) {
                        LazyHStack {
                            ForEach(0..<100) {_ in
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(.yellow)
                                    .frame(width: 150, height: 150)
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ScrollViewBootcamp()
}
