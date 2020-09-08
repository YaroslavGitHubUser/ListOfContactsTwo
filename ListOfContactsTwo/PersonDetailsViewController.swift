//
//  PersonDetailsViewController.swift
//  ListOfContactsTwo
//
//  Created by Yaroslav on 08.09.2020.
//  Copyright © 2020 Yaroslav. All rights reserved.
//

import UIKit

class PersonDetailsViewController: UIViewController {
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var personInQuestion: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = personInQuestion.fullName
        phoneLabel.text = "Phone: \(personInQuestion.phoneNumber)"
        emailLabel.text = "Email: \(personInQuestion.email)"
    }
    
}
