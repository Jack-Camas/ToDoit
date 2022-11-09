//
//  ViewController.swift
//  ToDoit
//
//  Created by Jack Camas on 10/28/22.
//

import UIKit

class ToDoitViewController: UITableViewController {

    let itemArray = ["Find Mike", "Buy Eggos", "Destory Demorgon"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //MARK - TablewView Datasource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }


}

