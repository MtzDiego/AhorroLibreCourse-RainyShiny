//
//  Forecast.swift
//  Rainy Shiny Cloudy
//
//  Created by Macbook on 2/22/17.
//  Copyright © 2017 ahorro libre. All rights reserved.
//

import UIKit
import Alamofire

class Forecast{
    var _date: String!
    var _weatherType: String!
    var _highTemp: Double!
    var _lowTemp: Double!
    
    var date: String {
        if _date == nil{
            _date = ""
        }
        return _date
    }
    var weatherType: String {
        if _weatherType == nil{
            _weatherType = ""
        }
        return _weatherType
    }
    var highTemp: Double {
        if _highTemp == nil{
            _highTemp = 0.0
        }
        return _highTemp
    }
    var lowTemp: Double {
        if _lowTemp == nil{
            _lowTemp = 0.0
        }
        return _lowTemp
    }
    init(weatherDict: Dictionary<String, AnyObject>) {
        if let temp = weatherDict["temp"] as? Dictionary<String, AnyObject>{
            if let min = temp["min"] as? Double{
                let kelvinToFarenheitPreDivision = (min * (9/5) - 459.67)
                let kelvinToFarenheit = Double(round(10 * kelvinToFarenheitPreDivision/10))
                let FarenheittoCentig = Double(round((kelvinToFarenheit - 32)/1.8))
                self._lowTemp = FarenheittoCentig
            }
            if let max = temp["max"] as? Double{
                let kelvinToFarenheitPreDivision = (max * (9/5) - 459.67)
                let kelvinToFarenheit = Double(round(10 * kelvinToFarenheitPreDivision/10))
                let FarenheittoCentig = Double(round((kelvinToFarenheit - 32)/1.8))
                self._highTemp = FarenheittoCentig
            }
        }
        if let weather = weatherDict["weather"] as? [Dictionary<String, AnyObject>]{
            if let main = weather[0]["main"] as? String{
                self._weatherType = main.capitalized
                print(self._weatherType)
            }
        }
        if let date = weatherDict["dt"] as? Double{
            let unixConvertedDate = Date(timeIntervalSince1970: date)
            let dateFormatter = DateFormatter()
            dateFormatter.dateStyle = .full
            dateFormatter.dateFormat = "EEEE"
            dateFormatter.timeStyle = .none
            self._date = unixConvertedDate.dayOfTheWeek()
        }
    }
}
extension Date {
    func dayOfTheWeek()->String{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        return dateFormatter.string(from:self)
    }
}
