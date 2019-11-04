//
//  ShowPackageViewController.swift
//  TestCollectionView
//
//  Created by pachie on 04/11/2019.
//  Copyright © 2019 pachie. All rights reserved.
//

import UIKit

class ShowPackageViewController: UIViewController {

    var selectedPackage: String = ""
    
    @IBOutlet weak var labelHeader: UILabel!
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label1.layer.cornerRadius = 8
        label1.layer.masksToBounds = true

        label2.layer.cornerRadius = 8
        label2.layer.masksToBounds = true
        // Do any additional setup after loading the view.
        
        labelHeader.text = selectedPackage
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
