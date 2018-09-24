//
//  File.swift
//  MVVM
//
//  Created by Konstantin on 24/09/2018.
//  Copyright © 2018 Konstantin. All rights reserved.
//

import Foundation

class DetailViewModel: DetailViewModelType {
    
    //свойство за которым следим
    var observable: Box<String?> = Box(nil)
    
    private var profile: Profile
    
    var description: String {        
        return String(describing: "\(profile.name) \(profile.secondName) is \(profile.age) old")
    }
    
    init(profile: Profile) {
        self.profile = profile
    }
    
}
