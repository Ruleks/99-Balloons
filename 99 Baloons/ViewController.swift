//
//  ViewController.swift
//  99 Baloons
//
//  Created by THe G on 11/17/14.
//  Copyright (c) 2014 THe G. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var baloonNumberLabel: UILabel!
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var nextButton: UIButton!

    var myBalloons: [Ballon] = []
    var currentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myImageView.image = UIImage(named: "BerlinTVTower.jpg")
        
        var myBallon = Ballon()
        myBallon.image = UIImage(named: "RedBalloon1.jpg")
        
        var secondBallon = Ballon()
        secondBallon.image = UIImage(named: "Redballoon2.jpg")
        
        var thirdBallon = Ballon()
        thirdBallon.image = UIImage(named: "RedBalloon3.jpg")
        
        var fourthBallon = Ballon()
        fourthBallon.image = UIImage(named: "RedBalloon4.jpg")
        
        myBalloons += [myBallon, secondBallon, thirdBallon, fourthBallon]
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextButtonPressed(sender: UIButton) {
        
        var randomIndex: Int
        
        do{
        
        randomIndex = Int(arc4random_uniform(UInt32(myBalloons.count)))
        
        
        }while currentIndex == randomIndex
        
        currentIndex = randomIndex
        
        let balloon = myBalloons[randomIndex]
        
        
        
        UIView.transitionWithView(self.view, duration: 0.5, options: UIViewAnimationOptions.TransitionCrossDissolve, animations: {
            
            self.myImageView.image = balloon.image
            self.baloonNumberLabel.text = balloon.randomMessage()
            
            
            }, completion: {
                (finished: Bool) -> () in
        })
        
    
        
        
    }

}

