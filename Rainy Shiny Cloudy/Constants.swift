//
//  Constants.swift
//  Rainy Shiny Cloudy
//
//  Created by Macbook on 2/21/17.
//  Copyright © 2017 ahorro libre. All rights reserved.
//

import Foundation
let BASE_URL = "http://api.openweathermap.org/data/2.5/"
let WEATHER = "weather?"
let FORECAST = "forecast/daily?"
let LATITUDE = "lat="//
let LONGITUDE = "&lon="//
let CNT = "&cnt=10"
let APP_ID = "&appid="
let API_KEY = "a7d8e573fef484b96e65d52fbc0e6d93"



typealias DownloadComplete = () ->()

let CURRENT_FORECAST_URL = "\(BASE_URL)\(FORECAST)\(LATITUDE)32.5027000\(LONGITUDE)-117.0037100\(CNT)\(APP_ID)\(API_KEY)"
let CURRENT_WEATHER_URL = "\(BASE_URL)\(WEATHER)\(LATITUDE)32.5027000\(LONGITUDE)-117.0037100\(APP_ID)\(API_KEY)"
