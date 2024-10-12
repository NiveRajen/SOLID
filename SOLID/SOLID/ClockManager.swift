//
//  ClockManager.swift
//  SOLID
//
//  Created by Nivedha Rajendran on 12.10.24.
//
import Foundation
import Combine


//SRP: ClockManager handles the data operations, such as updating clock from storage (in this case, in-memory), check if leap year. It encapsulates the data layer.
class ClockManager: ClockProtocol {
    
    private var clock = Clock()
    
    
    func update() -> Clock {
        let date = Date()
        
        clock.hours = Calendar.current.component(.hour, from: date)
        clock.minutes = Calendar.current.component(.minute, from: date)
        clock.seconds = Calendar.current.component(.second, from: date)
        
        return clock
    }
    
    
    func isLeapYear() -> Bool {
        let year = Calendar.current.component(.year, from: Date())
        
        return year % 4 == 0
    }
    
    
}
