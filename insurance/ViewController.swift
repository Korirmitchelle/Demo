//
//  ViewController.swift
//  insurance
//
//  Created by Mitch on 20/11/2019.
//  Copyright © 2019 Mitrch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var contactsTableview: UITableView!
    
    @IBOutlet weak var scrollview: UIScrollView!
    
    @IBOutlet weak var checkImageView: UIImageView!
    @IBOutlet weak var contacts2TableView: UITableView!
    var selectedRow: Int = 1{
        didSet{
            contactsTableview.reloadData()
            contacts2TableView.reloadData()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        contactsTableview.delegate = self
        contactsTableview.dataSource = self
        contacts2TableView.delegate = self
        contacts2TableView.dataSource = self
        contacts2TableView.separatorStyle = .none
        contactsTableview.separatorStyle = .none
        // Do any additional setup after loading the view.
    }
}

extension ViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView.isEqual(contactsTableview){
            let cell = tableView.dequeueReusableCell(withIdentifier: "contacts1", for: indexPath) as? Contacts1TableViewCell
            cell?.selectionStyle = .none
            cell?.label1.text = "Title"
            cell?.label2.text = "description"
            cell?.label3.text = "time"
            return cell!
        }
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "contacts2", for: indexPath) as? ContactsTableView2TableViewCell
            cell?.selectionStyle = .none
            cell?.label1.text = "Title"
            cell?.label2.text = "description"
            cell?.label3.text = "time"
            return cell!
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedRow = indexPath.row
        
    }
    
}

