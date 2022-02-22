//
//  ViewController.swift
//  CourseDisplayApp
//
//  Created by Chowdam,Sai Kishore on 2/10/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var displayImage: UIImageView!
    
    @IBOutlet weak var crsNum: UILabel!
    @IBOutlet weak var crsTitle: UILabel!
    
    
    @IBOutlet weak var crsSem: UILabel!
    
    @IBOutlet weak var previousButton: UIButton!
    
    @IBOutlet weak var nextButton: UIButton!
    
    
    let courses=[["img01","44555","Network Security","Fall 2022"],["img02","44643","iOS","Spring 2022"],["img03","44656","Data Streaming","Fall 2022"]]
    
    var imageNumber=0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //The details of the course (image,crsNum,crsTitle,crsSem) in 0th position is diplayed.
        
        updateUI(imageNum: imageNumber)
        
        previousButton.isEnabled=false
    }
    
    @IBAction func previousButtonClicked(_ sender: UIButton) {
        
        //next button shoud be eneabled
        nextButton.isEnabled=true
        //update the course number by decresing one
        imageNumber-=1
        updateUI(imageNum: imageNumber)
        //once the user reach the bigginging of the array, the next button should be displayed
        if(imageNumber==0)
        {
            previousButton.isEnabled=false
        }
    }
    
    @IBAction func nextButtonClicked(_ sender: UIButton) {
        //Update the UI of next course details by incrementing image number
        
        //Previous button enabled
        //once the user reach the end of the array, the next button should be displayed
        
        imageNumber+=1
        updateUI(imageNum: imageNumber)
        previousButton.isEnabled=true
        if(imageNumber==courses.count-1)
        {
            nextButton.isEnabled=false
        }
        
    }
    func updateUI(imageNum:Int)
    {
        displayImage.image=UIImage(named: courses[imageNum][0])
        crsNum.text=courses[imageNum][1]
        crsTitle.text=courses[imageNum][2]
        crsSem.text=courses[imageNum][3]
    }
    
}

