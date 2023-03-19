//
//  ViewController.swift
//  SevenWonders
//
//  Created by Bolin Yang on 3/18/23.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var selectedRow = 0
    
    let imageNames = ["The Colosseum", "The Great Wall of China", "The Taj Mahal","Christ the Redeemer","Machu Picchu"]
    let descriptions = ["The Colosseum is the great oval The Colosseum is the great oval The Colosseum is the great oval", "is a huge barrier that spans thousands of miles along China is a huge barrier that spans thousands of miles along China is a huge barrier that spans thousands of miles along China", "is the stunning white marble mausoleum on the bank of the Yamuna River in the city of Agra is the stunning white marble mausoleum on the bank of the Yamuna River in the city of Agra is the stunning white marble mausoleum on the bank of the Yamuna River in the city of Agra", "on the top of Mount Corcovado on the top of Mount Corcovado on the top of Mount Corcovado on the top of Mount Corcovado", "Machu Picchu is a lost treasure of the 15th century Machu Picchu is a lost treasure of the 15th century"]
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self)?.first as! TableViewCell
        cell.lblImage.text = imageNames[indexPath.row]
        cell.imgContainer?.image = UIImage(named: "Wonder\(indexPath.row)")
        return cell
    }
    
   
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var selectedRow = indexPath.row
        func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           let secondVC = segue.destination as! ViewDetailsController
           var label = imageNames[selectedRow]
            secondVC.lblDetails.text = label
           var viewText = descriptions[selectedRow]
           secondVC.textDetails.text = viewText
       }
        performSegue(withIdentifier: "segue", sender: self)
        
    
    }
    
    
    
     


  

    
}

