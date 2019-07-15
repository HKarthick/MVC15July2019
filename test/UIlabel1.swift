//
//  UIlabel1.swift
//  test
//
//  Created by Anilkumar on 22/05/19.
//  Copyright © 2019 Anilkumar. All rights reserved.
//

import UIKit


class MyLabel{
    //MARK: - Label
    let lable : UILabel
    let labelFont : CGFloat = 10
    
    //Initilaise
    
    init(text:String){
        lable = UILabel()
        lable.text = text
        lable.backgroundColor = .blue
        lable.font = lable.font.withSize(labelFont)
        lable.translatesAutoresizingMaskIntoConstraints = false
    }
    //Public Methods
    
    func changeFont(of float:CGFloat) -> Self{
        lable.font = lable.font.withSize(float)
        return self
    }
    
    func changeBackgroundColor(of color : UIColor) -> Self{
        lable.backgroundColor = color
        return self
    }
    
    func buildUI() -> UILabel{
        return lable
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}

