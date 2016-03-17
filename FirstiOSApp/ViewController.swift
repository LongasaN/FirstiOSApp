//
//  ViewController.swift
//  FirstiOSApp
//
//  Created by student on 3/15/16.
//  Copyright © 2016 Aquino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var monsterImageView: UIImageView!
    
    @IBOutlet weak var amountTextField: UITextField!
    @IBOutlet weak var tipPercentTextField: UITextField! // Properties of class
    
    
    var monster = ["Astro", "Fluffy", "Munchie", "Squido"]
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBAction func calculateTip(sender: UIButton) {
        var tip = 0.0
        var dAmount = 0.0
        var dPercent = 0.0
        
        if let amount = amountTextField.text, percent = tipPercentTextField.text {
            dAmount = Double(amount)!
            dPercent = Double(percent)!
            tip = dAmount * dPercent
        }
        
        tipLabel.text = "Tip is $\(String(tip))"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let jokes = Jokes()  // Create object for Jokes class and cannot be changed (keyword: let)
        for joke in jokes.jokes{
            print(joke)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeMonster(sender: UISegmentedControl) {
        
        let index = sender.selectedSegmentIndex
        monsterImageView.image = UIImage(named: monster[index])
    }

}

