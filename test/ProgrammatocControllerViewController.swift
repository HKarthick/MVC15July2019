//
//  ProgrammatocControllerViewController.swift
//  test
//
//  Created by Anilkumar on 21/05/19.
//  Copyright © 2019 Anilkumar. All rights reserved.
//

import UIKit

class ProgrammatocControllerViewController: UIViewController {
    //MARK: - UILabel,UIButton
    private var topicLabel : UILabel = {
        let label = UILabel()
        label.text = "Topic"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let subTopicLabel: UILabel = {
        let label = UILabel()
        label.text = "subTopic"
        label.textAlignment = .center //textAlignment count = 2
        label.font = label.font.withSize(20)
        label.translatesAutoresizingMaskIntoConstraints = false //translatesAutoresizingMaskIntoConstraints count = 2
        
        return label
    }()
    


    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        //MARK: - BuildUI
        buildUI()
        
    }
    func buildUI(){
        view.backgroundColor = .gray
        view.addSubview(topicLabel)
        
        

        NSLayoutConstraint.activate([
            topicLabel.topAnchor.constraint(equalTo: view.topAnchor),
            topicLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            topicLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            ])
        
        
        topicLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        
        
        
        
        
        

//        NSLayoutConstraint.activate([
//            topicLabel.topAnchor.constraint(equalTo: view.topAnchor),
//            topicLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//            topicLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
//            ])
    }
    



}
