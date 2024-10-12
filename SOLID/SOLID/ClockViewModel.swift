//
//  ClockViewModel.swift
//  SOLID
//
//  Created by Nivedha Rajendran on 12.10.24.
//

import Foundation
import Combine

//Dependency Injection, or DI, is a programming technique that allows separation of concerns. A typical benefit of DI, in an MVVM application, is to make the developer able to instantiate a view model in the desired context.

class ClockViewModel: ClockProtocol {
    @Published var clock: Clock
    
    private var cancellables: Set<AnyCancellable> = []
    
    
    init(clock: Clock) {
        self.clock = clock
        
        Timer.publish(every: 1, on: .main, in: .common).autoconnect()
            .sink {_ in self.update() }
            .store(in: &cancellables)
    }
}
