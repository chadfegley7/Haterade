//
//  CreateAccountVC.swift
//  Haterade
//
//  Created by Chad Fegley on 8/3/17.
//  Copyright © 2017 Chad Fegley. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()

    }
    
    @IBAction func closePressed(_ sender: Any) {
        
        performSegue(withIdentifier: UNWIND, sender: nil)
        
    }
    

}
