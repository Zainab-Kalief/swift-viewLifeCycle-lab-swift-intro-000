//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var blackBox1: UIView!
    @IBOutlet weak var blackBox2: UIView!
    @IBOutlet weak var blackBox3: UIView!
    @IBOutlet weak var blackBox4: UIView!
    @IBOutlet weak var blackBox5: UIView!
    @IBOutlet weak var blackBox6: UIView!
    @IBOutlet weak var blackBox7: UIView!
    
    
    @IBOutlet weak var redBox: UIView!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var orangeBox: UIView!
    @IBOutlet weak var orangeLabel: UILabel!
    @IBOutlet weak var yellowBox: UIView!
    @IBOutlet weak var yellowLabel: UILabel!
    @IBOutlet weak var blueBox: UIView!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var greenBox: UIView!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var purpleBox: UIView!
    @IBOutlet weak var purpleLabel: UILabel!
    
    var randomNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        blackBoxes()
        coloredBoxes()
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        randomNumber = randomDiceRoll()
        showBlackBoxes(with: randomNumber)
        showColoredBoxes(with: randomNumber)
    }
    
    func showBlackBoxes(with number: Int) {
        switch number {
        case 1:
            blackBox4.isHidden = false
            blackBox1.isHidden = true
            blackBox3.isHidden = true
            blackBox5.isHidden = true
            blackBox7.isHidden = true
            blackBox2.isHidden = true
            blackBox6.isHidden = true
        case 2:
            blackBox1.isHidden = false
            blackBox7.isHidden = false
            blackBox4.isHidden = true
            blackBox3.isHidden = true
            blackBox5.isHidden = true
            blackBox2.isHidden = true
            blackBox6.isHidden = true
        case 3:
            blackBox1.isHidden = false
            blackBox7.isHidden = false
            blackBox4.isHidden = false
            blackBox3.isHidden = true
            blackBox5.isHidden = true
            blackBox2.isHidden = true
            blackBox6.isHidden = true
        case 4:
            blackBox1.isHidden = false
            blackBox3.isHidden = false
            blackBox5.isHidden = false
            blackBox7.isHidden = false
            blackBox4.isHidden = true
            blackBox2.isHidden = true
            blackBox6.isHidden = true
        case 5:
            blackBox1.isHidden = false
            blackBox3.isHidden = false
            blackBox5.isHidden = false
            blackBox7.isHidden = false
            blackBox4.isHidden = false
            blackBox2.isHidden = true
            blackBox6.isHidden = true
        case 6:
            blackBox1.isHidden = false
            blackBox3.isHidden = false
            blackBox5.isHidden = false
            blackBox7.isHidden = false
            blackBox2.isHidden = false
            blackBox6.isHidden = false
            blackBox4.isHidden = true
        default:
            blackBoxes()
        }
    }
    
    func showColoredBoxes(with number: Int) {
        if redBox.isHidden == true {
            redBox.isHidden = false
            redLabel.text = "\(randomNumber)"
        } else if orangeBox.isHidden == true {
            orangeBox.isHidden = false
            orangeLabel.text = "\(randomNumber)"
        } else if yellowBox.isHidden == true {
            yellowBox.isHidden = false
            yellowLabel.text = "\(randomNumber)"
        } else if blueBox.isHidden == true {
            blueBox.isHidden = false
            blueLabel.text = "\(randomNumber)"
        } else if greenBox.isHidden == true {
            greenBox.isHidden = false
            greenLabel.text = "\(randomNumber)"
        }else if purpleBox.isHidden == true {
            purpleBox.isHidden = false
            purpleLabel.text = "\(randomNumber)"
        } else {
            blackBoxes()
            coloredBoxes()
        }
    }
    
    func blackBoxes() {
        blackBox1.isHidden = true
        blackBox2.isHidden = true
        blackBox3.isHidden = true
        blackBox4.isHidden = true
        blackBox5.isHidden = true
        blackBox6.isHidden = true
        blackBox7.isHidden = true
    }
    
    func coloredBoxes() {
        redBox.isHidden = true
        orangeBox.isHidden = true
        yellowBox.isHidden = true
        greenBox.isHidden = true
        blueBox.isHidden = true
        purpleBox.isHidden = true
    }
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

}
