//
//  File.swift
//  MVC
//
//  Created by Anilkumar on 04/06/19.
//  Copyright © 2019 Anilkumar. All rights reserved.
//

import Foundation

struct DataModel: Codable{
    struct Result : Codable {
        let icon : String?
        let name : String?
        let rating : Float?
        let userRatingsTotal : Int?
        let vicinity : String?
        
        enum CodingKeys: String, CodingKey {
            case icon = "icon"
            case name = "name"
            case rating = "rating"
            case userRatingsTotal = "user_ratings_total"
            case vicinity = "vicinity"
        }
    }
    let results : [Result]?
}
