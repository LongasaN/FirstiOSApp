//
//  ViewController.swift
//  FirstiOSApp
//
//  Created by student on 3/15/16.
//  Copyright © 2016 Aquino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

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


}

