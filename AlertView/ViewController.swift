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
        
        let alert = PCLBlurEffectAlert.Controller(title: "Title", message: "Message", effect: UIBlurEffect(style: .extraLight), style: .actionSheet)
        let alertButton = PCLBlurEffectAlert.AlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(alertButton)
        
        alert.configure(cornerRadius: 10)
        alert.configure(overlayBackgroundColor: UIColor(red: 0, green: 0, blue: 100, alpha: 0.2))
        alert.configure(titleFont: .systemFont(ofSize: 30), titleColor: .gray)
        alert.configure(messageFont: .systemFont(ofSize: 20), messageColor: .black)
        
        alert.show()
        
    }

}

