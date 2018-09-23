//
//  TableViewModelType.swift
//  MVVM
//
//  Created by Konstantin on 24.09.2018.
//  Copyright © 2018 Konstantin. All rights reserved.
//

import Foundation

protocol TableViewViewModelType {
    func numberOfRows() -> Int
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType?   
}
