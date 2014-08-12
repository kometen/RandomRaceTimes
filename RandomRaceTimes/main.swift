//
//  main.swift
//  RandomRaceTimes
//
//  Created by Claus Guttesen on 12/08/14.
//  Copyright (c) 2014 Claus Guttesen. All rights reserved.
//

import Foundation

println("Hello, World!")

let r = RandomRaceTimesModel(interval: 15, datestring: "28-02-2014 13:00:00", numberOfRaceTimes: 100)
r.showRaceTimes()