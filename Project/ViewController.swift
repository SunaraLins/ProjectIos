//
//  ViewController.swift
//  Project
//
//  Created by Sunara Alícia Lins e Silva on 12/06/18.
//  Copyright © 2018 Sunara Alícia Lins e Silva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nick: UITextField!
    
    @IBAction func log(_ sender: Any) {
        User.userName.name = nick.text!
        
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

