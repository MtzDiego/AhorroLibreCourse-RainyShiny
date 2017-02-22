//
//  Location.swift
//  Rainy Shiny Cloudy
//
//  Created by Macbook on 2/22/17.
//  Copyright © 2017 ahorro libre. All rights reserved.
//

import CoreLocation
class Location{
    static var sharedInstance = Location()
    private init(){}
    
    var latitude: Double!
    var longitude: Double!
}
