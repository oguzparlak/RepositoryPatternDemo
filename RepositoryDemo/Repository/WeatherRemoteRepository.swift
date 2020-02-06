//
//  WeatherRemoteRepository.swift
//  RepositoryDemo
//
//  Created by oguzparlak on 4.02.2020.
//  Copyright © 2020 Oguz Parlak. All rights reserved.
//

import Foundation
import RxSwift

class WeatherRemoteRepository: Repository<ObservableWeatherData> {
    
    override func save(_ item: Observable<WeatherData>) {
        WeatherApi.saveWeatherData(data: item)
    }
    
    @discardableResult
    override func load() -> Observable<WeatherData>? {
        let remoteData = WeatherApi.getWeatherData()
        if let localRepo = repository as? WeatherLocalRepository {
            localRepo.save(remoteData)
        }
        return remoteData
    }
    
}
