//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Artem Kuniaev on 26.03.2023.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataTransferToViewControllers()
    }
    

    private func dataTransferToViewControllers() {
        let contacts = Person.getContactList()
        
        guard let contentListVC = viewControllers?.first as? ContactListViewController else { return }
        guard let detailedContactListVC = viewControllers?.last as? DetailedContactListViewController else { return }
        
        contentListVC.contactList = contacts
        detailedContactListVC.contactList = contacts
    }

}
