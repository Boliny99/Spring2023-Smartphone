//
//  ViewController.swift
//  APICall
//
//  Created by Bolin Yang on 3/18/23.
//


import UIKit
import Alamofire
import SwiftyJSON
import SwiftSpinner


class ViewController: UIViewController {

    @IBOutlet weak var txtStockSymbol: UITextField!
  
    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var lblStockPrice: UILabel!
    @IBOutlet weak var lblWebsite: UILabel!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func getInfo(_ sender: Any) {
        
        
        guard let symbol = txtStockSymbol?.text else {return}
        let url = "\(baseURL)\(symbol)?apikey=\(apiKey)"
        print("URL = \(url)")
        
        
        SwiftSpinner.show("Getting stock price for \(symbol)")
        AF.request(url).responseJSON{
            response in
            SwiftSpinner.hide()
            if response.error != nil {
                print("Error in Response")
                
            }
            guard let rawData = response.data else {return}
            guard let jsonArray = JSON(rawData).array else {return}
            guard let stock = jsonArray.first else {return}
            print(stock)
            let symbol = stock["symbol"].stringValue
            let price = stock["price"].doubleValue
            let website = stock[""].stringValue
            let name = stock["companyName"].stringValue
            let web = stock["website"].stringValue
            self.lblStockPrice.text = "Price = \(price) $"
            self.lblName.text = "Company Name: \(name)"
            self.lblWebsite.text = "\(web)"
            
            
        }
        
    }
    
    
}

