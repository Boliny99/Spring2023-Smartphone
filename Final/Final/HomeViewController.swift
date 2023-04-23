//
//  HomeViewController.swift
//  Final
//
//  Created by Bolin Yang on 4/22/23.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UploadImageProtocol {
    
    
    
    var images : [UIImage] = [UIImage]()
    var locations = [String]()
    var imageTitles = [String]()
    
    @IBOutlet weak var tblView: UITableView!
    
    
    var uploadImageVC : UIViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        uploadImageVC = navigationController?.tabBarController?.viewControllers?[0]
        print(uploadImageVC?.title)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        imageTitles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self)?.first as! TableViewCell
        cell.imgContainer.image = images[indexPath.row]
        cell.lblImageTitle.text = imageTitles[indexPath.row]
        cell.lblImageLocation.text = locations[indexPath.row]
        return cell
    }
    
    func uploadedImageDelegate(img: UIImage, locationImg: String, titleImg: String) {
        images.append(img)
        locations.append(locationImg)
        imageTitles.append(titleImg)
        
        
        tblView.reloadData()
        self.tabBarController?.selectedIndex = 0
    }
    
    

   

}
