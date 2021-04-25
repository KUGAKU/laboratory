//
//  TimerViewModel.swift
//  laboratoryWatch WatchKit Extension
//
//  Created by 山本学 on 2021/04/18.
//

import Foundation
import Combine
import SwiftUI

class TimerViewModel: ObservableObject {
    @Published var timerModel: TimerModel = TimerModel()
    @Published var remainSec: Int = 0
    var cancellable: Cancellable?
    var isIdle: Bool {
        return timerModel.startDate == nil
    }
    
    func start() {
        self.timerModel.startDate = Date()
        cancellable?.cancel()
        
        self.cancellable = Timer.publish(every: 1, on: .main, in: .common)
            .autoconnect()
            .sink() { date in
                self.updateRemainSec(date)
            }
    }
    
    func stop() {
        self.timerModel.startDate = nil
        self.cancellable?.cancel()
        self.cancellable = nil
        self.remainSec = 0
    }
    
    func updateRemainSec(_ date: Date) {
        guard let sec = self.timerModel.remainSec(date) else { return }
        self.remainSec = sec
        
        if (sec > 0) { return }
        self.remainSec = 0
        self.stop()
    }
    
    func updateSecAsString() -> String {
        if remainSec <= 0 {
            return String(timerModel.duration)
        }
        return String(remainSec)
    }
}
