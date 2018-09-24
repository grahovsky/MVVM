//
//  NetworkManager.swift
//  MVVM
//
//  Created by Konstantin on 24/09/2018.
//  Copyright © 2018 Konstantin. All rights reserved.
//

import Foundation

class NetworkManager: NSObject {
    
    //поставляет название фильмов
    func fetchMovies(completion: ([String]) -> ()) {
        //загрузили 3 фильма
        completion(["Movie 1", "Movie 2", "Movie 3"])
    }
    
}
