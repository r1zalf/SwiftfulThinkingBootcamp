//
//  IconBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 12/01/24.
//

import SwiftUI

struct IconBootcamp: View {
    var body: some View {
        Image(systemName: "folder.badge.plus")
            .renderingMode(.original)
//        Image(systemName: "textformat.size.larger.ja")
//            .font(.system(size: 120))
            .font(.largeTitle)
//            .resizable()
//            .foregroundStyle(.rizal)
//            .frame(width: 200, height: 200)
//            .clipped()
    }
}

#Preview {
    IconBootcamp()
}
