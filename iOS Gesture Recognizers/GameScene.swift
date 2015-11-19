//
//  GameScene.swift
//  iOS Gesture Recognizers
//
//  Created by Corey Greene on 7/20/15.
//  Copyright (c) 2015 CGREENE. All rights reserved.
//



import SpriteKit

// run this on ipad simulator (ratio not fixed for iphones)

class GameScene: SKScene {
    var display = SKLabelNode()
    // called when the game begins
    override func didMoveToView(view: SKView) {
        display = SKLabelNode(text: "")
        display.fontSize = 35
        display.position = CGPoint(x: (scene?.size.width)! / 2, y: (scene?.size.height)! / 3)
        addChild(display)
        
        print(size)
        
        backgroundColor = SKColor.grayColor()
        let message =  SKLabelNode(text: "Touch and drag, and watch the console change")
        message.position = CGPoint(x: (scene?.size.width)! / 2, y: (scene?.size.height)! / 2)
        message.fontSize = 35
        addChild(message)
        
        
        // enable this code to have swipe recognization
        // swipe gesture recognizers
        /*
        let swipeRight:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("swipedRight:"))
        swipeRight.direction = .Right
        swipeRight.numberOfTouchesRequired = 2
        view.addGestureRecognizer(swipeRight)
        
        let swipeLeft:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("swipedLeft:"))
        swipeLeft.direction = .Left
        view.addGestureRecognizer(swipeLeft)
        
        let swipeUp:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("swipedUp:"))
        swipeUp.direction = .Up
        view.addGestureRecognizer(swipeUp)
        
        let swipeDown:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("swipedDown:"))
        swipeDown.direction = .Down
        view.addGestureRecognizer(swipeDown)
        */
        
    }
    
    // enable this code to have swipe recognization
    // swipe methods
    /*
    func swipedRight(sender:UISwipeGestureRecognizer){
    display.text = ("swiped right")
    }
    func swipedLeft(sender:UISwipeGestureRecognizer){
    display.text = ("swiped left")
    }
    func swipedUp(sender:UISwipeGestureRecognizer){
    display.text = ("swiped up")
    }
    func swipedDown(sender:UISwipeGestureRecognizer){
    display.text = ("swiped down")
    }
    
    */
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let touch = touches.first as UITouch!
        if(touch.locationInNode(self).x > self.size.width / 2)
        {
            display.text = ("RIGHT SIDE")
        }
        else{
            display.text = ("Left Side")
        }
        display.text = String("Touch Has Begun" , "X: ", touch.locationInNode(self).x , "Y: ", touch.locationInNode(self).y)
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let touch = touches.first as UITouch!
        display.text = String("X: ", touch.locationInNode(self).x , "Y: ", touch.locationInNode(self).y)
    }
    
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let touch = touches.first as UITouch!
        display.text = String("touch has ended at X:", touch.locationInNode(self).x," Y: ", touch.locationInNode(self).y)
        
    }
}
