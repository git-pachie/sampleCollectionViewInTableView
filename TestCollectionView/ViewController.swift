//
//  ViewController.swift
//  TestCollectionView
//
//  Created by pachie on 03/11/2019.
//  Copyright © 2019 pachie. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    var contactUsArray = [ContactUs.init(name: "Email Address", value: "abc@gmail.com"), ContactUs.init(name: "Tell. Number", value: "+65 5571 3598"), ContactUs.init(name: "Fax Number", value: "+65 123 4569")]
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0
        {
            return "Product and Services"
        }
        else if section == 1
        {
            return "Abount Us"
        }
        else
        {
            return "Contact Us"
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            return 1
        }
        else if section == 1 {
            return 1
        }
        else
        {
            return contactUsArray.count
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CellTableViewCell
            
            return cell
        }
        else if indexPath.section == 1 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "cellAboutUs", for: indexPath)
                
                return cell
            }
        else
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellx", for: indexPath)
            
            cell.textLabel?.text = contactUsArray[indexPath.row].name
            cell.detailTextLabel?.text = contactUsArray[indexPath.row].value
            
            
            return cell
            
        }
        
        
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       // tableView.rowHeight = UITableView.automaticDimension
        
        //tableView.estimatedRowHeight = 44
    }
    
    
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    
       // return UITableView.automaticDimension
        
        
        
        print("indexPath Section \(indexPath.section) Row \(indexPath.row)")
        
        if indexPath.section == 0 {
            return 124
        }
        else if indexPath.section == 1 {
                return 260
            }
        else
        {
             return 70
        }
       
    
    }
    
    
    
    


}

