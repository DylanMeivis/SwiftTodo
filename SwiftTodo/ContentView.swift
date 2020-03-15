//
//  ContentView.swift
//  SwiftTodo
//
//  Created by Dylan Meivis on 14/03/2020.
//  Copyright © 2020 Dylan Meivis. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) var managedObjectContext
    @FetchRequest(fetchRequest: TodoItem.getAllTodoItems()) var toDoItems: FetchedResults<TodoItem>
    @State private var newTodoItem = ""
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Whats next?")) {
                    HStack {
                        TextField("New Item", text: self.$newTodoItem)
                        Button(action: {
                            let toDoItem = TodoItem(context: self.managedObjectContext)
                            toDoItem.title = self.newTodoItem
                            toDoItem.createdAt = Date()
                            
                            do {
                                try self.managedObjectContext.save()
                            } catch {
                                print(error)
                            }
                            
                            self.newTodoItem = ""
                        }) {
                            Image(systemName: "plus.circle.fill")
                                .foregroundColor(.green)
                                .imageScale(.large)
                        }
                    }
                }.font(.headline)
            }
            .navigationBarTitle(("My List"))
            .navigationBarItems(trailing: EditButton())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
