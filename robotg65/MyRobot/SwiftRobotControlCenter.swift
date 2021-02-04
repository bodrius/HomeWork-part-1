//
//  SwiftRobotControlCenter.swift
//  MyRobot
//
//  Created by Ivan Vasilevich on 10/4/14.
//  Copyright (c) 2014 Ivan Besarab. All rights reserved.
//

import UIKit
//all robot commands can be founded in GameViewController.h
class SwiftRobotControlCenter: RobotControlCenter {
    
    //level name setup
    override func viewDidLoad() {
//        levelName = "L4H" // level name
        levelName = "L55H" // level name
        
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        super.viewDidAppear(animated)
        putCandy(number:1)
        putCandy(number:2)
        putCandy(number:3)
        putCandy(number:4)
        putCandy(number:5)
        putCandy(number:6)
        putCandy(number:7)
        putCandy(number:8)
        putCandy(number:9)
    }
    
    
    func putCandy(number: Int){
        turnRight()
        move()
        turnRight()
        turnRight()
        turnRight()
        var counter: Int = 0
        for _ in 0..<number{
            counter = counter + 1
                put()
                move()
        }
        turnRight()
        turnRight()
        while frontIsClear {
            move()
        }
        turnRight()
        turnRight()
    }
    
    
}
