//
//  ListViewController.swift
//  Project
//
//  Created by Sunara Alícia Lins e Silva on 16/06/18.
//  Copyright © 2018 Sunara Alícia Lins e Silva. All rights reserved.
//

import UIKit
import CoreData


class ListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var serie: UIButton!
    @IBOutlet weak var filmes: UIButton!
    @IBOutlet weak var livros: UIButton!
    
    
    @IBOutlet weak var tableView: UITableView!
    var array: [String] = []
    
    var list:[ListGeek]? = nil
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "lista", for: indexPath) as! ListaTableViewCell
        
        cell.cellView.layer.cornerRadius = cell.cellView.frame.height / 2
        
        
        cell.titulo.text = array[indexPath.row]
        return cell
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        serie.layer.cornerRadius = 6
        serie.layer.shadowColor = UIColor.darkGray.cgColor
        serie.layer.shadowRadius = 1
        serie.layer.shadowOpacity = 0.1

        filmes.layer.cornerRadius = 6
        filmes.layer.shadowColor = UIColor.darkGray.cgColor
        filmes.layer.shadowRadius = 1
        filmes.layer.shadowOpacity = 0.1

        livros.layer.cornerRadius = 6
        livros.layer.shadowColor = UIColor.darkGray.cgColor
        livros.layer.shadowRadius = 1
        livros.layer.shadowOpacity = 0.1
        
        if CoreDataGeek.saveList(titulo: Livro.livrosName.nameLivro, capitulo: "", pagina: "") {
            list = CoreDataGeek.fetchList()
            
            for i in list! {
                //print(i.titulo!)
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
