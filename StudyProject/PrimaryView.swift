//
//  PrimaryView.swift
//  StudyProject
//
//  Created by Anil Kumar on 12/07/19.
//  Copyright © 2019 com. All rights reserved.
//

import UIKit

final class PrimaryView: UIView {
    
    var didTabFacebook: EmptyClosures?
    var didTabGoogle:   EmptyClosures?
    var didTabTwitter:  EmptyClosures?
    
    lazy var splashView = SplashView(frame: UIScreen.main.bounds)
    
    lazy var titleLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.white
        label.text = "Hello World"
        return label
    }()
    
    private(set) lazy var groupedStackView: UIStackView = makeStackView()
    
    private(set) lazy var fbButton: UIButton      = makeButton(with: UIImage.facebook!, add: #selector(_didTabFacebook))
    
    private(set) lazy var googleButton: UIButton  = makeButton(with: UIImage.google!, add: #selector(_didTabGoogle))
    
    private(set) lazy var twitterButton: UIButton = makeButton(with: UIImage.twitter!, add: #selector(_didTabTwitter))
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    private func setup() {
        
        addSubViews(add: [splashView, groupedStackView, titleLabel])
        groupedStackView.addArrangedViews(add: [fbButton, twitterButton, googleButton])
        
        settingUpConstraints()
    }
    
    private func settingUpConstraints() {
        
        NSLayoutConstraint.activate([
            
            fbButton.widthAnchor.constraint(equalToConstant: 63.0),
            fbButton.heightAnchor.constraint(equalToConstant: 63.0),
            
            twitterButton.widthAnchor.constraint(equalToConstant: 63.0),
            twitterButton.heightAnchor.constraint(equalToConstant: 63.0),
            
            googleButton.widthAnchor.constraint(equalToConstant: 63.0),
            googleButton.heightAnchor.constraint(equalToConstant: 63.0)
            
            ])
        
        NSLayoutConstraint.activate([
            
            groupedStackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            groupedStackView.centerYAnchor.constraint(equalTo: centerYAnchor)
            
            ])
        
        NSLayoutConstraint.activate([
            
            titleLabel.widthAnchor.constraint(equalToConstant: 100),
            titleLabel.heightAnchor.constraint(equalToConstant: 50),
            titleLabel.topAnchor.constraint(equalToSystemSpacingBelow: groupedStackView.bottomAnchor, multiplier: 20),
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor)
            
            ])
    }
    
    //@objc Functions called When Tapped on Buttons
    @objc
    func _didTabFacebook() {
        didTabFacebook?()
    }
    
    @objc
    func _didTabGoogle() {
        didTabGoogle?()
    }
    
    @objc
    func _didTabTwitter() {
        didTabTwitter?()
    }
    
    //MARK: - Make
    private func makeStackView() -> UIStackView {
        let view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis         = .horizontal
        view.alignment    = .fill
        view.distribution = .fillEqually
        view.spacing      = 30
        return view
    }
    
    private func makeButton(with image: UIImage, add selector: Selector) -> UIButton {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(image, for: .normal)
        button.addTarget(self, action: selector, for: .touchUpInside)
        return button
    }
    
    func didTapped() {
        titleLabel.textColor = .red
    }
}
