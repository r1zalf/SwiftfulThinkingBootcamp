//
//  ReturnKeyboardBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 22/01/24.
//

import SwiftUI

struct ReturnKeyboardBootcamp: View {
    
    @State var passwordText = ""
    
    var body: some View {
        TextField("Input password", text: $passwordText)
//            .keyboardType(.asciiCapable)
            .submitLabel(.search)
            .onSubmit {
                print("onSubmit")
            }
            .padding()
            .background(Color(UIColor.secondarySystemBackground))
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
    }
}

#Preview {
    ReturnKeyboardBootcamp()
}
