//
//  ButtonAndStateBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 14/01/24.
//

import SwiftUI

struct ButtonAndStateBootcamp: View {
    @State var count = 1
    
    @State var bgColor: Color = .white
    
    
    var body: some View {
        
        ZStack {
            bgColor
            
            VStack(spacing: 40) {
                Button("Increment: \(count)") {
                    count += 1
                }.foregroundStyle(.green)
                
                Button(action: {
                    
                }, label: {
                    /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                        .font(.title).bold()
                        .foregroundStyle(.white)
                        .padding(.all, 12)
                        .background(.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                })
                
                Button(action: {
                    bgColor = .brown
                }, label: {
                    /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                        .foregroundStyle(.red)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(.red, lineWidth: 2)
                        )
                })
                
                Button("Increment: \(count)") {
                    count += 1
                }
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.brown)
                )
            }
        }
    }
}

#Preview {
    ButtonAndStateBootcamp()
}
