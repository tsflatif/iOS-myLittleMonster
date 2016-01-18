//
//  pickCharacterViewController.swift
//  myLittleMonster
//
//  Created by Tauseef Latif on 2016-01-04.
//  Copyright © 2016 Tauseef Latif. All rights reserved.
//

import UIKit

class pickCharacterViewController: UIInputViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func golemPressed(sender: AnyObject) {
        let str = "golem"
        performSegueWithIdentifier("goToMain", sender: str)
        
    }

    @IBAction func minerPressed(sender: AnyObject) {
        let str = "miner"
        performSegueWithIdentifier("goToMain", sender: str)
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "goToMain" {
            if let mainVC = segue.destinationViewController as? ViewController {
                if let theString = sender as? String {
                    mainVC.transferText = theString
                }
            }
        }
    }

}
