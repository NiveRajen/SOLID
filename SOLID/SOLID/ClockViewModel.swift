//
//  ClockViewModel.swift
//  SOLID
//
//  Created by Nivedha Rajendran on 12.10.24.
//

import Foundation
import Combine

//Dependency Injection, or DI, is a programming technique that allows separation of concerns. A typical benefit of DI, in an MVVM application, is to make the developer able to instantiate a view model in the desired context.

//SRP: Responsible for managing the business logic related to clock, such as updating clock, check if leap year. It does not handle UI logic directly.

//Dependency Inversion: Application: High-level modules should not depend on low-level modules; both should depend on abstractions.
//ClockViewModel: It depends on the clockProtocol abstraction rather than a concrete implementation of clockManager. This allows you to inject any class confirms to protocol into the view model, promoting loose coupling and making it easier to switch implementations (e.g., for testing or future enhancements).

class ClockViewModel: ObservableObject {
    @Published var clock: Clock = Clock()
    
    private var clockManager: ClockProtocol
    
    private var cancellables: Set<AnyCancellable> = []
    
    
    init(clockManager: ClockProtocol) {
        self.clockManager = clockManager
        
        
        Timer.publish(every: 1, on: .main, in: .common).autoconnect()
            .sink {[weak self] _ in
                self?.clock = self?.clockManager.update() ?? Clock()
            }
            .store(in: &cancellables)
    }
    
    func isLeapYear() -> String {
        clockManager.isLeapYear() ? "Leap Year" : "Not Leap Year"
    }
}
