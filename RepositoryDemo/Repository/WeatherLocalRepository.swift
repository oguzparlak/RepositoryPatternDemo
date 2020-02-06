//
//  WeatherLocalRepository.swift
//  RepositoryDemo
//
//  Created by oguzparlak on 4.02.2020.
//  Copyright © 2020 Oguz Parlak. All rights reserved.
//

import Foundation
import RxSwift

class WeatherLocalRepository: Repository<ObservableWeatherData> {
    
    // MARK: - Save & Load
    
    override func load() -> Observable<WeatherData>? {
        return WeatherLocalDataSource.getWeatherData()
    }
    
    override func save(_ item: Observable<WeatherData>) {
        WeatherLocalDataSource.saveWeatherData(item)
    }
    
    // MARK: - Extra methods for your own need
    
    func getRainyDays() -> ObservableWeatherData? {
        return nil
    }
    
}
