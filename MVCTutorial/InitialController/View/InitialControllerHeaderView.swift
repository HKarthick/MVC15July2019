//
//  InitialControllerView.swift
//  MVCTutorial
//
//  Created by Anil Kumar on 28/06/19.
//  Copyright © 2019 com. All rights reserved.
//

import UIKit

final class InitialControllerHeaderView: UIView {
    
    //MARK: - Communication (Closures)
    
    var didtapEdit: EmptyClosure?
    var didtapBack: EmptyClosure?
    
    //MARK: - Subviews
    
    lazy var backgroundImage: CustomImageViewClass = { [unowned self] in
        let imageView = CustomImageViewClass(image: .bgImage)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var headerLabel: CustomLabelClass = { [unowned self] in
        let label = CustomLabelClass(title: "Budget", textStyle: .headline)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var editButton: UIButton = { [unowned self] in
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Edit", for: .normal)
        button.addTarget(self, action: #selector(_didTabEdit), for: .touchUpInside)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .preferredFont(forTextStyle: .body)
        return button
    }()
    
    lazy var backButton: CustomButtonClass = { [unowned self] in
        let button = CustomButtonClass(title: "", icon: .backImage)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(_didTabBack), for: .touchUpInside)
        return button
    }()
    
    //MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Setup SubViews
    
    fileprivate func setup() {
        addSubview(backgroundImage)
        addSubview(headerLabel)
        addSubview(editButton)
        addSubview(backButton)
        
    }
    
    //MARK: - Setup Constraints
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        backgroundImage.layoutAnchor(top: topAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, centerX: nil, centerY: nil, paddingTop: 0.0, paddingLeft: 0.0, paddingBottom: 0.0, paddingRight: 0.0, width: 0.0, height: frame.size.height/3, enableInsets: true)
        headerLabel.layoutAnchor(top: backgroundImage.topAnchor, left: nil, bottom: nil, right: nil, centerX: backgroundImage.centerXAnchor, centerY: nil, paddingTop: 50.0, paddingLeft: 0.0, paddingBottom: 0.0, paddingRight: 0.0, width: 100.0, height: 40.0, enableInsets: true)
        editButton.layoutAnchor(top: backgroundImage.topAnchor, left: nil, bottom: nil, right: backgroundImage.rightAnchor, centerX: nil, centerY: nil, paddingTop: 50.0, paddingLeft: 0.0, paddingBottom: 0.0, paddingRight: 10.0, width: 70.0, height: 30.0, enableInsets: true)
        backButton.layoutAnchor(top: backgroundImage.topAnchor, left: backgroundImage.leftAnchor, bottom: nil, right: nil, centerX: nil, centerY: nil, paddingTop: 35.0, paddingLeft: 20.0, paddingBottom: 0.0, paddingRight: 0.0, width: 40.0, height: 40.0, enableInsets: true)
    }
    
    
    //MARK: - Events
    
    //Handles when user taps on Edit or Back navigation button
    
    @objc
    private func _didTabEdit() {
        didtapEdit?()
    }
    
    @objc
    private func _didTabBack() {
        didtapBack?()
    }
}
