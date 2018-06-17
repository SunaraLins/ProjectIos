//
//  ListaLivrosViewController.swift
//  Project
//
//  Created by Sunara Alícia Lins e Silva on 17/06/18.
//  Copyright © 2018 Sunara Alícia Lins e Silva. All rights reserved.
//

import UIKit

class ListaLivrosViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var array: [String] = []
    
    var list:[ListLivros]? = nil
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "listaLivros", for: indexPath) as! ListaLivrosTableViewCell
        
        cell.cellView.layer.cornerRadius = cell.cellView.frame.height / 2
        
        
        cell.titulo.text = array[indexPath.row]
        return cell
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if CoreDataLivros.saveList(titulo: Livro.livrosName.nameLivro, capitulo: "", pagina: "") {
            list = CoreDataLivros.fetchList()
            
            for i in list! {
                array.append(i.titulo!)
                self.tableView.reloadData()
            }
            
        }

        self.tableView.delegate = self
        self.tableView.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}




