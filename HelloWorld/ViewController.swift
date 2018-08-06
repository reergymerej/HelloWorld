//
//  ViewController.swift
//  HelloWorld
//
//  Created by Jeremy Greer on 8/5/18.
//  Copyright © 2018 Grizzle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showMessage(sender: UIButton) {
        var dict = [
            "🤩": "Stars",
            "🥑": "Avocado, baby.",
            "🐮": "Moo",
            "😎": "Cool",
        ]
        
        if let buttonLabel = sender.titleLabel?.text {
            let message = dict[buttonLabel]
            
            let alertController = UIAlertController(title: "Emoji Meaning", message: message, preferredStyle: UIAlertControllerStyle.alert)
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            present(alertController, animated: true, completion: nil)
        }    
    }
}

