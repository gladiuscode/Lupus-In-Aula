//
//  TimeManager.swift
//  LupusInAula
//
//  Created by Andrea Milone on 22/11/2019.
//  Copyright © 2019 ITS. All rights reserved.
//

import Foundation

class TimeManager {
    var currentTime: Date = Date() // on launch is now
    var isDay: Bool = true
    var isCompleted = false
    private init() {}
    
    static let shared: TimeManager = TimeManager()
    
    public func toggleDayStatus() {
     isDay = !isDay
    }
}
