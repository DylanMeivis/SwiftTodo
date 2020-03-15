//
//  TodoItem.swift
//  SwiftTodo
//
//  Created by Dylan Meivis on 14/03/2020.
//  Copyright © 2020 Dylan Meivis. All rights reserved.
//

import Foundation
import CoreData

public class TodoItem: NSManagedObject, Identifiable {
    @NSManaged public var createdAt: Date?
    @NSManaged public var title: String?
}

extension TodoItem {
    static func getAllTodoItems() -> NSFetchRequest<TodoItem> {
        let request:NSFetchRequest<TodoItem> = TodoItem.fetchRequest() as!
        NSFetchRequest<TodoItem>
        
        let sortDescriptor = NSSortDescriptor(key: "createdAt", ascending: true)
        
        request.sortDescriptors = [sortDescriptor]
        
        return request
    }
}
