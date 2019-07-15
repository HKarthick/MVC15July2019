//
//  ImageFactory.swift
//  test
//
//  Created by Anilkumar on 21/05/19.
//  Copyright © 2019 Anilkumar. All rights reserved.
//

import UIKit

final class ImageFactory{
    private let imageView : UIImageView
    
    init(image:UIImage?) {
        imageView = UIImageView(image: image)
        imageView.contentMode = .center
        imageView.backgroundColor = .red
        imageView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    
    func buildUI() -> UIImageView{
        return imageView
    }
    
    
}
