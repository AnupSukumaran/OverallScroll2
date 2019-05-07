//
//  Walk1ViewController.swift
//  OverallScollView
//
//  Created by Qaptive Technologies on 07/05/19.
//  Copyright © 2019 Qaptive Technologies. All rights reserved.
//

import UIKit

class Walk1ViewController: UIViewController {
    
    @IBOutlet weak var walkImage: UIImageView!
    @IBOutlet weak var headerLabel: UILabel!
    @IBOutlet weak var subheading: UILabel!
    
    var funcs = Walk1ViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        funcs.setTitles(self)
    }
    
}
