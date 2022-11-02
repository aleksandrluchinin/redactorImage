//
//  EdditorViewController.swift
//  redactorImage
//
//  Created by Aleksandr Luchinin on 02.11.2022.
//

import UIKit

class EdditorViewController: UIViewController {
    
    public var pictureImage: UIImage?
    
    @IBOutlet weak var filterView: UIView!
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.imageView.image = pictureImage
        filterView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0)
    }
    
    @IBAction func K3Action(_ sender: Any) {
        filterView.backgroundColor = UIColor.myFilter.yellow
    }
    
    @IBAction func K2Action(_ sender: Any) {
        filterView.backgroundColor = UIColor.myFilter.purple
        
    }
    
    @IBAction func SP7Action(_ sender: Any) {
        filterView.backgroundColor = UIColor.myFilter.grey
        
    }
    
    @IBAction func MB8Action(_ sender: Any) {
        filterView.backgroundColor = UIColor.myFilter.blue
        
    }
    
    @IBAction func NF5Action(_ sender: Any) {
        filterView.backgroundColor = UIColor.myFilter.orange
        
    }
    
    
}
