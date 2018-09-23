//
//  ViewModel.swift
//  MVVM
//
//  Created by Konstantin on 24.09.2018.
//  Copyright © 2018 Konstantin. All rights reserved.
//

import Foundation

class  ViewModel: TableViewModelType {
    
    var profiles = [
        Profile(name: "John", secondName: "Smith", age: 33),
        Profile(name: "Max", secondName: "Kolby", age: 21),
        Profile(name: "Mark", secondName: "Salmon", age: 55)]
    
    var numberOfRows: Int {
        return profiles.count
    }
    
}
