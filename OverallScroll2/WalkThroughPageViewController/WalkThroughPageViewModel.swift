////
////  WalkThroughPageViewModel.swift
////  OverallScollView
////
////  Created by Qaptive Technologies on 07/05/19.
////  Copyright © 2019 Qaptive Technologies. All rights reserved.
////
//
import UIKit

class WalkThroughPageViewModel: NSObject {

   
    weak var walkthroughDelegate: WalkthroughPageViewControllerDelegate?
    var main: WalkThroughPageViewController?
    
    var headersContents = ["CREATE ACCOUNT", "FIND COLLEGES", "APPLY TO COLLEGES", "START STUDYING", ]
    var subheaderContents = ["Fill out basic information to create your \"The Admisson App\" account.", "Search for colleges by city or stream university.", "Send admission applications to your favorite colleges right through the app.", "Finish the final procedure"]
    
    var pageImages = ["walk1","walk2","walk3","walk4"]
    var currentIndex = 0
    
   
    
    //MARK:1
    func setDelegateAndSetFirstWalkThroughScreen(_ main: WalkThroughPageViewController) {
        
        main.dataSource = main
        main.delegate = main
        self.main = main
        createFirstWalkThroughScreen()
       
    }
    
    //MARK:2
    func createFirstWalkThroughScreen() {
        if let startingViewController = contentViewController(at: 0) {
            
            guard let selfVC = main else {return}
            selfVC.setViewControllers([startingViewController], direction: .forward, animated: true, completion: nil)
        }
    }
    
    //MARK:4
    func contentViewController(at index: Int) -> Walk1ViewController? {
        
        if index < 0 || index >= pageImages.count {
            return nil
        }
        
        guard let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Walk1ViewController") as?  Walk1ViewController else {return nil}
        vc.funcs.heading = headersContents[index]
        vc.funcs.subHeading = subheaderContents[index]
        vc.funcs.imageFile = pageImages[index]
        vc.funcs.index = index
        
        
        return vc
    }
    
    //MARK:5
    func forwardPage() {
        
        currentIndex += 1
        if let nextViewController = contentViewController(at: currentIndex) {
            
            guard let selfVC = main else {return}
            selfVC.setViewControllers([nextViewController], direction: .forward, animated: true, completion: nil)
        }
    }
    
    //MARK:6
    func settingDataAccording(forPrev viewController: UIViewController) -> UIViewController? {
        var index = (viewController as! Walk1ViewController).funcs.index
        index -= 1
        
        return contentViewController(at: index)
    }
    
    //MARK:7
    func settingDataAccording(forNext viewController: UIViewController) -> UIViewController? {
        var index = (viewController as! Walk1ViewController).funcs.index
        index += 1
        
        return contentViewController(at: index)
    }
    
    
    //MARK:8
    func pageViewController(_ pageViewController: UIPageViewController, transitionCompleted completed: Bool) {
        
        guard completed else {return}
        guard let contentViewController = pageViewController.viewControllers?.first as? Walk1ViewController else {return}
        currentIndex = contentViewController.funcs.index
        walkthroughDelegate?.didUpdatePageIndex(currentIndex: currentIndex)
        
    }
}
