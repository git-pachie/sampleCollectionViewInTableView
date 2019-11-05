//
//  CellTableViewCell.swift
//  TestCollectionView
//
//  Created by pachie on 03/11/2019.
//  Copyright © 2019 pachie. All rights reserved.
//

import UIKit

class CellTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var callclick: CustomPackageClick!
    
    
    let myArray = ["PACKAGE1", "PACKAGE2", "PACKAGE3", "PACKAGE4", "PACKAGE5", "PACKAGE6", "PACKAGE7", "PACKAGE8"]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return myArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let colcell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as!  ColCollectionViewCell
        
        colcell.labelTest.text = myArray[indexPath.row]
        colcell.imageX.image = imageProduct(indexPath: indexPath)
        
        colcell.layer.borderColor = #colorLiteral(red: 0.8927215934, green: 0.7369582057, blue: 0.6170789003, alpha: 0.8470588235)
        colcell.layer.borderWidth = 1
        colcell.layer.masksToBounds = true
        colcell.layer.cornerRadius = 4
    
        
        return colcell
    }
    
    func imageProduct(indexPath: IndexPath) -> UIImage {
        switch indexPath.row {
        case 0:
            return UIImage.init(named: "Package1")!
        case 1:
            return UIImage.init(named: "Package2")!
            
        case 2:
        return UIImage.init(named: "Package3")!
            
         case 3:
            return UIImage.init(named: "Package4")!
            
        case 4:
        return UIImage.init(named: "Package5")!
            
        case 5:
        return UIImage.init(named: "Package6")!
            
        case 6:
        return UIImage.init(named: "Package7")!
            
        case 7:
        return UIImage.init(named: "Package8")!
            
        default:
            return UIImage.init(named: "Package1")!
        }
    }
    

    //@IBOutlet weak var lblMyLabel: UILabel!
    @IBOutlet weak var collview: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        collview.delegate = self
        collview.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //print(myArray[indexPath.row])
        
        if self.callclick != nil {
            self.callclick.callSegueFromCell(selectedPackage: myArray[indexPath.row])
        }
        
    }
    
    
    

}
