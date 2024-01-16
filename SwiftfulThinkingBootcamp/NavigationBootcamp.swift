//
//  NavigationBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 16/01/24.
//

import SwiftUI

struct NavigationBootcamp: View {
    var body: some View {
        NavigationStack {
            
            NavigationLink("Move", destination: SeconView())
                .navigationTitle("Page 1")
        }
       
    }
}

struct SeconView: View {
    var body: some View {
        NavigationStack {
            
            Text("This is secon view")
                .navigationTitle("Page 2")
//                .navigationBarTitleDisplayMode(.inline)
             
                .toolbar{
                    NavigationLink {
                        OtherView()
                    } label: {
                        Image(systemName: "person.fill")
                    }
                }
//                .toolbar(.hidden)
        }
    }
}

struct OtherView: View {
    @Environment(\.dismiss) var dimiss
    
    var body: some View {
        
        NavigationStack {
            
            Button("dismiss") {
                dimiss()
            }.navigationTitle("Other view")
        }
    }
}

#Preview {
    NavigationBootcamp()
}
