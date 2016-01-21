//
//  UIScrollView+Utils.swift
//  WebWrapper
//
//  Created by Magnus Eriksson on 14/01/16.
//  Copyright © 2016 Apegroup. All rights reserved.
//

import UIKit

extension UIScrollView {
    
    //MARK: UIScrollViewHelpers
    
    /**
    "Safely" updates the scroll view's horizontal content offset within its bounds.
    Minimum value is 0 (i.e. left of first page).
    Maximum value is 'contentSize.width - pageSize' (i.e. left of last page)
    */
    func setHorizontalContentOffsetWithinBounds(x: CGFloat, animated: Bool = false) {
        let newX = max(minimumHorizontalOffset(), min(maximumHorizontalOffset(), x))
        setContentOffset(CGPointMake(newX, 0), animated: animated)
    }
    
    /**
     Calculates the current X-scroll percentage for the received scroll view
     */
    func horizontalPercentScrolled() -> CGFloat {
        let maxHorizontalOffset = maximumHorizontalOffset()

        if maxHorizontalOffset > 0 {
            return contentOffset.x / maxHorizontalOffset
        }
        return 0
    }
    
    /**
     Minimum value is 0 (i.e. left of first page).
     */
    func minimumHorizontalOffset() -> CGFloat {
        return 0
    }
    
    /**
     Maximum value is 'contentSize.width - pageSize' (i.e. left of last page)
     */
    func maximumHorizontalOffset() -> CGFloat {
        return contentSize.width - CGRectGetWidth(frame)
    }
    
    /**
     Returns the current page number
     */
    func currentPage() -> Int {
        let pageNumber = Int(contentOffset.x / pageSize())
        return pageNumber
    }
    
    
    func nextPageFrame() -> CGRect {
        var nextPageFrame = bounds
        nextPageFrame.origin.x = CGFloat(currentPage() + 1) * pageSize()
        return nextPageFrame
    }
    
    func previousPageFrame() -> CGRect {
        var prevPageFrame = bounds
        prevPageFrame.origin.x = CGFloat(max(0, currentPage() - 0)) * pageSize()
        return prevPageFrame
    }
    
    func pageSize() -> CGFloat {
        return frame.size.width
    }
    
    func pageContainingX(x: CGFloat) -> Int {
        let page = Int(x / pageSize())
        return page
    }
    
    func scrollToPageAtIndex(index: Int, animated: Bool = false) {
        let newX = CGFloat(index) * pageSize()
        setHorizontalContentOffsetWithinBounds(newX, animated: animated)
    }
}
