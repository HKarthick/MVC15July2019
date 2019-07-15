//
//  APIManager.swift
//  MVC
//
//  Created by Anilkumar on 04/06/19.
//  Copyright © 2019 Anilkumar. All rights reserved.
//

import Foundation

class APIManager{
    static let sharedInstance = APIManager()
         let stubDataURL = "https://maps.googleapis.com/maps/api/place/nearbysearch/json?types=movie_theater&location=&radius=50000&sensor=true&key=AIzaSyBA387cDqEvav48v3cuYGrjqeHx1-faamc"
    
    func getClassList(completion: (([DataModel]?, NSError?) -> Void)?) {
        guard let gitUrl = URL(string: stubDataURL) else { return }
        URLSession.shared.dataTask(with: gitUrl) { (data, response
            , error) in
            guard let data = data else { return }
            do {
                let decoder = JSONDecoder()
                let gitData = try decoder.decode(DataModel.self, from: data)
                completion!([gitData],nil)
                
            } catch let err {
                print("Err", err)
                completion!(nil,err as NSError)
            }
            }.resume()
    }
}
