//
//  ViewController.swift
//  memuDemo
//
//  Created by Parth Changela on 09/10/16.
// Edited by Alok Kumar Rathaur on 04/Aug/17.
//  Copyright © 2016 Parth Changela. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var btnMenuButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Home"
        self.navigationController?.isNavigationBarHidden = false
        // Do any additional setup after loading the view, typically from a nib.
        if revealViewController() != nil {
            //            revealViewController().rearViewRevealWidth = 62
            btnMenuButton.target = revealViewController()
            btnMenuButton.action = "revealToggle:"
            
//            revealViewController().rightViewRevealWidth = 150
//            extraButton.target = revealViewController()
//            extraButton.action = "rightRevealToggle:"
            
      
            
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

