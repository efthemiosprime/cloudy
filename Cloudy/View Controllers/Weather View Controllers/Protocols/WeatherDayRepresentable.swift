//
//  WeatherDayRepresentable.swift
//  Cloudy
//
//  Created by Efthemios Prime on 7/27/17.
//  Copyright © 2017 Cocoacasts. All rights reserved.
//

import UIKit

protocol WeatherDayRepresentable {
    var day: String {get}
    var date: String {get}
    var image: UIImage? {get}
    var winSpeed: String {get}
    var temperature: String {get}
}
