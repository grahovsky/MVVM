//
//  ViewController.swift
//  MVVM
//
//  Created by Konstantin on 23.09.2018.
//  Copyright © 2018 Konstantin. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    //инжектим объект из сториборда
    @IBOutlet var viewModel: ViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //предоставление фильмов
        viewModel.fetchMovies {
            //когда получаем новые фильмы обновляем вью
            [weak self] in DispatchQueue.main.async {
                self?.tableView.reloadData()
            }
        }
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //предоставляем количество фильмов из модели
        return viewModel.numberOfRowsInSection()
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        //получаем из вьюмодели название ячейки
        cell.textLabel?.text = viewModel.titleForCell(atIndexPath: indexPath)
        
        return cell
    }

}

