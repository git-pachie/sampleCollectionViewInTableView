//
//  CellTableViewCell.swift
//  TestCollectionView
//
//  Created by pachie on 03/11/2019.
//  Copyright © 2019 pachie. All rights reserved.
//

import UIKit

class CellTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {
    
    let myArray = ["One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight"]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return myArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let colcell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as!  ColCollectionViewCell
        
        colcell.labelTest.text = myArray[indexPath.row]
        
        return colcell
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
        print(myArray[indexPath.row])
    }

}
