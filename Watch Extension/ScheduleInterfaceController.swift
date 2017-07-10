//
//  ScheduleInterfaceController.swift
//  AirAber
//
//  Created by Kuba Sokolowski on 10/07/2017.
//  Copyright © 2017 Mic Pringle. All rights reserved.
//

import WatchKit
import Foundation


class ScheduleInterfaceController: WKInterfaceController {
    @IBOutlet weak var flightsTable: WKInterfaceTable!
    var flights = Flight.allFlights()
  
  override func awake(withContext context: Any?) {
    super.awake(withContext: context)
    flightsTable.setNumberOfRows(flights.count, withRowType: "FlightRow")
    
    for (index, flight) in flights.enumerated() {
      guard let controller = flightsTable.rowController(at: index) as? FlightRowController else { continue }
      
      controller.flight = flight
    }
  }
  
}
