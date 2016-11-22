//
//  ePitchView.swift
//  crowdIgnitor
//
//  Created by Admin on 18/11/2016.
//  Copyright © 2016 Admin. All rights reserved.
//

import UIKit

class ePitchView: UIViewController {
    
    var i = 0;

    let myHeading = ["AI Based dating platform for investors", "Skoda will go Hybrid by 2019", "How Entrepeneurs can stay enaged and happy"];
    let myPitchDescription = ["There have been many articles about how getting up early is the key to success. The most well-known is one by Richard Branson, Why I Wake Up Early. Recently I read one by Peter Shankman, How to Wake Up Early (And Why It’s So Important), where Peter explains why his getting up at 3:30 a.m. is key to his success. I’m sorry, but a 3:30 a.m. wake time is just nuts -- unless you own a chicken farm or a Dunkin' Donuts.","Here’s the short answer: start with a great pitch deck. The pitch deck is arguably the most important single document you will generate in the life of your company. It is the opening salvo and “the hook” by which you will (or will not) capture the attention and imagination of a potential investor.",""]
    
     let myCompanyName = ["CrowdIgnitor", "NextPixar", "HostMud"];
    
    @IBOutlet weak var heading: UILabel!
    
    @IBOutlet weak var socialLikes: UIButton!
    
    @IBOutlet weak var elevatorPitch: UILabel!
    
    @IBOutlet weak var pitchImage: UIImageView!
    
    @IBOutlet weak var companyName: UILabel!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection /Users/admin/Documents/ios/crowdIgnitor/ePitchView.swiftbetween presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        heading.text = myHeading[i]
        elevatorPitch.text = myPitchDescription[i]
        companyName.text = myCompanyName[i]
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(self.respondToSwipeGesture))
        swipeRight.direction = UISwipeGestureRecognizerDirection.right
        self.view.addGestureRecognizer(swipeRight)
        
        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(self.respondToSwipeGesture))
        swipeDown.direction = UISwipeGestureRecognizerDirection.down
        
        self.view.addGestureRecognizer(swipeDown)

        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(self.respondToSwipeGesture))
        swipeDown.direction = UISwipeGestureRecognizerDirection.up
        
        
        self.view.addGestureRecognizer(swipeUp)

        
    }
    
    func respondToSwipeGesture(gesture: UIGestureRecognizer) {
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            switch swipeGesture.direction {
            case UISwipeGestureRecognizerDirection.right:
                print("Swiped right")
            case UISwipeGestureRecognizerDirection.down:
                print("Swiped down")
            case UISwipeGestureRecognizerDirection.left:
                print("Swiped left")
            case UISwipeGestureRecognizerDirection.up:
                if i < 2
                {
                i += 1
                heading.text = myHeading[i]
                elevatorPitch.text = myPitchDescription[i]
                companyName.text = myCompanyName[i]
                    }
                else
                {
                    i = 0
                    heading.text = myHeading[i]
                    elevatorPitch.text = myPitchDescription[i]
                    companyName.text = myCompanyName[i]

                }

            default:
                break
            }
        }
    }
    
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

//    
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        
//        if (i < 2)
//        {
//            i += 1
//            tableView.reloadData()
//        }
//        else
//        {
//            i = 0
//            tableView.reloadData()
//        }
//    
//    }
//   
//  
 

}
