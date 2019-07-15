//
//  PeopleTableViewController.swift
//  test
//
//  Created by Anilkumar on 20/05/19.
//  Copyright © 2019 Anilkumar. All rights reserved.
//

import UIKit

class PeopleTableViewController: UITableViewController {
    //MARK: - Generics
    let intArray = [1, 2, 3, 4]
    let stringArray = ["a", "b", "c", "d"]
    
    
    private let label = LabelFactory(text: "LoginPage").customizeFont(to: 36).customiseColor(of: .red).build()
    private let image = ImageFactory(image: UIImage(named:"UserProfilePlaceHolder")).buildUI()
   // private let button = ButtonFactory(text: "Login", style: .customize).addTarget(self, action: #selector(buttonAction), for: .touchUpInside).buildUI()
    
    
    
    
    
    
    let lable = MyLabel(text: "LoginPage").changeBackgroundColor(of: .red).changeFont(of: 30).buildUI()
    let firstname = MyLabel(text: "FirstName").changeFont(of: 20).buildUI()
    
    let first = MyTextField(text: "Firstname").buildUI()
    let lastName = MyTextField(text: "Lastname").changeFont(font: 40).buildUI()
    
    
    
    
    
    
    
    
    private let dataController = DataController()
    
    fileprivate var listOfPeople = [Person](){
        didSet{
            self.tableView.reloadData()
        }
    }
    
    @objc func buttonAction(button:UIButton){
        
    }
    
    
   
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        dataController.delegate = self
        printInts()
        printStrings()
        


        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    func printInts() {
        print(intArray.map { $0 })
    }
    func printStrings() {
        print(stringArray.map { $0 })
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        dataController.requestData(fileName: "/people.json")
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listOfPeople.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = listOfPeople[indexPath.row].name

        // Configure the cell...

        return cell
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension PeopleTableViewController: DataControllerDelegate{
    func didReceivedPeople(people: [Person]){
        self.listOfPeople = people
    }
}