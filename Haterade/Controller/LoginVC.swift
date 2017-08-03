//
//  LoginVC.swift
//  Haterade
//
//  Created by Chad Fegley on 7/27/17.
//  Copyright © 2017 Chad Fegley. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()

    }

    @IBAction func closePressed(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func createAccountButtPressed(_ sender: Any) {
        
        performSegue(withIdentifier: TO_CREATE_ACCOUNT, sender: nil)
        
    }
    
}
