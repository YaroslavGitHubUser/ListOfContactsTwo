//
//  AllInformationTableViewController.swift
//  ListOfContactsTwo
//
//  Created by Yaroslav on 08.09.2020.
//  Copyright © 2020 Yaroslav. All rights reserved.
//

import UIKit

class AllInformationTableViewController: UITableViewController {

    override func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "\(persons[section].fullName)"
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "allInformation", for: indexPath)
        let person = persons[indexPath.section]
        
        if indexPath.row == 0 {
            cell.textLabel?.text = person.phoneNumber
            cell.imageView?.image = UIImage(systemName: "phone")
        } else {
            cell.textLabel?.text = person.email
            cell.imageView?.image = UIImage(systemName: "tray")
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
