//
//  WalkThroughViewModel.swift
//  OverallScollView
//
//  Created by Qaptive Technologies on 07/05/19.
//  Copyright © 2019 Qaptive Technologies. All rights reserved.
//

import UIKit

class WalkThroughViewModel: NSObject {
    
     // weak var main: WalkThroughViewController!
      var walkThroughPageViewController: WalkThroughPageViewController?

    
    //MARK:1
    func next(_ main: WalkThroughViewController) {
        
        if let index = walkThroughPageViewController?.funcs.currentIndex {

            switch index {
            case 0...2:
                
                walkThroughPageViewController?.funcs.forwardPage()
                print("word 0..2")

            case 3:
                
                print("word 3")
                saveAndDismiss(main)

            default:
                
                break
            }
        }

        updateUI(main)
    }
    
    //MARK:2
    func updateUI(_ main: WalkThroughViewController) {
        if let index = walkThroughPageViewController?.funcs.currentIndex {
            switch index {
            case 0...2:
                main.nextButton.setTitle("NEXT", for: .normal)
                main.skipButton.isHidden = false

            case 3:
                main.nextButton.setTitle("GET STARTED", for: .normal)
                main.skipButton.isHidden = true

            default: break
            }

            main.pageControl.currentPage = index
        }
    }
    
    
    //MARK:3
    func segueAction(for segue: UIStoryboardSegue, newMain : WalkThroughViewController) {
        
        if let vc = segue.destination as? WalkThroughPageViewController {
            
            walkThroughPageViewController = vc
            walkThroughPageViewController?.funcs.walkthroughDelegate = newMain
            
        }
    
    }
    
    
    //MARK:4
    func saveAndDismiss(_ main: WalkThroughViewController) {
        UserDefaults.standard.set(true, forKey: "Walk123")
        main.dismiss(animated: true, completion: nil)
    }
}
