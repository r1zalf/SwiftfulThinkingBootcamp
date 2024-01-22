//
//  ButtonStylesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 22/01/24.
//

import SwiftUI

struct ButtonStylesBootcamp: View {
    var body: some View {
        VStack {
            Button( "Button") {
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            
            Button( "Button") {
            }
            .buttonStyle(.bordered)
            .controlSize(.large)
            
            Button( "Button") {
            }
            .buttonStyle(.borderless)
            .controlSize(.large)
            Button( "Button") {
            }
            .buttonStyle(.plain)
            .controlSize(.large)
            
            
            Button {
                
            } label: {
                Text("Login")
                    .frame(maxWidth: .infinity, maxHeight: 40)
            }
            .buttonStyle(.borderedProminent)
            .padding(.horizontal, 20)
            
           
        }
    }
}

#Preview {
    ButtonStylesBootcamp()
}
