//
//  CreateSerieViewController.swift
//  Project
//
//  Created by Sunara Alícia Lins e Silva on 17/06/18.
//  Copyright © 2018 Sunara Alícia Lins e Silva. All rights reserved.
//

import UIKit

class CreateSerieViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var textTitulo: UITextField!
    @IBOutlet weak var textTemporada: UITextField!
    @IBOutlet weak var textEpisodio: UITextField!
    
    @IBOutlet weak var addSerie: UIButton!
    
    var array: [String] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addSerie.layer.cornerRadius = 6
        addSerie.layer.shadowColor = UIColor.darkGray.cgColor
        addSerie.layer.shadowRadius = 1
        addSerie.layer.shadowOpacity = 0.5
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detalhesSerie", for: indexPath) as! DetalhesSerieTableViewCell
        
        cell.cellView.layer.cornerRadius = cell.cellView.frame.height / 2
        
        
        cell.titulo.text = array[indexPath.row]
        return cell
        
    }
    
    
    @IBAction func addCell(_ sender: Any) {
        
        Serie.serieName.nameSerie = textTitulo.text!
        
        array.append("Temporada: \(textTemporada.text!) - Ep.: \(textEpisodio.text!)")
        self.tableView.reloadData()
        
        textTemporada.text = " "
        textEpisodio.text = " "
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}










