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
    
    
}
