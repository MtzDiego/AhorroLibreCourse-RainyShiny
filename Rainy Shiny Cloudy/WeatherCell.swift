//
//  WeatherCell.swift
//  Rainy Shiny Cloudy
//
//  Created by Macbook on 2/22/17.
//  Copyright © 2017 ahorro libre. All rights reserved.
//

import UIKit

class WeatherCell: UITableViewCell {
    @IBOutlet weak var weateherIcon: UIImageView!
    @IBOutlet weak var daylbl: UILabel!
    @IBOutlet weak var weatherTypelbl: UILabel!
    @IBOutlet weak var maxTemplbl: UILabel!
    @IBOutlet weak var lowTemplbl: UILabel!

    func configureCell(forecast: Forecast){
        lowTemplbl.text = "\(forecast.lowTemp)°"
        maxTemplbl.text = "\(forecast.highTemp)°"
        weatherTypelbl.text = forecast.weatherType
        weateherIcon.image = UIImage(named: forecast.weatherType)
        daylbl.text = forecast.date
    }

}
