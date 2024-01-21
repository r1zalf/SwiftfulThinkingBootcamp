//
//  CustomModelBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 19/01/24.
//

import SwiftUI


struct User: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let username: String
    var verifed = false
    let followers: Int
}

struct CustomModelBootcamp: View {
    
    let users = [
        User(displayName: "Rizal", username: "rizalganteng", verifed: true, followers: 1_000),
        User(displayName: "Young Lex", username: "yglex", followers: 1_000_000),
        User(displayName: "Jokowi", username: "jkw", verifed: true,followers: 1_000_000_000)
    ]
    var body: some View {
        
        List {
            ForEach(users) { user in
                HStack(alignment: .top) {
                    Circle()
                        .frame(width: 45, height: 45)
                    Text(user.displayName)
                    Image(systemName: "checkmark.seal.fill")
                        .foregroundStyle(.blue)
                    Spacer()
                    
                    VStack {
                        Text("Followers")
                        Text("\(user.followers)")
                    }
                }
            }
            
        }
        .listStyle(.plain)
        .padding()
    }
}

#Preview {
    CustomModelBootcamp()
}
