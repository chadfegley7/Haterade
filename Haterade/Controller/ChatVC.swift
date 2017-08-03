//
//  ChatVC.swift
//  Haterade
//
//  Created by Chad Fegley on 7/27/17.
//  Copyright © 2017 Chad Fegley. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {
    
    @IBOutlet weak var menuButt: UIButton!
    

    override func viewDidLoad() {
        
        super.viewDidLoad()

        menuButt.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
        
        
    }

}
