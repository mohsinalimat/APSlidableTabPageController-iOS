//
//  UIView+LayoutUtils.swift
//  WebWrapper
//
//  Created by Magnus Eriksson on 16/01/16.
//  Copyright © 2016 Apegroup. All rights reserved.
//

import UIKit

extension UIView {
    
    func addViewsHorizontally(views: [UIView]) {
        
        var prevView: UIView?
        for view in views {
            view.translatesAutoresizingMaskIntoConstraints = false
            addSubview(view)
            
            view.topAnchor.constraintEqualToAnchor(topAnchor).active = true
            view.bottomAnchor.constraintEqualToAnchor(bottomAnchor).active = true
            
            if prevView == nil {
                //First view - Pin to view's leading anchor
                view.leadingAnchor.constraintEqualToAnchor(leadingAnchor).active = true
            } else {
                //All other views - to to previous view's trailing anchor
                view.leadingAnchor.constraintEqualToAnchor(prevView?.trailingAnchor).active = true
            }
            
            prevView = view;
        }
        
        //Last view - pin to container view's trailing anchor
        prevView?.trailingAnchor.constraintEqualToAnchor(trailingAnchor).active = true
    }
    
    func reportAmbiguity () {
        for subview in subviews {
            if subview.hasAmbiguousLayout() {
                NSLog("Found ambigious layout: \(subview)")
            }
            
            if subview.subviews.count > 0 {
                subview.reportAmbiguity()
            }
        }
    }
    
    func listConstraints() {
        for subview in subviews {
            let arr1 = subview.constraintsAffectingLayoutForAxis(.Horizontal)
            let arr2 = subview.constraintsAffectingLayoutForAxis(.Vertical)
            NSLog("\n\n%@\nH: %@\nV:%@", subview, arr1, arr2)
            if subview.subviews.count > 0 {
                subview.listConstraints()
            }
        }
    }

}
