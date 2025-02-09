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
    }
}

#Preview {
    ContentView()
}
