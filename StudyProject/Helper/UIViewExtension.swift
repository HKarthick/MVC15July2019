//
//  UIViewExtension.swift
//  StudyProject
//
//  Created by Anil Kumar on 12/07/19.
//  Copyright © 2019 com. All rights reserved.
//

import UIKit

extension UIView {
    
    func addSubViews(add views: [UIView]) {
        views.forEach({
            addSubview($0)
        })
    }
}

extension UIStackView {
    
    func addArrangedViews(add views: [UIView]) {
        views.forEach({
            addArrangedSubview($0)
          })
    }
}
