//
//  ViewController.swift
//  CoordinatesDemo
//
//  Created by Chowdam,Sai Kishore on 3/1/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageViewOutlet: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let minX=imageViewOutlet.frame.minX;
        let minY=imageViewOutlet.frame.minY;
        print("(\(minX),\(minY))");
        
        
        let maxX=imageViewOutlet.frame.maxX;
        let maxY=imageViewOutlet.frame.maxY;
        print("(\(maxX),\(maxY))");
        
        
        let midX=imageViewOutlet.frame.midX;
        let midY=imageViewOutlet.frame.midY;
        print("(\(midX),\(midY))");
        
        
        //Change the location of the car to the upper left corner
        imageViewOutlet.frame.origin.x=0
        imageViewOutlet.frame.origin.y=0
        
        
        //Change the location of the car to the upper right corner
        imageViewOutlet.frame.origin.x=314
        imageViewOutlet.frame.origin.y=0
        
        //Change the location of the car to the bottom left corner
        imageViewOutlet.frame.origin.x=0
        imageViewOutlet.frame.origin.y=796
        
        //Change the location of the car to the bottom right corner
        imageViewOutlet.frame.origin.x=314
        imageViewOutlet.frame.origin.y=796
        
        //Change the location of the car to the Center
        imageViewOutlet.frame.origin.x=157
        imageViewOutlet.frame.origin.y=398
        
        
    }


}

