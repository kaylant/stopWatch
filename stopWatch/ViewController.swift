//
//  ViewController.swift
//  stopWatch
//
//  Created by Kaylan Smith on 5/6/16.
//  Copyright © 2016 Kaylan Smith. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()
    
    var time = 0
    
    
    @IBOutlet var timerLabel: UILabel!
    
    func increaseTimer() {
        
        time += 1
        
        timerLabel.text = String(time)
        
    }
    
    @IBAction func play(sender: AnyObject) {
        
            timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: #selector(ViewController.increaseTimer), userInfo: nil, repeats: true)
        
    }
    
    @IBAction func pause(sender: AnyObject) {
        
        timer.invalidate()
        
    }
    
    @IBAction func reset(sender: AnyObject) {
        
        timer.invalidate()
        
        time = 0
        
        timerLabel.text = String(0)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        

    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

