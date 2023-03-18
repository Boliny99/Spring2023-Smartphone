//
//  ViewController.swift
//  AlertControllerExample
//
//  Created by Bolin Yang on 3/17/23.
//

import UIKit

class ViewController: UIViewController {

    var txtField: UITextField?
    @IBOutlet weak var lblStock: UILabel!
    override func viewDidLoad() {
    }


    @IBAction func showAlertController(_ sender: Any) {
        let alertController = UIAlertController(title: "Alert Controller Title", message: "Alert Controller Message", preferredStyle: .alert)
        
        let OKButton = UIAlertAction(title: "ok", style: .default){action in
            self.lblStock.text = self.txtField?.text
             print("I'm in OK button")
        }
        
        let CancelButton = UIAlertAction(title: "cancel", style: .default){
            action in print("I'm in cancel button")
        }
        
        alertController.addTextField{ lblTextField in
            self.txtField = lblTextField
            lblTextField.placeholder = "Type Stock Value"
        }
        
        alertController.addAction(OKButton)
        alertController.addAction(CancelButton)
        
        self.present(alertController, animated: true)
    }
    
}

