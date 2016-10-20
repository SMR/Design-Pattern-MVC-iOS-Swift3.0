//
//  AppDelegate.swift
//  MVC
//
//  Created by Samarjeet Dubey on 05/10/16.
//  Copyright © 2016 Samarjeet Dubey. All rights reserved.
//

import UIKit
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    var baseController : UITabBarController?
    
    func createTabs(){
        
        var tabControllers : [UIViewController] = []
        let tabController1  =   ViewController()
        let subController1 = UINavigationController(rootViewController: tabController1)
        
        subController1.tabBarItem.title =   "Home"
        subController1.tabBarItem.image =   UIImage(named: "home.png")
        subController1.navigationBar.topItem!.title = "home"
        tabControllers.append(subController1)
        
        let tabController2  =   GalleryViewController()
        let subController2 = UINavigationController(rootViewController: tabController2)
        
        subController2.tabBarItem.title =   "Gallery"
        subController2.tabBarItem.image =   UIImage(named: "gallery.png")
        subController2.navigationBar.topItem!.title = "gallery"
        tabControllers.append(subController2)
        
        let tabController3  =   AppViewController()
        let subController3 = UINavigationController(rootViewController: tabController3)
        subController3.tabBarItem.title =   "Apps"
        subController3.tabBarItem.image =   UIImage(named: "apps.png")
        subController3.navigationBar.topItem!.title = "Apps"
        tabControllers.append(subController3)
        
        
        baseController = UITabBarController()
        baseController!.viewControllers =   tabControllers
    }
    
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        window  =   UIWindow(frame: UIScreen.mainScreen().bounds)
        createTabs()
        window!.rootViewController  =   baseController
        window!.makeKeyAndVisible()
        
        return true
    }
    
    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }
    
    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }
    
    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }
    
    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }
    
    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    
}


