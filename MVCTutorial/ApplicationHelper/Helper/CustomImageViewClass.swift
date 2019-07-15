//
//  CustomImageViewClass.swift
//  MVCTutorial
//
//  Created by Anil Kumar on 28/06/19.
//  Copyright © 2019 com. All rights reserved.
//

import UIKit

final class CustomImageViewClass: UIImageView {
    
    private let sampleImage: UIImage
    
    init(image: UIImage) {
        self.sampleImage = image
        super.init(frame: .zero)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func setup() {
        image       = sampleImage
//        contentMode = .scaleToFill
        
    }
}
