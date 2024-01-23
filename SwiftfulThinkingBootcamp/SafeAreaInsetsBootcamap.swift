//
//  SafeAreaInsetsBootcamap.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 23/01/24.
//

import SwiftUI

struct SafeAreaInsetsBootcamap: View {
    var body: some View {
        NavigationStack {
            Form {
                ForEach(1..<20) {
                    Text(String($0))
                }
            }
            .navigationTitle("List")
            .safeAreaInset(edge: .bottom, alignment: .trailing) {
                Image(systemName: "plus")
                    .font(.title)
                    .foregroundStyle(.white)
                    .padding()
                    .background(.blue)
                    .clipShape(Circle())
                    .padding(.trailing, 20)
        }
        }
    }
}

#Preview {
    SafeAreaInsetsBootcamap()
}
