//
//  Baloon.swift
//  99 Baloons
//
//  Created by THe G on 11/17/14.
//  Copyright (c) 2014 THe G. All rights reserved.
//

import Foundation
import UIKit

struct Ballon{
    
    
    var image = UIImage(named:"")
  
    func randomMessage() ->String {
        
        var randomNumber = Int(arc4random_uniform(UInt32(99)))
        
        return "\(randomNumber) Baloons"
    }
    
    
}