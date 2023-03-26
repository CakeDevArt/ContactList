//
//  DetailedContactListViewController.swift
//  ContactList
//
//  Created by Artem Kuniaev on 23.03.2023.
//

import UIKit

class DetailedContactListViewController: UITableViewController {
    
    var contactList: [Person] = []

    // MARK: - Table view data source


    override func numberOfSections(in tableView: UITableView) -> Int {
        contactList.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        contactList[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellContact", for: indexPath)
        let contact = contactList[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0:
            content.text = contact.phoneNumber
            content.image = UIImage(systemName: "phone")
        default:
            content.text = contact.email
            content.image = UIImage(systemName: "mail")
        }
        
        cell.contentConfiguration = content
        return cell
    }

}
