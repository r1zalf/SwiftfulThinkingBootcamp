//
//  EnvironmentObjectBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 20/01/24.
//

import SwiftUI

class EnvironmentViewModel: ObservableObject {
    @Published var products = ["Apple", "MacMini", "iPhone", "iMac"]
}

struct EnvironmentObjectBootcamp: View {
    
    @StateObject var viewModel =  EnvironmentViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.products, id: \.self) { product in
                    NavigationLink {
                        NextView(selected: product)
                    } label: {
                        Text(product)
                    }

                }
            }
        }.environmentObject(viewModel)
    }
}

struct NextView: View {
    
    let selected: String
    
    var body: some View {
        NavigationLink(selected) {
            FinalView()
        }
    }
}

struct FinalView: View {
    @EnvironmentObject var viewModel: EnvironmentViewModel
    
    var body: some View {
        List {
            ForEach(viewModel.products, id: \.self) {
                Text($0)
            }
        }
    }
}

#Preview {
    EnvironmentObjectBootcamp()
}
