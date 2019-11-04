//
//  ViewController.swift
//  TestCollectionView
//
//  Created by pachie on 03/11/2019.
//  Copyright © 2019 pachie. All rights reserved.
//

import UIKit


protocol CustomPackageClick {
    func callSegueFromCell(selectedPackage: String)
}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, CustomPackageClick {
    
    
    var contactUsArray = [ContactUs.init(name: "Email Address", value: "abc@gmail.com"), ContactUs.init(name: "Tell. Number", value: "+65 5571 3598"), ContactUs.init(name: "Fax Number", value: "+65 123 4569")]
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0
        {
            return "PRODUCT & SERVICES"
        }
        else if section == 1
        {
            return "ABOUT US"
        }
        else
        {
            return "CONTACT US"
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let view = UITableViewHeaderFooterView.init(frame: CGRect.init(x: 0, y: 0, width: tableView.bounds.width, height: tableView.sectionHeaderHeight))
        view.contentView.layoutMargins = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 10)
        view.contentView.backgroundColor = UIColor.init(red: 235/255, green: 235/255, blue: 235/255, alpha: 0)
        view.textLabel?.text = "Hello"
        return view
        
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        let header = view as! UITableViewHeaderFooterView
        header.textLabel?.font = UIFont(name: "Noteworthy", size: 18)
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
    
    
    func callSegueFromCell(selectedPackage: String)
    {
        print("this is the \(selectedPackage)")
        
        self.performSegue(withIdentifier: "showpackage", sender: selectedPackage)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let selected = sender as? String
        {
          let selected_string = selected
            
            if segue.identifier == "showpackage"
            {
                let desVC = segue.destination as! ShowPackageViewController
                
                desVC.selectedPackage = selected_string
                
                
            }
        }
        
        
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CellTableViewCell
            
            cell.callclick = self
            
            
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
            return 120
        }
        else if indexPath.section == 1 {
                return 300
            }
        else
        {
             return 70
        }
        
        
        
       
    
    }
    
    
    
    


}

