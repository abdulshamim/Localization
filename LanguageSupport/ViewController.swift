//
//  ViewController.swift
//  LanguageSupport
//
//  Created by cl-macmini-23 on 15/12/17.
//  Copyright © 2017 cl-macmini-23. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let alertTitle = NSLocalizedString("Welcome", comment: "")
        titleLabel.text = alertTitle
       
    }

    @IBAction func showAlert(_ sender: UIButton) {
         self.alert()
    }
  
    func alert() {
        let alertTitle = NSLocalizedString("Welcome", comment: "")
        let alertMessage = NSLocalizedString("Thank you for trying this app, you are a great person!", comment: "")
        let cancelButtonText = NSLocalizedString("Cancel", comment: "")
        let signupButtonText = NSLocalizedString("Signup", comment: "")
        
        let alert = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: UIAlertControllerStyle.alert)
        let cancelAction = UIAlertAction(title: cancelButtonText, style: UIAlertActionStyle.cancel, handler: nil)
        let signupAction = UIAlertAction(title: signupButtonText, style: UIAlertActionStyle.default, handler: nil)
        alert.addAction(cancelAction)
        alert.addAction(signupAction)
        present(alert, animated: true, completion: nil)
    }

}

