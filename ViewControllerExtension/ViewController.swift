//
//  ViewController.swift
//  ViewControllerExtension
//
//  Created by Anton Kuznetsov on 24.06.17.
//  Copyright © 2017 Anton Kuznetsov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let vc  = ViewController.initFromStoryboard()
        let missingvc = MissingViewController.initFromStoryboard()
        
        print("vc \(vc) missing vc \(missingvc)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

