//
//  ViewController.swift
//  Timer
//
//  Created by Gabriel Martinez on 2017-11-14.
//  Copyright © 2017 Gabriel Martinez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    var timer = Timer()
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = String(counter)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func startBtn(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @IBAction func pauseBtn(_ sender: Any) {
        
        timer.invalidate()
    }
    
    @IBAction func restartBtn(_ sender: Any) {
        timer.invalidate()
        counter = 0
        label.text = String(counter)
    }
    
    @objc func updateTimer(){
        counter += 1
        label.text = String(counter)
    }
    
    
}

