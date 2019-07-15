//
//  ViewController.swift
//  MVC
//
//  Created by Anilkumar on 04/06/19.
//  Copyright © 2019 Anilkumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private let networking = Networking()

    override func viewDidLoad() {
        super.viewDidLoad()
        networking.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btn(_ sender: Any) {
        networking.requestData()
    }
    
}

extension ViewController : NetworkingDelegate{
    func didReceiveResponse(string: String) {
        print(string)
    }
    
    func didReceiveResponseFail(bool: Bool) {
        print(bool)
    }
    
   
    

    
}

