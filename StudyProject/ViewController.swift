//
//  ViewController.swift
//  StudyProject
//
//  Created by Anil Kumar on 12/07/19.
//  Copyright © 2019 com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let mainView: PrimaryView
    
    init(mainView: PrimaryView = .init()) {
        self.mainView = mainView
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func loadView() {
        super.loadView()
        view = mainView
        
        navigationController?.navigationBar.isHidden = true
        
        mainView.didTabFacebook = { self.mainView.didTapped() }
        mainView.didTabGoogle   = { print("Google Tapped") }
        mainView.didTabTwitter  = { print("Twitter Tapped") }
    }
}

