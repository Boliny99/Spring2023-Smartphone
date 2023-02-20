//
//  ViewController.swift
//  TwoTables
//
//  Created by Bolin Yang on 2/19/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let restaurant = ["KFC", "Chipotle", "PandaExpress", "Zaika"]
    
    let food = [["Crispy Chicken Sandwich","Large Popcorn Nuggets", "Fries"],
                ["Burrito","Bowl","Salad"],
                ["Beijing Beef", "Orange Chicken", "Cho Mein"],
                ["Biryani","Chicken Tikka Masala","Samosas"]
    ]
    
    var menu : [String] = []

    
    @IBOutlet weak var tblViewTop: UITableView!
    
    
    @IBOutlet weak var tblViewBottom: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == tblViewTop {
            return restaurant.count
        } else {
            return menu.count
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == tblViewTop {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = restaurant[indexPath.row]
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = menu[indexPath.row]
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView == tblViewTop {
            let selectedRow = indexPath.row
            
            menu = food[selectedRow]
            
            self.tblViewBottom.reloadData()
        }
    }


}

