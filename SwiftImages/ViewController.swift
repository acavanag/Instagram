//
//  ViewController.swift
//  SwiftImages
//
//  Created by Andrew Cavanagh on 8/21/14.
//  Copyright (c) 2014 WeddingWire. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    let image = UIImage(named: "osusucks.png")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //prints all of the built in filters you can use
        println(CIFilter.filterNamesInCategory(kCICategoryBuiltIn))
    }
    
    func sepiaImageForImage(image: UIImage, intensity: Double) -> UIImage! {
        let beginImage = CIImage(image: image)
        let filter = CIFilter(name: "CIPixellate")
        filter.setValue(beginImage, forKey: kCIInputImageKey)
        
        let newImage = UIImage(CIImage: filter.outputImage)
        return newImage
    }

    @IBAction func sepiaPressed(sender: UIButton) {
        imageView.image = sepiaImageForImage(image, intensity: 0.5)
    }
    
    @IBAction func normalPressed(sender: UIButton) {
        imageView.image = image
    }
}

