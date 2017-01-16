//
//  ViewController.swift
//  AlertView
//
//  Created by Bennett Hartrick on 1/16/17.
//  Copyright © 2017 Bennett. All rights reserved.
//

import UIKit
import PCLBlurEffectAlert

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func callAlert(_ sender: Any) {
        
        let alert = PCLBlurEffectAlert.Controller(title: "Title", message: "Message", effect: UIBlurEffect(style: .light), style: .alert)
        let alertButton = PCLBlurEffectAlert.AlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(alertButton)
        
        alert.show()
        
    }

}

