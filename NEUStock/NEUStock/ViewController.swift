//
//  ViewController.swift
//  NEUStock
//
//  Created by Bolin Yang on 2/19/23.
//

import UIKit
import Alamofire
import SwiftyJSON
import SwiftSpinner

class ViewController: UIViewController {
    @IBOutlet weak var txtStockSymbol: UITextField!
    
    @IBOutlet weak var lblStockPrice: UILabel!
    
    @IBOutlet weak var lblStockCompany: UILabel!
    
    
    @IBOutlet weak var lblStockWebsite: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func getStockPrice(_ sender: Any) {
        guard let symbol = txtStockSymbol.text else {return}
        let url = "\(baseURL)\(symbol)?apikey=\(apiKey)"
        print("URL = \(url)")
        
        SwiftSpinner.show("Getting stock price for \(symbol)")
        
        Alamofire.request(url).responseJSON { response in
            SwiftSpinner.hide()
            if response.error != nil {
                print("Error in response")
                return
            }
            guard let rawData = response.data else {return}
            guard let jsonArray = JSON(rawData).array else {return}
            guard let stock = jsonArray.first else {return}
            print(stock)
            let symbol = stock["symbol"].stringValue
            let price = stock["price"].doubleValue
            let volume = stock["volume"].intValue
            let name = stock["companyName"].stringValue
            let web = stock["website"].stringValue
            
            print("Symbol = \(symbol)")
            print("price = \(price)")
            print("volume = \(volume)")
            self.lblStockPrice.text = "Price = \(price) $"
            self.lblStockCompany.text = "\(name)"
            self.lblStockWebsite.text = "\(web)"
            
        }
        
    }
    
}

