//
//  ViewController.swift
//  IOS07-TimerApp
//
//  Created by Alper Uyar on 19.09.2022.
//

import UIKit

class ViewController: UIViewController {
    var timer = Timer()
    var counter=0
    
    @IBOutlet weak var timeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        counter=10
        timeLabel.text="Timer: \(counter)"
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunc), userInfo: nil, repeats: true)
        
        
    }
    @objc func timerFunc(){
        counter-=1
        timeLabel.text = "Timer: \(counter)"
        if counter==0{
            timer.invalidate()
            timeLabel.text="Done"
        }
    }

}

