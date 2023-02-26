//
//  ViewController.swift
//  CustomTableViewCellXib
//
//  Created by Bolin Yang on 2/25/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let foodName = ["Crispy Chicken Sandwich", "Chicken Nuggets","Fries", "Iced Coffee",
                    "Muffin", "Cheese Burger", "Fish O Fillet", "Vanilla Cone", "Chocolate Sundae","Apple Pie"]
   

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self)?.first as! TableViewCell
        
        cell.imageContainer.image = UIImage(named: "Food\(indexPath.row)")
        cell.lblImage.text = foodName[indexPath.row]
        
        return cell
    }


}

