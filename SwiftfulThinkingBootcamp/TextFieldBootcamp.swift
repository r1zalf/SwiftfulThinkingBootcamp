//
//  TextFieldBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 17/01/24.
//

import SwiftUI

struct TextFieldBootcamp: View {
    
    @State var valueText = ""
    @State var valuesText = [String]()
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 13) {
                TextField("", text: $valueText, prompt: Text("Place holder").foregroundStyle(.red))
                    .padding()
                    .font(.body.weight(.medium))
                    .foregroundStyle(.purple)
                    .background( Color.gray.opacity(0.3))
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                
                Button("Save") {
                    valuesText.append(valueText)
                }
                .foregroundStyle(.white)
                .padding()
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .foregroundStyle(.purple)
                .background(validate() ?  .blue : .gray)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .disabled(!validate())
                ForEach(valuesText, id: \.self) {
                    Text($0)
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("TextFieldBootcamp")
        }
    }
    
    
    func validate() -> Bool {
        return valueText.count > 3
    }
}

#Preview {
    TextFieldBootcamp()
}
