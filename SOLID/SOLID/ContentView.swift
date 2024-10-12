//
//  ContentView.swift
//  SOLID
//
//  Created by Nivedha Rajendran on 12.10.24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ClockView(viewModel: ClockViewModel(clockManager: ClockManager()))
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
