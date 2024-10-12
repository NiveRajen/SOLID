//
//  ClockModelMock.swift
//  SOLID
//
//  Created by Nivedha Rajendran on 12.10.24.
//

import Foundation

class ClockViewModelMock: ClockProtocol {
     var clock: Clock
    
    init(clock: Clock) {
        self.clock = clock
        
        self.update()
    }
    
//    override func update() {
//        clock.hours = 12
//        clock.minutes = 41
//        clock.seconds = 00
//    }
}
