//
//  ViewModelBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 19/01/24.
//

import SwiftUI

class UserViewModel: ObservableObject {
    
    @Published var names = [String]()
    @Published var isLoading = false
    
    init() {
        getNames()
    }
    
    func getNames(){
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            print("call getNames")
            self.names = [ "Aku", "akmu", "adeh", "apa"]
            self.isLoading = false
        }
    }
}

struct ViewModelBootcamp: View {
    
    /*
     @ObservableObject biasanya di-passing dari parent view ke child view, sedangkan @StateObject di-instantiate di dalam view tersebut.
     @ObservableObject tidak boleh di-instantiate di dalam body view karena akan menyebabkan memory leak, sedangkan @StateObject aman untuk di-instantiate di dalam body view.
     @ObservableObject lebih cocok digunakan untuk shared data model, sedangkan @StateObject lebih cocok untuk view-specific data model.
     */
    
        @ObservedObject var userViewModel = UserViewModel() // good for passing data
//    @StateObject var userViewModel = UserViewModel() // good for init
    var body: some View {
        NavigationStack {
            if userViewModel.isLoading {
                ProgressView()
            } else {
                List {
                    ForEach(userViewModel.names, id: \.self) {
                        NavigationLink($0) {
                            SecondViewModelBootcamp(userViewModel: userViewModel)
                        }
                    }
                }
            }
        }
    }
}
struct SecondViewModelBootcamp: View {
    @StateObject var userViewModel: UserViewModel
    var body: some View {
        Text("Second view")
        if userViewModel.isLoading {
            ProgressView()
        } else {
            List {
                ForEach(userViewModel.names, id: \.self) {
                    NavigationLink($0) {
                        SecondViewModelBootcamp(userViewModel: userViewModel)
                    }
                }
            }
        }
    }
}
#Preview {
    ViewModelBootcamp()
}
