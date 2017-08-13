//
//  InitialViewController.swift
//  PresentationStyle
//
//  Created by Yuchen Zhong on 2017-08-13.
//  Copyright © 2017 Yuchen Zhong. All rights reserved.
//

import Foundation
import UIKit

class InitialViewController: UIViewController {
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // Use form sheet for `PresentingViewController` so that the differences
        // for different presentation styles will be more obviouse
        let vc = PresentingViewController.createInstance()
        vc.modalPresentationStyle = .formSheet
        self.present(vc, animated: true)
    }
}
