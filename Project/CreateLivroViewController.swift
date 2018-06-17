//
//  CreateLivroViewController.swift
//  Project
//
//  Created by Sunara Alícia Lins e Silva on 16/06/18.
//  Copyright © 2018 Sunara Alícia Lins e Silva. All rights reserved.
//

import UIKit

class CreateLivroViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var textTitulo: UITextField!
    @IBOutlet weak var textCapitulo: UITextField!
    @IBOutlet weak var textPagina: UITextField!
    
    @IBOutlet weak var addLivro: UIButton!
    
    var array: [String] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addLivro.layer.cornerRadius = 6
        addLivro.layer.shadowColor = UIColor.darkGray.cgColor
        addLivro.layer.shadowRadius = 1
        addLivro.layer.shadowOpacity = 0.5
        
        self.tableView.delegate = self
        self.tableView.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detalhes", for: indexPath) as! DetalhesTableViewCell
        
        cell.cellView.layer.cornerRadius = cell.cellView.frame.height / 2
        
        
        cell.titulo.text = array[indexPath.row]
        return cell
        
    }
    
    
    @IBAction func addCell(_ sender: Any) {
        
        Livro.livrosName.nameLivro = textTitulo.text!
        
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










