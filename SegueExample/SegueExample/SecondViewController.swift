//
//  SecondViewController.swift
//  SegueExample
//
//  Created by Bolin Yang on 3/17/23.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var lblWelcom: UILabel!
    
    var welcomeName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblWelcom.text = "Welcome \(welcomeName)"

        // Do any additional setup after loading the view.
    }
    

    
    
    
}
