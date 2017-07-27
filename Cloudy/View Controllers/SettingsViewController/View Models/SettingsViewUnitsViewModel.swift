//
//  SettingsViewUnitsViewModel.swift
//  Cloudy
//
//  Created by Efthemios Prime on 7/27/17.
//  Copyright © 2017 Cocoacasts. All rights reserved.
//

import UIKit

struct SettingsViewUnitsViewModel {
    
    let unitsNotation: UnitsNotation
    
    var text: String  {
        switch unitsNotation {
        case .imperial: return "Imperial"
        case .metric: return "Metric"
        }
    }
    
    var accessoryType: UITableViewCellAccessoryType {
        if UserDefaults.unitsNotation() == unitsNotation {
            return .checkmark
        }else {
            return .none
        }
    }
    
}
