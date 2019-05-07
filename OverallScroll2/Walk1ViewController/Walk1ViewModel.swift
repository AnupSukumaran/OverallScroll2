//
//  Walk1ViewModel.swift
//  OverallScollView
//
//  Created by Qaptive Technologies on 07/05/19.
//  Copyright © 2019 Qaptive Technologies. All rights reserved.
//

import UIKit

class Walk1ViewModel: NSObject {
    
   // weak var main: Walk1ViewController!
    var index = 0
    var heading = ""
    var subHeading = ""
    var imageFile = ""
    
//    init(_ main: Walk1ViewController) {
//
//        self.main = main
//    }
    
    //MARK:
    func setTitles(_ main: Walk1ViewController) {
        
        main.headerLabel.text = heading
        main.subheading.text = subHeading
        main.walkImage.image = UIImage(named: imageFile)
    }
}
