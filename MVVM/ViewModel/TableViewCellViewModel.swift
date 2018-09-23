//
//  TableViewCellViewModel.swift
//  MVVM
//
//  Created by Konstantin on 24.09.2018.
//  Copyright © 2018 Konstantin. All rights reserved.
//

import Foundation

class TableViewCellViewModel: TableViewCellViewModelType {
   
    private var profile: Profile

    var fullName: String {
        return profile.name + " " + profile.secondName
    }
    
    var age: String {
        return String(describing: profile.age)
    }
    
    init(profile: Profile) {
        self.profile = profile
    }
    
}
