//
//  ClockModelMock.swift
//  SOLID
//
//  Created by Nivedha Rajendran on 12.10.24.
//

import Foundation

class ClockViewModelMock {

    var clock: Clock
    
    private var clockManager: ClockProtocol
    
    init(clockManager: ClockProtocol) {
        self.clockManager = clockManager
        
        clock = clockManager.update()
        
    }
    
    func isLeapYear() -> String {
        "Leap Year"
    }
}


//ClockManager and ClockProtocol: Any new class that conforms to ClockProtocol can be used in place of ClockManager without affecting the correctness of the program. For example, if you create a MockClockManager for testing purposes, it can be substituted seamlessly in the ClockViewModel

class MockClockManager: ClockProtocol {
    func isLeapYear() -> Bool {
        true
    }
    
    func update() -> Clock {
        var clock = Clock()
        
        clock.hours = 12
        clock.minutes = 30
        clock.seconds = 45
        
        return clock
    }
}
