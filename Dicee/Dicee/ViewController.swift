//
//  ViewController.swift
//  Dicee
//
//  Created by Ryan Moye on 10/10/18.
//  Copyright © 2018 Ryan Moye. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    let imageArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        updateDiceImages()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
    func updateDiceImages() {
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        
        diceImageView1.image = UIImage(named: imageArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: imageArray[randomDiceIndex2])
    }
    
}

