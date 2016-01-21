//
//  AppDelegate.swift
//  APSlidableTabPageControllerDemo
//
//  Created by Magnus Eriksson on 21/01/16.
//  Copyright © 2016 Apegroup. All rights reserved.
//

import APSlidableTabPageController

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        window = UIWindow()
        window?.rootViewController =  slidableTabPageController()
        window?.makeKeyAndVisible()
        return true
    }
    
    private func slidableTabPageController() -> UIViewController {
        let vc = HorizontalContainerCreator.horizontalContainerWithViewControllers(createViewControllers())
        vc.indexBarTextColor = UIColor.blackColor()
        vc.indexBarHighlightedTextColor = vc.indexIndicatorView.backgroundColor!
        return vc
    }
    
    private func createViewControllers() -> [UIViewController] {
        var viewControllers: [UIViewController] = []
        for i in 0..<6 {
            let vc = UIViewController()
            vc.title = "VC nr \(i)"
            vc.view.backgroundColor = randomColor()
            viewControllers.append(vc)
        }
        
        return viewControllers
    }
    
    private func randomColor() -> UIColor {
        return UIColor(red: CGFloat(drand48()), green: CGFloat(drand48()), blue: CGFloat(drand48()), alpha: 1)
    }
}

