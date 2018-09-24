//
//  ViewModel.swift
//  MVVM
//
//  Created by Konstantin on 24/09/2018.
//  Copyright © 2018 Konstantin. All rights reserved.
//

import Foundation

class ViewModel: NSObject {
    
    //инжектим объект из сториборда
    @IBOutlet weak var networkManager: NetworkManager!
    
    private var movies: [String]?
    
    //доставляем фильмы, помещяем в массив
    func fetchMovies(completion: @escaping () -> ()){
        networkManager.fetchMovies { [weak self] movies in
            self?.movies = movies
            //передаем управление дальше во вьюконтроллер
            completion()
        }
    }
    
    //получаем количество фильмов
    func numberOfRowsInSection() -> Int {
        return movies?.count ?? 0
    }
    
    //получаем название ячейки по индексу
    func titleForCell(atIndexPath indexPath: IndexPath) -> String {
        guard let movies = movies else { return "" }
        return movies[indexPath.row]
    }
}
