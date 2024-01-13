//
//  BackgroundaAndOverlayBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 13/01/24.
//

import SwiftUI

struct BackgroundaAndOverlayBootcamp: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .foregroundStyle(.white)
            .font(.system(size: 35))
            .background(
                Circle()
                    .fill(
                        LinearGradient(colors: [.blue, .mint], startPoint: .bottomTrailing, endPoint: .topLeading)
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: .mint.opacity(0.3), radius: 10, x: 0.0, y: 10)
                    .overlay(
                        Circle()
                            .fill(.green)
                            .frame(width: 30, height: 30)
                            .overlay {
                                Text("5")
                                    .foregroundStyle(.white)
                            }
                        , alignment: .bottomTrailing
                    ) .shadow(color: .mint.opacity(0.3), radius: 10, x: 5, y: 5)
            )
    }
}

#Preview {
    BackgroundaAndOverlayBootcamp()
}
