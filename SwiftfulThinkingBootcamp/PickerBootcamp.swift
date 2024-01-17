//
//  PickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 17/01/24.
//

import SwiftUI

struct PickerBootcamp: View {
    
    let fruits = ["Pisang", "mangga", "apple", "orange"]
    @State var fruit = "Pisang"
    var body: some View {
        VStack {
            Picker("Pilih", selection: $fruit) {
                ForEach(fruits, id: \.self) {
                    Text($0)
                }
            }.pickerStyle(.segmented)
            
            
            Picker("Pilih", selection: $fruit) {
                ForEach(fruits, id: \.self) {
                    Text($0)
                }
            }.pickerStyle(.menu)
            
            Picker("Pilih", selection: $fruit) {
                ForEach(fruits, id: \.self) {
                    Text($0)
                }
            }.pickerStyle(.inline)
            
            Picker("Pilih", selection: $fruit) {
                ForEach(fruits, id: \.self) {
                    Text($0)
                }
            }.pickerStyle(.navigationLink)
            
            
            Picker("Pilih", selection: $fruit) {
                ForEach(fruits, id: \.self) {
                    Text($0)
                }
            }.pickerStyle(.palette)

        }.padding()
    }
}

#Preview {
    PickerBootcamp()
}
