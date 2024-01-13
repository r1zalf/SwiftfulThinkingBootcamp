//
//  InitAndEnumBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 13/01/24.
//

import SwiftUI

struct InitAndEnumBootcamp: View {
    let title: String
    let backgroundColor: Color
    
    init(category: Category) {
        
        title = category.rawValue
        
        if category == .Apple {
            backgroundColor = .red
        } else if category == .Cat {
            backgroundColor = .brown
        } else {
            backgroundColor = .orange
        }
    }
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color(backgroundColor))
                .frame(width: 200, height: 200)
            
            Text("\(title)")
                .font(.largeTitle).bold()
                .foregroundStyle(.white)
        }
    }
    
    enum Category: String {
        case Apple = "apple"
        case Orange = "orange"
        case Cat = "cat"
    }
}

#Preview {
    VStack {
        InitAndEnumBootcamp(category: .Apple)
        InitAndEnumBootcamp(category: .Orange)
        InitAndEnumBootcamp(category: .Cat)
        
    }
}
