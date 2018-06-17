//
//  ListGeekViewController.swift
//  Project
//
//  Created by Sunara Alícia Lins e Silva on 16/06/18.
//  Copyright © 2018 Sunara Alícia Lins e Silva. All rights reserved.
//

import UIKit
import CoreData

class ListGeekViewController: UIViewController {
    
    var list:[ListGeek]? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if CoreDataGeek.saveList(titulo: "Re-Zero", capitulo: "O Despertar 2", pagina: "40") {
            list = CoreDataGeek.fetchList()
            
            for i in list! {
                print(i.titulo!)
                print(i.capitulo!)
                print(i.pagina!)
                
            }
        }
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
