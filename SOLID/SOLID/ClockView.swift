//
//  ClockView.swift
//  SOLID
//
//  Created by Nivedha Rajendran on 12.10.24.
//

import SwiftUI
import Combine

struct ClockView: View {
    @StateObject private var viewModel: ClockViewModel
    
    init(viewModel: ClockViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    var body: some View {
        VStack {
            HStack{
                Text(String(format: "%02d", viewModel.clock.hours))
                Text(":")
                Text(String(format: "%02d", viewModel.clock.minutes))
                Text(":")
                Text(String(format: "%02d", viewModel.clock.seconds))
            }
            .font(.largeTitle)
            .monospaced()
            
            Text(viewModel.isLeapYear())
        }
        .padding()
    }
}

#Preview {
    ClockView(viewModel: ClockViewModel(clockManager: ClockManager()))
}
