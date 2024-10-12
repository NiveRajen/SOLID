//
//  ClockProtocol.swift
//  SOLID
//
//  Created by Nivedha Rajendran on 12.10.24.
//

import Foundation
import Combine

protocol ClockProtocol: ObservableObject {
    
    var clock: Clock { set get }
    
    func update()
}

extension ClockProtocol {
    
    func update() {
        let date = Date()
        clock.hours = Calendar.current.component(.hour, from: date)
        clock.minutes = Calendar.current.component(.minute, from: date)
        clock.seconds = Calendar.current.component(.second, from: date)
    }
}

