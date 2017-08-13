//
//  SecondViewController.swift
//  PresentationStyle
//
//  Created by Yuchen Zhong on 2017-08-12.
//  Copyright © 2017 Yuchen Zhong. All rights reserved.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {
    class func createInstance() -> SecondViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
    }
}
