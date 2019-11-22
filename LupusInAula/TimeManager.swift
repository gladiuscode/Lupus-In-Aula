//
//  TimeManager.swift
//  LupusInAula
//
//  Created by Riccardo Scambia on 22/11/2019.
//  Copyright © 2019 ITS. All rights reserved.
//

import Foundation


class TimeManager {
    
    static let timeToChangeDayState: TimeInterval = 60
    
    var currentTime: Date = Date() // on launch is now
    var isDay = false
    var isCompleted = false
    
    private init() { }
    
    static let shared: TimeManager = TimeManager()
    
    public func toggleDayStatus() {
        isDay = !isDay
    }
    
    
    
    
}
