//
//  StorageManager.swift
//  HomeWork_25_Realm
//
//  Created by Владимир  on 8.08.21.
//  Copyright © 2021 Владимир . All rights reserved.
//

import Foundation
import RealmSwift

let realm = try! Realm()

class StorageManager {
    static func deleteAll()
    {
        do {
            try realm.write {
                realm.deleteAll()
            }
        } catch {
            print("error deleteAll")
        }

    }
    static func deleteOne(tasklist: TasksList){
        try! realm.write {
            realm.delete(tasklist)
        }
    }
    
    static func saveTasksList(taskList: TasksList) {
        try! realm.write {
            realm.add(taskList)
        }
    }
}
