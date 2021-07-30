//
//  CurrentWeather.swift
//  WeatherApp
//
//  Created by Данил Чапаров on 30.07.2021.
//  Copyright © 2021 Danil Chaparov. All rights reserved.
//

import Foundation
// MARK: - CurrentWeather
struct CurrentWeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
}
// MARK: - Main
struct Main: Codable {
    let temp, feelsLike: Double
    
    enum CodingKeys: String, CodingKey {
        case temp
        case feelsLike = "feels_like"
    }
}
// MARK: - Weather
struct Weather: Codable {
    let id: Int
}
