//
//  WalkThroughPageViewController.swift
//  OverallScollView
//
//  Created by Qaptive Technologies on 07/05/19.
//  Copyright © 2019 Qaptive Technologies. All rights reserved.
//

import UIKit

protocol WalkthroughPageViewControllerDelegate: class {
    func didUpdatePageIndex(currentIndex: Int)
}

class WalkThroughPageViewController: UIPageViewController {
    
    var funcs = WalkThroughPageViewModel()


    override func viewDidLoad() {
        super.viewDidLoad()
        
        funcs.setDelegateAndSetFirstWalkThroughScreen(self)

    }
    

}
