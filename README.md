# APSlidableTabPageController

Description:
- A slidable tab page controller written in Swift. 
- Supports both Portraint and Landscape.

Installation:
- Fetch with Carthage, e.g:
  - "github "apegroup/APSlidableTabPageController-iOS" == 1.0.0"

Usage:
```swift
  import APSlidableTabPageController
  
  let arrayOfViewControllers: [UIViewController] = ...
  
  //Create
  let vc = HorizontalContainerCreator.horizontalContainerWithViewControllers(arrayOfViewControllers)
  
  //Configure appearance
  vc.indexBarTextColor = UIColor.blackColor()
  vc.indexBarHighlightedTextColor = swipeVc.indexIndicatorView.backgroundColor!
  ```

TODOs:
- Rename to APSlidableTabPageController

Restrictions:
- Must be instantiated from a NIB


Known Issues:


Feel free to contribute!
