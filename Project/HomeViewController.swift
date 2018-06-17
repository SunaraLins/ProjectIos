//
//  HomeViewController.swift
//  Project
//
//  Created by Sunara Alícia Lins e Silva on 16/06/18.
//  Copyright © 2018 Sunara Alícia Lins e Silva. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    
    @IBOutlet weak var geek: UIButton!
    @IBOutlet weak var serie: UIButton!
    @IBOutlet weak var filme: UIButton!
    @IBOutlet weak var livro: UIButton!
    
    @IBOutlet weak var nameUser: UILabel!
    
    @IBAction func unwindSegueHome(segue: UIStoryboardSegue) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameUser.text = User.userName.name
        
        geek.layer.cornerRadius = 15
        geek.clipsToBounds = true
        
        serie.layer.cornerRadius = 15
        serie.clipsToBounds = true
        
        filme.layer.cornerRadius = 15
        filme.clipsToBounds = true
        
        livro.layer.cornerRadius = 15
        livro.clipsToBounds = true
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
