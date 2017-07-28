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
    

    var numberOfSections: Int {
        return 1
    }
    
    var numberOfDays: Int {
        return weatherData.count
    }
    
    func viewModel(for index: Int) -> WeatherDayViewViewModel {
        return WeatherDayViewViewModel(weatherDayData: weatherData[index])
    }
    
    
        
        
}
