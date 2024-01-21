//
//  IfLetGuardBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 19/01/24.
//

import SwiftUI

struct IfLetGuardBootcamp: View {
    
    var username: String? = "rizalganteng"
    @State var isLoading = false
    @State var displayText = ""
    
    var body: some View {
        
        ZStack {
            if isLoading {
                ProgressView()
            } else {
                Text(displayText)
                    .font(.title.bold())
            }
        }.onAppear {
            getUser2()
        }
    }
    
    func getUser() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: {
            if let username = username {
                displayText = "username is @\(username)"
            } else {
                displayText = "Error no username"
            }
        })
    }
    
    func getUser2() {
        
        guard let username = username else {
            displayText = "Error no username"
            return
        }
        
        isLoading = true

        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {

            displayText = "username is @\(username)"
            isLoading = false
        }
        
        
    }
}

#Preview {
    IfLetGuardBootcamp()
}
