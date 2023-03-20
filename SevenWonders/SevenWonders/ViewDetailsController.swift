//
//  ViewDetailsController.swift
//  SevenWonders
//
//  Created by Bolin Yang on 3/18/23.
//

import UIKit

class ViewDetailsController: UIViewController {
   

    @IBOutlet weak var lblDetails: UILabel!
    
    @IBOutlet weak var textDetails: UITextView!
    
    var setDetailsDelegate: SetDetailsDelegate?
    
    var label = ""
    var text = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblDetails.text = label
        textDetails.text = text
        
    }
    
    

   
}
