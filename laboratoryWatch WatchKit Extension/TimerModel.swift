//
//  TimerModel.swift
//  laboratoryWatch WatchKit Extension
//
//  Created by 山本学 on 2021/04/18.
//

import Foundation

struct TimerModel {
    var duration: Int = 60 * 3 //タイマーの時間が3分だから
    var startDate: Date? = nil //タイマー開始時刻
    
    // タイマーの時間と、タイマーの開始時間を使って、残り時間をInt?で返すメソッド
    func remainSec(_ date: Date) -> Int? {
        guard let start = startDate else { return nil }
        return duration - Int(Date().timeIntervalSince(start))
    }
}
