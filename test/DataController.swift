//
//  DataController.swift
//  test
//
//  Created by Anilkumar on 20/05/19.
//  Copyright © 2019 Anilkumar. All rights reserved.
//
protocol DataControllerDelegate: class {
    func didReceivedPeople(people: [Person])
}

import Foundation
class DataController{
    var peopleList = [Person]()
    
    weak var delegate: DataControllerDelegate?
    
    func requestData(fileName: String){
        guard var copyFileToPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first else {
            fatalError("Missing copy path in project!!!")
        }
        
        //Generate path
        copyFileToPath = copyFileToPath + fileName
        
        if loadFile(copyFileToPath: copyFileToPath) {
            let url = URL(fileURLWithPath: copyFileToPath)
            let jsonData = try! Data(contentsOf: url)
            peopleList = try!JSONDecoder().decode([Person].self, from: jsonData)
            
            //Pass data to delegate
            delegate?.didReceivedPeople(people: peopleList)
            
        } else {
            print("Could not load file")
        }
    }
    
    private func loadFile(copyFileToPath: String)->Bool {
        //Check whether JSON file exists in the local MAC
        if FileManager.default.fileExists(atPath: copyFileToPath) {
            print("people.json already exists in local !!!")
            return true
        }
        
        //Check whether JSON file exists in the project
        guard let copyFileFromUrl = Bundle.main.url(forResource: "people", withExtension: "json") else {
            fatalError("Missing people.json in project!!!")
        }
        
        //Try to copy JSON file from the project to the local MAC
        do{
            try FileManager.default.copyItem(atPath: copyFileFromUrl.path, toPath: copyFileToPath)
        }catch{
            print("Could not copy file")
            return false
        }
        return true
    }
}



