//
//  DatePickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 17/01/24.
//

import SwiftUI

struct DatePickerBootcamp: View {
    @State var datePicker = Date()
    
    var startDate = Calendar.current.date(from: DateComponents(year: 2021)) ?? Date()
    var endDate = Date()
    
    var body: some View {
        DatePicker("Pick date", selection: $datePicker, displayedComponents:  [.date])
            .datePickerStyle(.graphical)
//        DatePicker("Pick date", selection: $datePicker, in: startDate...endDate, displayedComponents:  [.date])
//        DatePicker("Pick date", selection: $datePicker, displayedComponents: [.date])
//        DatePicker("Pick date", selection: $datePicker)
            .foregroundStyle(Color.random())
            .padding()
            .background(Color.random())
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .padding()
    }
}

#Preview {
    DatePickerBootcamp()
}
