//
//  ContentView.swift
//  BetterRest
//
//  Created by noor on 2/9/25.
//

import SwiftUI

struct ContentView: View {
    @State private var wakeUp = Date.now
    var body: some View {
        DatePicker("Enter a date", selection: $wakeUp, in: Date.now...)
            .labelsHidden()
        
        Text(Date.now.formatted(date: .abbreviated, time:.shortened))
        Text(Date.now.formatted(date: .long, time:.shortened))
        Text(exampleDates())
    }
    
    func exampleDates() -> String {
        let components = Calendar.current.dateComponents([.hour, .minute], from: .now)
        let hour = components.hour ?? 0
        let minute = components.minute ?? 0
        return "Date Components (hours: minutes):  \(hour):\(minute)"
    }
}

#Preview {
    ContentView()
}
