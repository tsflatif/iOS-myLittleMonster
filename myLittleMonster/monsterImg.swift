//
//  monsterImg.swift
//  myLittleMonster
//
//  Created by Tauseef Latif on 2016-01-02.
//  Copyright © 2016 Tauseef Latif. All rights reserved.
//

import Foundation

import UIKit

class MonsterImg: UIImageView{
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        //playIdleAnimation()
    }
    
    func playIdleAnimation(monsterType: String) {
        
        self.image = UIImage(named: "\(monsterType)1.png")
        self.animationImages = nil
        
        var imgArray = [UIImage]()
        
        for var x = 1; x <= 4; x++ {
            let img = UIImage(named: "\(monsterType)\(x).png")
            imgArray.append(img!)
        }
        
        self.animationImages = imgArray
        self.animationDuration = 0.8
        self.animationRepeatCount = 0
        self.startAnimating()
    }
    
    func playDeadAnimation(monsterType: String) {
        
        self.image = UIImage(named: "\(monsterType)5.png")
        self.animationImages = nil
        
        var imgArray = [UIImage]()
        
        for var x = 1; x <= 5; x++ {
            let img = UIImage(named: "\(monsterType)\(x).png")
            imgArray.append(img!)
        }
        
        self.animationImages = imgArray
        self.animationDuration = 0.8
        self.animationRepeatCount = 1
        self.startAnimating()
    }
    
}