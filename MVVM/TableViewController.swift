//
//  TableViewController.swift
//  MVVM
//
//  Created by Konstantin on 23.09.2018.
//  Copyright © 2018 Konstantin. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var profiles: [Profile]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profiles = [
            Profile(name: "John", secondName: "Smith", age: 33),
            Profile(name: "Max", secondName: "Kolby", age: 21),
            Profile(name: "Mark", secondName: "Salmon", age: 55)]
    }
    
    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return profiles.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell

        guard let tableViewCell = cell else {return UITableViewCell()}
        let profile = profiles[indexPath.row]

        tableViewCell.ageLabel.text = "\(profile.age)"
        tableViewCell.fullNameLabel.text = "\(profile.name) \(profile.secondName)"
        
        return tableViewCell
    }

}
