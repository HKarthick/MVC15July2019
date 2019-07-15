//
//  MytextField.swift
//  test
//
//  Created by Anilkumar on 22/05/19.
//  Copyright © 2019 Anilkumar. All rights reserved.
//

import UIKit

class MyTextField{
    
    let textfield : UITextField
    let defaultFont : CGFloat = 20
    
    init(text: String) {
        textfield = UITextField()
        textfield.placeholder = text
        textfield.font = textfield.font?.withSize(defaultFont)
        textfield.borderStyle = UITextField.BorderStyle.roundedRect
        textfield.autocorrectionType = UITextAutocorrectionType.no
        textfield.keyboardType = UIKeyboardType.default
        textfield.returnKeyType = UIReturnKeyType.done
        textfield.clearButtonMode = UITextField.ViewMode.whileEditing
        textfield.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
    }
    
    func changeFont(font : CGFloat) -> Self{
        textfield.font = textfield.font?.withSize(font)
        return self
    }
    
    func buildUI() -> UITextField{
        return textfield
    }
    
    
    
    
    
    

    
    
    
    
    
    
    
}
