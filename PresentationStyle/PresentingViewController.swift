//
//  PresentingViewController.swift
//  PresentationStyle
//
//  Created by Yuchen Zhong on 2017-08-12.
//  Copyright © 2017 Yuchen Zhong. All rights reserved.
//

import UIKit

private extension UIModalPresentationStyle {
    var name: String {
        switch self {
        case .fullScreen:
            return "Full Screen"
        case .pageSheet:
            return "Page Sheet"
        case .formSheet:
            return "Form Sheet"
        case .currentContext:
            return "Current Context"
        case .custom:
            return "Custom"
        case .overFullScreen:
            return "Over Full Screen"
        case .overCurrentContext:
            return "Over Current Context"
        case .popover:
            return "Popover"
        case .blurOverFullScreen:
            return "Blur Over Full Screen"
        case .none:
            return "N/A"
        }
    }
}

class StyleButton : UIButton {
    var style = UIModalPresentationStyle.none {
        didSet {
            setTitle(" ~ " + style.name + " ~ ", for: .normal)
        }
    }
}

class PresentingViewController: UIViewController {
    
    class func createInstance() -> PresentingViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: "PresentingViewController") as! PresentingViewController
    }
    
    @IBOutlet var stackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let styles: [UIModalPresentationStyle] = [
            .fullScreen,
            .pageSheet,
            .formSheet,
            .currentContext,
            .overFullScreen,
            .overCurrentContext,
            .popover,
        ]
        for style in styles {
            let button = StyleButton(type: .system)
            button.titleLabel?.font = UIFont.init(name: "Helvetica", size: 20)
            button.titleLabel?.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.5028518021)
            button.setTitleColor(UIColor.white, for: .normal)
            button.style = style
            button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
            stackView.addArrangedSubview(button)
        }
    }
    
    func buttonTapped(_ sender: StyleButton) {
        let vc = PresentedViewController.createInstance()
        vc.modalPresentationStyle = sender.style
        if let popoverController = vc.popoverPresentationController {
            popoverController.sourceView = sender
            popoverController.sourceRect = sender.bounds

        }
        self.present(vc, animated: true)
    }
    
    @IBAction func unwindFromSecond(_ segue: UIStoryboardSegue) {
    
    }
}

