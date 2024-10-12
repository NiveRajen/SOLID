//
//  ClockProtocol.swift
//  SOLID
//
//  Created by Nivedha Rajendran on 12.10.24.
//

import Foundation
import Combine

//The Open-Closed Principle requires that entities(classes, functions, etc) should be open for extension and closed for modification.
//this principle says, we should be able to add new functionality inside ClockManager or create a new class without touching the existing code in view model


//ISP - Clients should not be forced to depend on interfaces they do not use.
//ClockProtocol: This interface is focused on clock-related operations, ensuring that any implementation only needs to implement methods that are relevant to clock management. If you later introduce a different service with different requirements, you can create a separate interface rather than bloating a single interface.

protocol ClockProtocol {
    
    func update() -> Clock
    
    func isLeapYear() -> Bool
}

