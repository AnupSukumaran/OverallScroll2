//
//  WalkThroughPageViewController+Ext.swift
//  OverallScollView
//
//  Created by Qaptive Technologies on 07/05/19.
//  Copyright © 2019 Qaptive Technologies. All rights reserved.
//

import UIKit


extension WalkThroughPageViewController: UIPageViewControllerDataSource {
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        return funcs.settingDataAccording(forPrev: viewController)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        return funcs.settingDataAccording(forNext: viewController)
    }
    
}

extension WalkThroughPageViewController: UIPageViewControllerDelegate {
    
    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
        
        funcs.pageViewController(pageViewController, transitionCompleted: completed)

    }
}
