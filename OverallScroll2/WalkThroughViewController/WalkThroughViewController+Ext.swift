//
//  WalkThroughViewController+Ext.swift
//  OverallScollView
//
//  Created by Qaptive Technologies on 07/05/19.
//  Copyright © 2019 Qaptive Technologies. All rights reserved.
//

import Foundation

extension WalkThroughViewController :WalkthroughPageViewControllerDelegate {
    func didUpdatePageIndex(currentIndex: Int) {
        funcs.updateUI(self)
    }
}
