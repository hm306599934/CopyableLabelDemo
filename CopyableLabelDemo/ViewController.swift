//
//  ViewController.swift
//  CopyableLabelDemo
//
//  Created by Jimmy on 23/4/2016.
//  Copyright © 2016 Jimmy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let gestureRecognizer = UILongPressGestureRecognizer(target: self, action: #selector(ViewController.longPressLabelGesture(_:)))
        mLabel.addGestureRecognizer(gestureRecognizer)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func longPressLabelGesture(gestureRecognizer: UILongPressGestureRecognizer) {
        if gestureRecognizer.state == .Began {
            let menu = UIMenuController.sharedMenuController()
            menu.setTargetRect(mLabel.bounds, inView: mLabel!)
            menu.menuItems = [UIMenuItem(title: "复制", action: #selector(ViewController.actionCopy))]
            menu.setMenuVisible(true, animated: true)
            
            mLabel.becomeFirstResponder()
        }
    }
    
    override func canBecomeFirstResponder() -> Bool {
        return true
    }
    
    
    func actionCopy() {
        print("lalala")
    }

}

