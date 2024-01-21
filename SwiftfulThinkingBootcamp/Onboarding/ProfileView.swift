//
//  ProfileView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 20/01/24.
//

import SwiftUI

struct ProfileView: View {
    @AppStorage("name")  var name: String?
    @AppStorage("age")  var age: Int?
    @AppStorage("gender") var gender: String?
    @AppStorage("is_signIn") var isSignin: Bool?
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Profile page")
                .font(.largeTitle)
            Text(name ?? "Default value")
            Text(String(age ?? 0))
            Text(gender ?? "Default value")
            Button("Logout") {
                isSignin = false
                name = nil
            }
        }
    }
}

#Preview {
    ProfileView()
}
