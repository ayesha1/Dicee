//
//  ViewController.swift
//  Dicee
//
//  Created by Ayesha Khan on 10/16/17.
//  Copyright © 2017 Ayesha Khan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]

    @IBOutlet weak var diceImageView1: UIImageView! //changes appearance
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateDiceImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    @IBAction func rollButtonPressed(_ : UIButton) {
        //notifies the code when it's intracted with
        updateDiceImages()
    }
    
    func updateDiceImages(){
        //generates random numbers from 0 to x-1 or 0 to 5
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        diceImageView1.image = UIImage(named : diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named : diceArray[randomDiceIndex2])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
}

