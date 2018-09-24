//
//  DetailViewController.swift
//  MVVM
//
//  Created by Konstantin on 24/09/2018.
//  Copyright © 2018 Konstantin. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    var viewModel: DetailViewModelType?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let viewModel = viewModel else { return }
        self.textLabel.text = viewModel.description
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel?.observable.bind { [unowned self] in
            guard let string = $0 else { return }
            //связываем textLabel с observable
            self.textLabel.text = string
        }
        
        //выполняем обновление свойства через 5 секунд 
        delay(delay: 5) { [unowned self] in //[unowned self] - предотвращение цикла сильных ссылок
            self.viewModel?.observable.value = "some new value"
        }
        
    }
    
    //добавляем метод для отложенного выполнения блока кода
    private func delay(delay: Double, closure: @escaping () -> ()) {
        DispatchQueue.main.asyncAfter(wallDeadline: .now() + delay) {
            closure()
        }
    }
    
}
