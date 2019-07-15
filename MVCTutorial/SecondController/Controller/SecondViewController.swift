//
//  SecondViewController.swift
//  MVCTutorial
//
//  Created by Anil Kumar on 01/07/19.
//  Copyright © 2019 com. All rights reserved.
//

import UIKit

class SecondViewController: UITableViewController {

//    let mainTableView: SecondTableView
    var user: [User]? {
        didSet { DispatchQueue.main.async {
            self.tableView.reloadData()
            } }
    }
//
//    init(mainTableView: SecondTableView = .init(), user: [User] = .init()) {
//        self.mainTableView = mainTableView
//        self.user = user
//        super.init(style: .plain)
//        requestAPI()
//    }
    
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
    func requestAPI() {
        Networking.sharedInstance.fetchingAPI { (Status, Error, Response) in
            if Status {
                self.user = Response
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(User.self)
        tableView.register(SecondTableViewCell.self, forCellReuseIdentifier: SecondTableViewCell.identifier)
        tableView.delegate = self
        tableView.dataSource = self
        requestAPI()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if user != nil {
            return user!.count
        }else {
            return 0
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: SecondTableViewCell.identifier, for: indexPath) as? SecondTableViewCell
        cell?.textLabel?.text = user![indexPath.row].title
        return cell!
    }
    
}
