//
//  ServiceCall.swift
//  MVCTutorial
//
//  Created by Anil Kumar on 01/07/19.
//  Copyright © 2019 com. All rights reserved.
//

import Foundation

let url: String = .urlString
class Networking: NSObject {
    
    private static var privateSharedInstance: Networking?
    static var sharedInstance: Networking {
        if privateSharedInstance == nil {
            privateSharedInstance = Networking()
        }
        return privateSharedInstance!
    }
    
    func fetchingAPI(completion:@escaping (_ success:Bool, _ error:String, _ result: [User]) -> Void){
        guard let url = URL(string: url) else { return }
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let dataResponse = data, error == nil else { print(error?.localizedDescription ?? "Response Error")
                return }
            do {
                let decoder = JSONDecoder()
                let model = try decoder.decode([User].self, from: dataResponse)
                completion(true, "", model)
                print(model)
            } catch let parsingError {
                print("Error", parsingError)
            }
        }
        task.resume()
    }

//    func jsonParsing () {
//        guard let url = URL(string: url) else { return }
//
//        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
//            guard let dataResponse = data, error == nil else { print(error?.localizedDescription ?? "Response Error")
//                return }
//            do {
//                let decoder = JSONDecoder()
//                let model = try decoder.decode([User].self, from: dataResponse)
//                print(model)
//            } catch let parsingError {
//                print("Error", parsingError)
//            }
//        }
//        task.resume()
//    }
}




