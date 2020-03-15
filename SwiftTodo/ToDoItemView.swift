//
//  ToDoItemView.swift
//  SwiftTodo
//
//  Created by Dylan Meivis on 15/03/2020.
//  Copyright © 2020 Dylan Meivis. All rights reserved.
//

import SwiftUI

struct ToDoItemView: View {
    var title:String = ""
    var createdAt:String = ""
    
    var body: some View {
        HStack {
            VStack(alignment: .leading){
                Text(title)
                    .font(.headline)
                Text(createdAt)
                    .font(.caption)
            }
        }
    }
}

struct ToDoItemView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoItemView(title: "My great Todo", createdAt: "Today")
    }
}
