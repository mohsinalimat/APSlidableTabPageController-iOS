//
//  NSBundle+APSlidableTabPageController.swift
//  APSlidableTabPageController
//
//  Created by Magnus Eriksson on 21/01/16.
//  Copyright © 2016 Apegroup. All rights reserved.
//

import Foundation

extension NSBundle {
    
    static func frameworkBundle() -> NSBundle? {
        let FrameworkBundleID = "com.apegroup.APSlidableTabPageController"
        return NSBundle(identifier: FrameworkBundleID)
    }
}
