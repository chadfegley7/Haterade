//
//  ChannelVC.swift
//  Haterade
//
//  Created by Chad Fegley on 7/27/17.
//  Copyright © 2017 Chad Fegley. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var loginButt: UIButton!
    
    @IBAction func prepareUnwind(segue: UIStoryboardSegue) {
        
        
        
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
        
        tableView.delegate = self
        
        tableView.dataSource = self
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 3
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell")
        
        return cell!
        
    }
    
    @IBAction func loginButtPressed(_ sender: Any) {
        
        performSegue(withIdentifier: TO_LOGIN, sender: nil)
        
    }

}
