//
//  DayViewViewModel.swift
//  Cloudy
//
//  Created by Efthemios Prime on 7/24/17.
//  Copyright © 2017 Cocoacasts. All rights reserved.
//

import Foundation

struct DayViewViewModel {
    // MARK: - Properties
    let weatherData: WeatherData
    
    var date : String {
        // Initialize Date Formatter
        let dateFormatter = DateFormatter()
        
        // Configure Date Formatter
        dateFormatter.dateFormat = "EEE, MMMM d"
        
        return dateFormatter.string(from: weatherData.time)
        
    }
    
    var time: String {
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateFormat = ""
        
        return dateFormatter.string(from: weatherData.time)
    }
    
    
}
