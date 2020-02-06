//
//  WeatherViewModel.swift
//  RepositoryDemo
//
//  Created by oguzparlak on 4.02.2020.
//  Copyright © 2020 Oguz Parlak. All rights reserved.
//

import Foundation
import RxSwift

class WeatherViewModel {
    
    private let disposeBag = DisposeBag()
    
    private lazy var localRepo: WeatherLocalRepository = {
        return WeatherLocalRepository()
    }()
    
    private lazy var remoteRepo: WeatherRemoteRepository = {
        return WeatherRemoteRepository(repository: localRepo)
    }()
    
    /// Fetches WeatherData from local repo if available
    /// If not then it fetches the data from remote
    /// and pass it to the ViewController via completion handler
    func getWeatherData(data: @escaping (WeatherData?) -> Void) {
        guard let localData = localRepo.load() else { return }
        guard let remoteData = remoteRepo.load() else { return }
        // Use local data source first, if empty then use remote data source
        localData.ifEmpty(switchTo: remoteData).subscribe(onNext: { weatherData in
            data(weatherData)
        }).disposed(by: disposeBag)
    }
    
}
