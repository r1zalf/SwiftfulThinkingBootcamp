//
//  AlertBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 16/01/24.
//

import SwiftUI

struct AlertBootcamp: View {
    @State var isShow = false
    
    var body: some View {
        Button("Show alert") {
            isShow = true
        }
        .alert(isPresented: $isShow, error: MyError.someError) { _ in
            Button("Oke", role: .destructive) {}
        }  message: { error in
            Text(error.recoverySuggestion ?? "Try again later.")
        }
        //        .alert("Title", isPresented: $isShow) {
        //            Button("Cancel", role: .cancel) {
        //
        //            }
        //            Button("Oke", role: .destructive) {
        //
        //            }
        //
        //        } message: {
        //            Text("meesage")
        //        }
        
    }
}

enum MyError: LocalizedError {
    case someError
    
    var errorDescription: String? {
        switch self {
        case .someError:
            return "Something went wrong"
        }
    }
    
    var recoverySuggestion: String? {
        switch self {
        case .someError:
            return "Please try again."
        }
    }
}



#Preview {
    AlertBootcamp()
}
