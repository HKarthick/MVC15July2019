//
//  SecondTableViewCell.swift
//  MVCTutorial
//
//  Created by Anil Kumar on 01/07/19.
//  Copyright © 2019 com. All rights reserved.
//

import UIKit

class SecondTableViewCell: UITableViewCell {

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension SecondTableViewCell: IdentifiableCell {}
