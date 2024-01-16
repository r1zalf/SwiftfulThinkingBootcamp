//
//  ActionsheetBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 16/01/24.
//

import SwiftUI

struct ActionsheetBootcamp: View {
    @State var isShow = false
    @State var backgroundColor: Color = .gray
    var body: some View {
        ZStack {
            backgroundColor
            
            Button("Show actionsheet") {
                isShow.toggle()
            }
            .foregroundColor(.black)
            //            .confirmationDialog("Title", isPresented: $isShow,  titleVisibility: .automatic) {
            //                Button(action: {}, label: {
            //                    Label("Test label", systemImage: "square.and.arrow.up")
            //                })
            //                Button("Red") { backgroundColor = .red }
            //                Button("Green") { backgroundColor = .green }
            //                Button("Blue") { backgroundColor = .blue }
            //                Button("Cancel", role: .cancel) { }
            //            }
            .actionSheet(isPresented: $isShow, content: {
                ActionSheet(
                    title: Text("Title title"),
                    message: Text("message message"),
                    buttons: [
                        .cancel(Text("cancel")),
                        .default(Text("default")),
                        .destructive(Text("destructive"))
                    ]
                )
            })
        }
    }
}

#Preview {
    ActionsheetBootcamp()
}
