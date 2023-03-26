//
//  ContactDetailsViewController.swift
//  ContactList
//
//  Created by Artem Kuniaev on 23.03.2023.
//

import UIKit

class ContactDetailsViewController: UIViewController {
    var contact: Person!
    
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = contact.fullName
        phoneNumberLabel.text = contact.phoneNumber
        emailLabel.text = contact.email
    }
    

 
}
