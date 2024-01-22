//
//  FocusStateBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 22/01/24.
//

import SwiftUI

struct FocusStateBootcamp: View {
    enum FocusStateForm: Hashable {
        case Email
        case Password
    }
    
    @FocusState var focusStateForm: FocusStateForm?
    @State var emailText = ""
    @State var passwordText = ""
    
    var body: some View {
        VStack(spacing: 20){
            TextField("Input Email", text: $emailText)
                .focused($focusStateForm, equals: .Email)
                .padding()
                .background(Color(UIColor.secondarySystemBackground))
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            TextField("Input password", text: $passwordText)
                .focused($focusStateForm, equals: .Password)
                .padding()
                .background(Color(UIColor.secondarySystemBackground))
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            Button("Login") {
                
                if !emailText.isEmpty && !passwordText.isEmpty {
                    print("LOGIN")
                } else if emailText.isEmpty {
                    focusStateForm = .Email
                } else if passwordText.isEmpty {
                    focusStateForm = .Password
                } else {
                    focusStateForm = .Email
                }
            }.buttonStyle(.borderedProminent)
        }.padding()
    }
}

#Preview {
    FocusStateBootcamp()
}
