//
//  ViewController.swift
//  Hello World
//
//  Created by Bolin Yang on 1/14/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("I am inside viewDidLoad() function")
    }


    @IBAction func pressMeAction(_ sender: UIButton) {
        
        print("button was pressed")
    }
}

