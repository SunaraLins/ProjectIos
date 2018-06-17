//
//  ListaFilmesViewController.swift
//  Project
//
//  Created by Sunara Alícia Lins e Silva on 17/06/18.
//  Copyright © 2018 Sunara Alícia Lins e Silva. All rights reserved.
//

import UIKit

class ListaFilmesViewController: UIViewController {
    
    
    @IBOutlet weak var livros: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        livros.layer.cornerRadius = 6
        livros.layer.shadowColor = UIColor.darkGray.cgColor
        livros.layer.shadowRadius = 1
        livros.layer.shadowOpacity = 0.1
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
