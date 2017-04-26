//
//  ViewController.swift
//  Shaked
//
//  Created by Tanya Tomchuk on 25.04.17.
//  Copyright © 2017 Tanya Tomchuk. All rights reserved.
//

import UIKit

protocol ShakeControllerDelegate: class {
    func didFinishShaking(sender: ShakeController)
}

class ShakeController: UIViewController {
    @IBOutlet weak var shakeLabel: UILabel!
    
    weak var delegate: ShakeControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if (motion == .motionShake) {
            delegate?.didFinishShaking(sender: self)
            shakeLabel.text = "Shake Detected!"
        } else {
            return
        }
    }
}

