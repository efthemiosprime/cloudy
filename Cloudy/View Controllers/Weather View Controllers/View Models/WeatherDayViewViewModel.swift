//
//  WeatherDayViewViewModel.swift
//  Cloudy
//
//  Created by Efthemios Prime on 7/27/17.
//  Copyright © 2017 Cocoacasts. All rights reserved.
//

import UIKit

struct WeatherDayViewViewModel {
    
    // MARK: - Properties
    let weatherDayData: WeatherDayData
    
    
    // MARK: -
    
    private let dayFormatter = DateFormatter()
    private let dateFormatter = DateFormatter()
    
    var day: String {
        dayFormatter.dateFormat = "EEEE"
        return dayFormatter.string(from: weatherDayData.time)
    }
    
    var date: String {
        dateFormatter.dateFormat = "MMMM d"
        return dateFormatter.string(from: weatherDayData.time)
    }
    
    var temperature: String {
        let min = format(temperature: weatherDayData.temperatureMin)
        let max = format(temperature: weatherDayData.temperatureMax)
        
        return "\(min) - \(max)"
        
    }
    
    var winSpeed: String {
        let winSpeed = weatherDayData.windSpeed
        
        switch UserDefaults.unitsNotation() {
        case .imperial:
            return String(format: "%.f MPH", winSpeed)
        case .metric:
            return String(format: "%.f KPH", winSpeed.toKPH())
        }
    }
    
    var image: UIImage? {
        return UIImage.imageForIcon(withName: weatherDayData.icon)
    }
    
    // MARK: - Helper Methods
    
    private func format(temperature: Double) -> String {
        switch UserDefaults.temperatureNotation() {
        case .fahrenheit:
            return String(format: "%.0f °F", temperature)
        case .celsius:
            return String(format: "%.0f °C", temperature.toCelcius())
            
        }
    }
    
}


extension WeatherDayViewViewModel: WeatherDayRepresentable {
    
}
