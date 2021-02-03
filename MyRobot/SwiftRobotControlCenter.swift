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
		levelName = "L55H" // level name

		super.viewDidLoad()
	}
	
	override func viewDidAppear(_ animated: Bool) {
		
		super.viewDidAppear(animated)
        putCake()
	}
    
    
    func putCake(){
        while noCandyPresent, frontIsClear{
            put()
            move()
            if frontIsBlocked{
                put()
                turnRight()
                move()
                move()
                turnRight()
                goLeftPutCake()
            }
        }
        
    }
    
    func goLeftPutCake(){
        while noCandyPresent {
            put()
            move()
            if frontIsBlocked{
                put()
                turnRight()
                turnRight()
                turnRight()
                if frontIsBlocked, rightIsBlocked{
                    break
                }
               
                move()
                move()
                turnRight()
                turnRight()
                turnRight()
                putCake()
            }
        }
    }
	
}
