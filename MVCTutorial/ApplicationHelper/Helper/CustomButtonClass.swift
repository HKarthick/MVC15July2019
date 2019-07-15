//
//  CustomButtonClass.swift
//  MVCTutorial
//
//  Created by Anil Kumar on 28/06/19.
//  Copyright © 2019 com. All rights reserved.
//

import UIKit

final class CustomButtonClass: UIButton {
    
    private let title: String?
    private let icon: UIImage?
    
    init (title: String? = "",icon: UIImage? = nil) {
        self.title = title
        self.icon  = icon
        super.init(frame: .zero)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func setup() {
        setTitle(title, for: .normal)
        setImage(icon, for: .normal)
        setTitleColor(.white, for: .normal)
        tintColor = .white
    }
}
