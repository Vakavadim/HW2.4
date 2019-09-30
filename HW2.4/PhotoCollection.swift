//
//  PhotoCollection.swift
//  HW2.4
//
//  Created by Вадим Гамзаев on 29/09/2019.
//  Copyright © 2019 Вадим Гамзаев. All rights reserved.
//

import UIKit

private let reuseIdentifier = "PhotoImage"

class PhotoCollection: UICollectionViewController {
    
    let photoImages = ["Road to the forest",
                       "Sitgis Spain",
                       "Marine wealth",
                       "Phuket",
                       "Phi Phi",
                       "Dubai",
                       "Dubai mall",
                       "Barcelona Spain",
                       "Shoping at night with cat",
                       "Paris",
                       "Amsterdam",
                       "Autumn harvest",
                       "Follow me",
                       "Sochi",
                       "Mushrums hunt",
                       "Louvre Paris"
                        ]

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    override func collectionView(_ collectionView: UICollectionView,
                                 numberOfItemsInSection section: Int) -> Int {
        return photoImages.count
    }
    
    override func collectionView(_ collectionView: UICollectionView,
                                 cellForItemAt  indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! PhotoCell
        
        cell.photoImg.image = UIImage(named: photoImages[indexPath.row])
    
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showPhoto" {
            if let indexPath = self.collectionView.indexPathsForSelectedItems?[0] {
                let photoViewVC = segue.destination as! PhotoView
                photoViewVC.photoTitle = photoImages[indexPath.row]
            }
        }
        
    }

}
