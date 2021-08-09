//
//  Task.swift
//  HomeWork_25_Realm
//
//  Created by Владимир  on 8.08.21.
//  Copyright © 2021 Владимир . All rights reserved.
//

import Foundation
import RealmSwift

class Task: Object {
    @objc dynamic var name = ""
    @objc dynamic var note = ""
    @objc dynamic var date = Date()
    @objc dynamic var isComlete = false
    
}
