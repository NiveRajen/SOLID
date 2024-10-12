//
//  ClockView.swift
//  SOLID
//
//  Created by Nivedha Rajendran on 12.10.24.
//

import SwiftUI
import Combine

struct ClockView<T: ClockProtocol>: View {
    @ObservedObject var vm: T
    
    var body: some View {
        VStack {
            HStack{
                Text(String(format: "%02d", vm.clock.hours))
                Text(":")
                Text(String(format: "%02d", vm.clock.minutes))
                Text(":")
                Text(String(format: "%02d", vm.clock.seconds))
            }
            .font(.largeTitle)
            .monospaced()
        }
        .padding()
    }
}

#Preview {
    ClockView(vm: ClockViewModel(clock: Clock()))
}
