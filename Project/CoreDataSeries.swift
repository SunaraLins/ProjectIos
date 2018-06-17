//
//  CoreDataSeries.swift
//  Project
//
//  Created by Sunara Alícia Lins e Silva on 17/06/18.
//  Copyright © 2018 Sunara Alícia Lins e Silva. All rights reserved.
//

import UIKit
import CoreData

class CoreDataSeries: NSObject {

    private class func getContext() -> NSManagedObjectContext {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        return appDelegate.persistentContainer.viewContext
        
    }
    
    class func saveList(titulo: String, capitulo: String, pagina: String) -> Bool {
        let context = getContext()
        let entity = NSEntityDescription.entity(forEntityName: "ListSeries", in: context)
        let manageList = NSManagedObject(entity: entity!, insertInto: context)
        
        manageList.setValue(titulo, forKey: "titulo")
        manageList.setValue(capitulo, forKey: "temporada")
        manageList.setValue(pagina, forKey: "episodio")
        
        do {
            try context.save()
            return true
            
        } catch {
            
            return false
        }
        
    }
    
    class func fetchList() -> [ListSeries]? {
        let context = getContext()
        var list:[ListSeries]? = nil
        
        do {
            list = try context.fetch(ListSeries.fetchRequest())
            return list
            
        } catch {
            return list
        }
    }
}
