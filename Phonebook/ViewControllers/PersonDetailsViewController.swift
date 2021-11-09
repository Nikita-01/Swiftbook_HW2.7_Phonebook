//
//  PersonDetailsViewController.swift
//  Phonebook
//
//  Created by Никита Рыжкин on 09.11.2021.
//

import UIKit

class PersonDetailsViewController: UIViewController {
    
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var eMailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = person.fullName
        phoneNumberLabel.text = "Phone: \(person.phoneNumber)"
        eMailLabel.text = "Email: \(person.eMail)"
    }
    
}
