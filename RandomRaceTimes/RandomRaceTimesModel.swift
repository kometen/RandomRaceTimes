//
//  RandomRaceTimesModel.swift
//  RandomRaceTimes
//
//  Created by Claus Guttesen on 12/08/14.
//  Copyright (c) 2014 Claus Guttesen. All rights reserved.
//

import Foundation

class RandomRaceTimesModel {
    
    var interval:Int
    var numberOfRaceTimes: Int
    var starttime:NSDate
    var endtime:NSDate
    var x:NSTimeInterval = 0.0
    let dateFormat = NSDateFormatter()
    
    init(interval:Int, datestring:String, numberOfRaceTimes:Int) {
        self.interval = interval
        self.starttime = NSDate(dateString: datestring)
        self.endtime = NSDate(dateString: datestring)
        self.numberOfRaceTimes = numberOfRaceTimes
    }
    
    func showRaceTimes() {
        dateFormat.dateFormat = "HH:mm:ss"
        for i in 0...(numberOfRaceTimes - 1) {
            x = NSTimeInterval(arc4random_uniform(UInt32(i * interval + 300))) + 120
            endtime = NSDate(timeIntervalSince1970: starttime.timeIntervalSince1970 + x)
            println("\(i + 1); \(dateFormat.stringFromDate(endtime))")
        }
    }
}

extension NSDate {
    convenience
    init(dateString:String) {
        let dateStringFormatter = NSDateFormatter()
        dateStringFormatter.dateFormat = "dd-MM-yyyy HH:mm:ss"
        let d = dateStringFormatter.dateFromString(dateString)
        self.init(timeInterval: 0, sinceDate: d)
    }
}
