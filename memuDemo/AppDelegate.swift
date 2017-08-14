//
//  AppDelegate.swift
//  memuDemo
//
//  Created by Parth Changela on 09/10/16.
// Edited by Alok Kumar Rathaur on 04/Aug/17.
//  Copyright © 2016 Parth Changela. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var nvc: UINavigationController?
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    //fileprivate
     var setRootViewContoller : UIViewController?
    
    func showHomeScreen() {
       
        let sbvc = SWRevealViewController()
        
        
        let loginViewController = storyboard.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        
         let homeViewController = storyboard.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        
         let MenuViewController = storyboard.instantiateViewController(withIdentifier: "menuViewController") as! menuViewController
        
       
        if(false){
            setRootViewContoller = homeViewController;
        }else {
             setRootViewContoller = loginViewController;
        }
      
        let nav = UINavigationController(rootViewController: setRootViewContoller!)
        let revealController = SWRevealViewController(rearViewController: MenuViewController, frontViewController: nav)
        self.window?.rootViewController = revealController
        self.window?.makeKeyAndVisible()
    }


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
       // createMenu()
        showHomeScreen()
        
        return true
    }

    func changeRootViewControllerToSWRevealViewController () {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let loginViewController = storyboard.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        
        let controller = storyboard.instantiateViewController(withIdentifier: "SWRevealViewController")
        
        if let window = self.window{
            window.rootViewController = loginViewController
        }
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

