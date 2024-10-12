//
//  ClockManager.swift
//  SOLID
//
//  Created by Nivedha Rajendran on 12.10.24.
//

import Foundation

//The Open-Closed Principle requires that entities(classes, functions, etc) should be open for extension and closed for modification.
//this principle says, we should be able to add new functionality without touching the existing code.
//Here, we don't have to change any code inside the update function of Clockprotocol, we can override the update method in the extended classes

class ClockManager: ClockProtocol {
    @Published var clock = Clock()
    
    
    func update() {
        let date = Date()
        clock.hours = Calendar.current.component(.hour, from: date)
        clock.minutes = Calendar.current.component(.minute, from: date)
        clock.seconds = Calendar.current.component(.second, from: date)
    }
}

