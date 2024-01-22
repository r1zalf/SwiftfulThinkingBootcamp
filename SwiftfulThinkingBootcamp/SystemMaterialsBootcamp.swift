//
//  SystemMaterialsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 22/01/24.
//

import SwiftUI

struct SystemMaterialsBootcamp: View {
    var body: some View {
        ZStack {
            Image(.twice)
                .resizable()
                .scaledToFill()
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
                .ignoresSafeArea()
            
            VStack() {
                Spacer()
                ZStack {
                    RoundedRectangle(cornerRadius: 40)
                        .foregroundStyle(.ultraThinMaterial)
                    .frame(maxWidth: .infinity, maxHeight: UIScreen.main.bounds.height * 0.4)
                    
                    Text("put something")
                }
            }
            
            
        }
    }
}

#Preview {
    SystemMaterialsBootcamp()
}
