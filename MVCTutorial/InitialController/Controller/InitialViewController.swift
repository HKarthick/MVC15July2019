//
//  ViewController.swift
//  MVCTutorial
//
//  Created by Anil Kumar on 28/06/19.
//  Copyright © 2019 com. All rights reserved.
//

import UIKit

final class InitialViewController: UIViewController {

    private let headerView: InitialControllerHeaderView
    
    //MARK: - Initializers
    
    init(headerView: InitialControllerHeaderView = .init()) {
        self.headerView = headerView
        super.init(nibName: nil, bundle: nil)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Setup Subviews
    
    func setup() {
        headerView.didtapEdit = {
            let controller = SecondViewController()
            self.navigationController?.pushViewController(controller, animated: true)
        }
        headerView.didtapBack = { print("Back Tapped") }
    }
    
    //MARK: - viewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = headerView
        view.backgroundColor = .white
    }
}

