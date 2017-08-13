//
//  PresentedViewController.swift
//  PresentationStyle
//
//  Created by Yuchen Zhong on 2017-08-12.
//  Copyright © 2017 Yuchen Zhong. All rights reserved.
//

import Foundation
import UIKit

class PresentedViewController: UIViewController {
    class func createInstance() -> PresentedViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: "PresentedViewController") as! PresentedViewController
    }
}
