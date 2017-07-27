//
//  DayViewViewModel.swift
//  Cloudy
//
//  Created by Efthemios Prime on 7/24/17.
//  Copyright © 2017 Cocoacasts. All rights reserved.
//

import UIKit

struct DayViewViewModel {
    // MARK: - Properties
    let weatherData: WeatherData
    
    // MARK: -
    private let dateFormatter = DateFormatter()
    private let timeFormatter = DateFormatter()
    
    var date : String {
        // Initialize Date Formatter
        let dateFormatter = DateFormatter()
        
        // Configure Date Formatter
        dateFormatter.dateFormat = "EEE, MMMM d"
        
        return dateFormatter.string(from: weatherData.time)
        
    }
    
    var time: String {
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateFormat = UserDefaults.timeNotation().timeFormat
        
        return dateFormatter.string(from: weatherData.time)
    }
    
    var summary: String {
        return weatherData.summary
    }
    
    var temperature: String {
        let temperature = weatherData.temperature
        
        switch UserDefaults.temperatureNotation() {
        case .fahrenheit:
            return String(format: "%.1f °F", temperature)
        case .celsius:
            return String(format: "%.1f °C", temperature.toCelcius())
        }
    }
        
    var winSpeed:String {
        let winSpeed = weatherData.windSpeed
        
        switch UserDefaults.unitsNotation() {
        case .imperial:
            return String(format: "%.f MPH", winSpeed)
        case .metric:
            return String(format: "%.f KPH", winSpeed.toKPH())
 
        }
    }

    var image: UIImage? {
        return UIImage.imageForIcon(withName: weatherData.icon)
    }
    
}
