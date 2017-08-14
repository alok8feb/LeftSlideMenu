//
//  LoginViewController.swift
//  memuDemo
//
//  Created by Santosh Chandak on 03/08/17.
// Edited by Alok Kumar Rathaur on 04/Aug/17.
//  Copyright © 2017 Parth Changela. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var OkButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.isNavigationBarHidden = true
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
  
    }
    
    @IBAction func submitAction(_ sender: Any) {
        print("push");

       
        
        let viewController: HomeViewController = self.storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        self.navigationController?.pushViewController(viewController, animated: true)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
