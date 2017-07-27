//
//  WeekViewViewModel.swift
//  Cloudy
//
//  Created by Efthemios Prime on 7/26/17.
//  Copyright © 2017 Cocoacasts. All rights reserved.
//

import UIKit

struct WeekViewViewModel {
    // MARK: - Properties
    let weatherData: [WeatherDayData]
    
    // MARK -
    private let dayFormatter = DateFormatter()
    private let dateFormatter = DateFormatter()
    var numberOfSections: Int {
        return 1
    }
    
    var numberOfDays: Int {
        return weatherData.count
    }
    
    func day(for index: Int) -> String {
        // Fetch Weather Data for day
        let weatherDayData = weatherData[index]
        
        // Configure Date Formatter
        dayFormatter.dateFormat = "EEEE"
        
        return dayFormatter.string(from: weatherDayData.time)
    }
    
    func date(for index: Int) -> String {
        let weatherDayData = weatherData[index]
        
        dateFormatter.dateFormat = "MMMM d"
        
        return dateFormatter.string(from: weatherDayData.time)
    }
    
    func temperature(for index: Int) -> String {
        let weatherDayData = weatherData[index]
        
         let min = format(temperature: weatherDayData.temperatureMin)
        let max = format(temperature: weatherDayData.temperatureMax)
        
        return "\(min) - \(max)"
    }
    
    func windSpeed(for index: Int) -> String{
        let weatherDayData = weatherData[index]
        let winSpeed = weatherDayData.windSpeed
        
        switch UserDefaults.unitsNotation() {
        case .imperial:
            return String(format: "%.f MPH", winSpeed)
        case .metric:
            return String(format: "%.f KPH", winSpeed)
        }
    }
    
    func image(for index: Int)  -> UIImage? {
        let weatherDayData = weatherData[index]
        return UIImage.imageForIcon(withName: weatherDayData.icon)
    }
    
    // MARK: - Helper Methods
    
    private func format(temperature: Double) -> String {
        switch UserDefaults.temperatureNotation() {
        case .fahrenheit:
            return String(format: "%.0f oF", temperature)
        case .celsius:
            return String(format: "%0f oC", temperature.toCelcius())

        }
    }
        
        
}
