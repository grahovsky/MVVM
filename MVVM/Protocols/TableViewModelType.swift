//
//  TableViewModelType.swift
//  MVVM
//
//  Created by Konstantin on 24.09.2018.
//  Copyright © 2018 Konstantin. All rights reserved.
//

import Foundation

protocol TableViewModelType {
    var numberOfRows: Int { get }
    var profiles: [Profile] { get }
}
