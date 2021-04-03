//
//  PhotoViewController.swift
//  PhotoTapps
//
//  Created by Павел Попов on 03.04.2021.
//

import UIKit

class PhotoViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    var image: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        photoImageView.image = image
    }
    
    @IBAction func shareAction(_ sender: Any) {
        
        let shareController = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
        
        shareController.completionWithItemsHandler = { _, bool, _, _ in
            if bool {
                print("Successfully!")
            }
            
        }
        
        present(shareController , animated: true, completion: nil )
        
    }
    

}
