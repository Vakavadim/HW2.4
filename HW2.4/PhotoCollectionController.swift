//
//  PhotoCollectionController.swift
//  HW2.4
//
//  Created by Вадим Гамзаев on 01/10/2019.
//  Copyright © 2019 Вадим Гамзаев. All rights reserved.
//

import UIKit

private let reuseIdentifier = "PhotoImage"

class PhotoCollectionController: UICollectionViewController {
    
    


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

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes

        
        

        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource
    


    override func collectionView(_ collectionView: UICollectionView,
                                   numberOfItemsInSection section: Int) -> Int {
          return photoImages.count
      }
      
      override func collectionView(_ collectionView: UICollectionView,
                                   cellForItemAt  indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! PhotoViewCell
        
        let imagePhoto = UIImage(named: photoImages[indexPath.row])
        cell.imagePhoto.contentMode = .scaleAspectFit

        cell.imagePhoto.image = imagePhoto
        

          return cell
      }
    
      
      override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
          if segue.identifier == "ShowPhoto" {
              if let indexPath = self.collectionView.indexPathsForSelectedItems?[0] {
                  let photoViewVC = segue.destination as! PhotoViewController
                  photoViewVC.imageTitle = photoImages[indexPath.row]
              }
          }
          
      }

}
