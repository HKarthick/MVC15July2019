//
//  UILabel.swift
//  test
//
//  Created by Anilkumar on 21/05/19.
//  Copyright © 2019 Anilkumar. All rights reserved.
//

import UIKit

final class LabelFactory{
    private let label : UILabel
    private let defultFontSize: CGFloat = 20
    
    init(text:String) {
        label = UILabel()
        label.text = text
        label.textAlignment = .center
        label.font = label.font.withSize(defultFontSize)
    }
    func customizeFont(to size:CGFloat) -> Self {
        label.font = label.font.withSize(size)
        return self
    }
    func customiseColor(of color : UIColor) -> Self{
        label.textColor = color
        return self
    }
    func build() -> UILabel{
        return label
    }
}
