//
//  SecondViewController.swift
//  ProtocolsAndDelegateExample
//
//  Created by Bolin Yang on 3/17/23.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var lblWelcome: UILabel!
    
    @IBOutlet weak var txtStatus: UITextField!
    
    var setStatusDelegate: SetStatusDelegate?
    var name = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lblWelcome.text = "Welcome \(name)"
    }
    

    @IBAction func setStatusAction(_ sender: Any) {
        guard let status = txtStatus.text else {return}
        setStatusDelegate?.SetStatus(status: status)
        self.navigationController?.popViewController(animated: true)
    }
    
}
