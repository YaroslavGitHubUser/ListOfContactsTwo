//
//  PersonsListViewController.swift
//  ListOfContactsTwo
//
//  Created by Yaroslav on 08.09.2020.
//  Copyright © 2020 Yaroslav. All rights reserved.
//

import UIKit

class PersonsListViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactInformation", for: indexPath)
        let person = persons[indexPath.row]
        cell.textLabel?.text = person.fullName
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailsVC = segue.destination as? PersonDetailsViewController
            else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        detailsVC.personInQuestion = persons[indexPath.row]
    }
}
