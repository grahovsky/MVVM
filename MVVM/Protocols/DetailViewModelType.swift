//
//  DetailViewModelType.swift
//  MVVM
//
//  Created by Konstantin on 24/09/2018.
//  Copyright © 2018 Konstantin. All rights reserved.
//

import Foundation

protocol DetailViewModelType {
    var description: String { get }
    //свойство за которым будем следить
    var observable: Box<String?> { get }
}
