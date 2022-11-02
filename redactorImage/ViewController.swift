//
//  ViewController.swift
//  redactorImage
//
//  Created by Aleksandr Luchinin on 02.11.2022.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate {
    
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var pictureImage: UIImageView!
    
    private var imagePicker: ImagePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.imagePicker = ImagePicker(presentationController: self, delegate: self)
    }
    
    @IBAction func additActionButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Edditor", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "Edditor") as! EdditorViewController
        vc.pictureImage = self.pictureImage.image
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func addActionButton(_ sender: Any) {
        self.imagePicker.present(from: sender as! UIView)
    }
    
}
extension ViewController: ImagePickerDelegate {
    func didSelect(image: UIImage?) {
        self.pictureImage.image = image
        
    }
}


