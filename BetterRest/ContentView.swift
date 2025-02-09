//
//  ContentView.swift
//  BetterRest
//
//  Created by noor on 2/9/25.
//

import SwiftUI

struct ContentView: View {
    @State private var sleepAmount = 0.0
    var body: some View {
        Stepper("\(sleepAmount.formatted()) Hours", value: $sleepAmount, in: 4...12,
                step: 0.25)
            .padding()
    }
}

#Preview {
    ContentView()
}
