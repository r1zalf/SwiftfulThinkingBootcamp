//
//  AsyncImageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 22/01/24.
//

import SwiftUI

struct AsyncImageBootcamp: View {
    let url = "https://picsum.photos/400"
    var body: some View {
        AsyncImage(url: URL(string: url)) { phase in
            
            switch phase {
            case .empty:
                ProgressView()
            case .success(let image):
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
            case .failure(let error):
                Text("Somthing error \(error.localizedDescription)")
            @unknown default:
                fatalError()
            }
            
        }
    }
}

#Preview {
    AsyncImageBootcamp()
}
