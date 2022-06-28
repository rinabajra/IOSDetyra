//
//  Task.swift
//  IOSDetyra
//
//

import Foundation
import RealmSwift

class Task: Object, ObjectKeyIdentifiable{
    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted var title = ""
    @Persisted var descr = ""
    @Persisted var completed =  false
    @Persisted var image = ""
}
