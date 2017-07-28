//
//  SettingsViewTimeViewModel.swift
//  Cloudy
//
//  Created by Efthemios Prime on 7/26/17.
//  Copyright © 2017 Cocoacasts. All rights reserved.
//
// switching between 12 hour and 24 hour time notation
import UIKit

struct SettingsViewTimeViewModel  {
    // MARK: - Properties
    
    let timeNotation: TimeNotation
    
    var text: String {
        switch timeNotation {
        case .twelveHour: return "12 Hour"
        case .twentyFourHour: return "24 Hour"
        }
    }
    
    var accessoryType: UITableViewCellAccessoryType {
        if UserDefaults.timeNotation() == timeNotation {
            return .checkmark
        }else {
            return .none
        }
    }
}

extension SettingsViewTimeViewModel: SettingsRepresentable {
    
}
