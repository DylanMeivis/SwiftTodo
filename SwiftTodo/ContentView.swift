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
        Text("Hello, World!")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
