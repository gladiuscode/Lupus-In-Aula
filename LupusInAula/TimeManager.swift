//
//  TimeManager.swift
//  LupusInAula
//
//  Created by Riccardo Scambia on 22/11/2019.
//  Copyright © 2019 ITS. All rights reserved.
//

import Foundation

enum DayStatus {
    case day
    case night
}

/// In charge of handling the time.
class TimeManager {
    
    // MARK: - Properties
    
    private let timeToChangeDayState: TimeInterval
    private var timer: Timer?
    
    /// The current time.
    var currentTime: Date {
        return Date()
    }
    
    /// Whether is day or not.
    private var isDay = false
    
    var dayStatus: DayStatus {
        return isDay ? .day : .night
    }
    
    /// Fired when the day status changes.
    var whenDayStatusHasChanged: ((_ dayStatus: DayStatus) -> Void)?
    
    // MARK: - Initializers
    
    public init(timeRequiredToSwitchBetweenDayStatus requiredTime: TimeInterval) {
        self.timeToChangeDayState = requiredTime
    }
    
    // MARK: - Business Logic
    
    /// Toggles the day status.
    public func toggleDayStatus() {
        isDay = !isDay
    }
    
    /// Starts the timer.
    public func start(isDay: Bool = true) {
        
        self.isDay = isDay
        
        // to notificate the first time TBC
        self.whenDayStatusHasChanged?(self.dayStatus)
        
        timer = Timer.scheduledTimer(withTimeInterval: self.timeToChangeDayState,
                                     repeats: false,
                                     block:
            { timer in
                
                self.toggleDayStatus()
                
                // to notificate
                self.whenDayStatusHasChanged?(self.dayStatus)
        })
        
    }
    
}
