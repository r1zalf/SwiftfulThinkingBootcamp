//
//  ListBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 16/01/24.
//

import SwiftUI

struct ListBootcamp: View {
    
    @State var fruits = ["Orange", "Apple", "Banana"]
    
    
    var body: some View {
        NavigationStack {
            
            List {
                Section {
                    ForEach(fruits, id: \.self) {
                        Text($0.capitalized)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                } header: {
                    HStack {
                        Text("Fruits")
                        Image(systemName: "flame.fill")
                    }
                    .font(.headline)
                    .foregroundStyle(.orange)
                }
                
                Section {
                    ForEach(fruits, id: \.self) {
                        Text($0.capitalized)
                            .padding(.vertical)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.random())
                } header: {
                    Text("Veggies")
                        .font(.headline)
                        .foregroundStyle(.purple)
                }
            }
            .listStyle(SidebarListStyle())
            .navigationTitle("Shopping List")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .topBarTrailing) {
                    addButton
                }
            }.tint(.purple)
        }
    }
    
    var addButton: some View {
        Button("Add") {
            fruits.append("New one")
        }
    }
    
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
}

#Preview {
    ListBootcamp()
}
