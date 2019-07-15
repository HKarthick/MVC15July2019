//
//  ButtonFactory.swift
//  test
//
//  Created by Anilkumar on 21/05/19.
//  Copyright © 2019 Anilkumar. All rights reserved.
//

import UIKit

class ButtonFactory {
    private let button : UIButton
    
    enum Style{
        case normal
        case customize
    }
    
    init(text:String,style: Style = .normal) {
        button = UIButton()
        button.setTitle(text, for: .normal)
        button.titleLabel?.text = ""
        button.tintColor = .red
        button.translatesAutoresizingMaskIntoConstraints = false
        
        switch style {
        case .normal: normal()
        case .customize : customise()
        }
    }
    
    // MARK: - Public methods
    func addTarget(_ target: Any?, action: Selector, for event: UIControl.Event) -> Self {
        button.addTarget(target, action: action, for: event)
        
        return self
    }
    func normal(){
    }
    func customise(){
        
    }
    func buildUI() -> UIButton{
        return button
    }
    
}
