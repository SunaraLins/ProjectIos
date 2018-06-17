//
//  CoreDataLivros.swift
//  Project
//
//  Created by Sunara Alícia Lins e Silva on 17/06/18.
//  Copyright © 2018 Sunara Alícia Lins e Silva. All rights reserved.
//

import UIKit
import CoreData

class CoreDataLivros: NSObject {
    
    private class func getContext() -> NSManagedObjectContext {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        return appDelegate.persistentContainer.viewContext
        
    }
    
    class func saveList(titulo: String, capitulo: String, pagina: String) -> Bool {
        let context = getContext()
        let entity = NSEntityDescription.entity(forEntityName: "ListLivros", in: context)
        let manageList = NSManagedObject(entity: entity!, insertInto: context)
        
        manageList.setValue(titulo, forKey: "titulo")
        manageList.setValue(capitulo, forKey: "capitulo")
        manageList.setValue(pagina, forKey: "pagina")
        
        do {
            try context.save()
            return true
            
        } catch {
            
            return false
        }
        
    }
    
    class func fetchList() -> [ListLivros]? {
        let context = getContext()
        var list:[ListLivros]? = nil
        
        do {
            list = try context.fetch(ListLivros.fetchRequest())
            return list
            
        } catch {
            return list
        }
    }
    
    
}
