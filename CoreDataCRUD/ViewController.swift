//
//  ViewController.swift
//  CoreDataCRUD
//
//  Created by Ron Rith on 3/25/18.
//  Copyright © 2018 Ron Rith. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var coreDataCRUDtableView: UITableView!
    
    var people = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onPlusTapped(_ sender: Any) {
        let alert = UIAlertController(title: "add person", message: nil, preferredStyle: .alert)
        alert.addTextField { (textField) in
            textField.placeholder = "input person name"
        }
        alert.addTextField { (textField) in
            textField.placeholder = "input person age"
            textField.keyboardType = .numberPad
        }
        
        let alertAction = UIAlertAction(title: "Post", style: .default) { (_) in
            let name = alert.textFields?.first?.text! ?? ""
            let age = alert.textFields?.last?.text
            print("Name: \(name)")
            print("Age: \(age!)")
        }
        
        alert.addAction(alertAction)
        present(alert, animated: true, completion: nil)
    }
}
extension ViewController: UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.people.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel?.text = ""
        cell.detailTextLabel?.text = ""
        return cell
    }
}

