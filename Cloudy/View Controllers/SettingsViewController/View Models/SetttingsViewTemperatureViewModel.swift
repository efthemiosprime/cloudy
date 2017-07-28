//
//  SetttingsViewTemperatureViewModel.swift
//  Cloudy
//
//  Created by Efthemios Prime on 7/27/17.
//  Copyright © 2017 Cocoacasts. All rights reserved.
//

import UIKit

struct SetttingsViewTemperatureViewModel {
    
    let temperatureNotation: TemperatureNotation
    
    var text: String {
        switch temperatureNotation {
        case .fahrenheit: return "Fahrenheit"
        case .celsius: return "Celcius"
        }
    }
        
    var accessoryType: UITableViewCellAccessoryType {
        if UserDefaults.temperatureNotation() == temperatureNotation {
            return .checkmark
        }else {
            return .none
        }
    }
    
}


extension SetttingsViewTemperatureViewModel: SettingsRepresentable {
    
}
