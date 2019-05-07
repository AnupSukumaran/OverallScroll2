//
//  WalkThroughViewController.swift
//  OverallScollView
//
//  Created by Qaptive Technologies on 07/05/19.
//  Copyright © 2019 Qaptive Technologies. All rights reserved.
//

import UIKit

class WalkThroughViewController: UIViewController {
    
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var skipButton: UIButton!
    
    var funcs = WalkThroughViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 
        funcs.segueAction(for: segue, newMain: self)

    }
    
    @IBAction func nextButtonTapped(sender: UIButton) {
       
        funcs.next(self)
    }
     
    @IBAction func skipAction(_ sender: Any) {
        funcs.saveAndDismiss(self)
        
    }
  
}

