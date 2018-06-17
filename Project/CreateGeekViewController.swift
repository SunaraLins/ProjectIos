//
//  CreateGeekViewController.swift
//  Project
//
//  Created by Sunara Alícia Lins e Silva on 17/06/18.
//  Copyright © 2018 Sunara Alícia Lins e Silva. All rights reserved.
//

import UIKit

class CreateGeekViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var textTitulo: UITextField!
    @IBOutlet weak var textCapitulo: UITextField!
    @IBOutlet weak var textPagina: UITextField!
    
    @IBOutlet weak var addGeek: UIButton!
    
    var array: [String] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addGeek.layer.cornerRadius = 6
        addGeek.layer.shadowColor = UIColor.darkGray.cgColor
        addGeek.layer.shadowRadius = 1
        addGeek.layer.shadowOpacity = 0.5
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
       
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detalhesGeek", for: indexPath) as! DetalhesGeekTableViewCell
        
        cell.cellView.layer.cornerRadius = cell.cellView.frame.height / 2
        
        
        cell.titulo.text = array[indexPath.row]
        return cell
        
    }
    
    @IBAction func addCell(_ sender: Any) {
        
        Geek.geekName.nameGeek = textTitulo.text!
        
        array.append("Capitulo: \(textCapitulo.text!) - Pag: \(textPagina.text!)")
        self.tableView.reloadData()
        
        textCapitulo.text = " "
        textPagina.text = " "
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}










