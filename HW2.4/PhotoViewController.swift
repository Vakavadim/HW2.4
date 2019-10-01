//
//  PhotoViewController.swift
//  HW2.4
//
//  Created by Вадим Гамзаев on 01/10/2019.
//  Copyright © 2019 Вадим Гамзаев. All rights reserved.
//

import UIKit

class PhotoViewController: UIViewController {
    
    
    @IBOutlet weak var imagePhoto: UIImageView!
    @IBOutlet weak var imageLabel: UILabel!
    
       var imageTitle = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageLabel.text = imageTitle
        imagePhoto.image = UIImage(named: imageTitle)
        
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
