//
//  SecondTableView.swift
//  MVCTutorial
//
//  Created by Anil Kumar on 01/07/19.
//  Copyright © 2019 com. All rights reserved.
//

import UIKit

class SecondTableView: UITableView {

    init() {
        super.init(frame: .zero, style: .plain)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        print(SecondTableViewCell.identifier)
       register(SecondTableViewCell.self, forCellReuseIdentifier: SecondTableViewCell.identifier)
    }
}
