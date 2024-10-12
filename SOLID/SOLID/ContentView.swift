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
            ClockView(vm: ClockViewModel(clock: Clock()))
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
