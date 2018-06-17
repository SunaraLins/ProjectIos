//
//  CoreDataFilmes.swift
//  Project
//
//  Created by Sunara Alícia Lins e Silva on 17/06/18.
//  Copyright © 2018 Sunara Alícia Lins e Silva. All rights reserved.
//

import UIKit
import CoreData

class CoreDataFilmes: NSObject {
    
    private class func getContext() -> NSManagedObjectContext {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        return appDelegate.persistentContainer.viewContext
        
    }
    
    class func saveList(titulo: String, capitulo: String, pagina: String) -> Bool {
        let context = getContext()
        let entity = NSEntityDescription.entity(forEntityName: "ListFilmes", in: context)
        let manageList = NSManagedObject(entity: entity!, insertInto: context)
        
        manageList.setValue(titulo, forKey: "titulo")
        manageList.setValue(capitulo, forKey: "status")
        
        do {
            try context.save()
            return true
            
        } catch {
            
            return false
        }
        
    }
    
    class func fetchList() -> [ListFilmes]? {
        let context = getContext()
        var list:[ListFilmes]? = nil
        
        do {
            list = try context.fetch(ListFilmes.fetchRequest())
            return list
            
        } catch {
            return list
        }
    }
}
