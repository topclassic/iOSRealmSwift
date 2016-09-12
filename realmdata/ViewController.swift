//
//  ViewController.swift
//  realmdata
//
//  Created by Chotipat on 9/12/2559 BE.
//  Copyright © 2559 Chotipat. All rights reserved.
//

import UIKit
import RealmSwift
class ViewController: UITableViewController {
    var cat = Cat()
    let realm = try! Realm()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Create data
        let person = Person(value: ["firstname" : "Pluto", "lastname": "333"])

        do{
            let realm = try Realm()
            try realm.write {
                realm.add(person)
            }
        }catch{
            NSLog("Error")
        }
        
        // Queries
        let persons = realm.objects(Person.self)
        print(persons)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

