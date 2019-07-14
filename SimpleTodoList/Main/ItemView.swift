//
//  ItemView.swift
//  SimpleTodoList
//
//  Created by Mustafa Ozhan on 14/07/2019.
//  Copyright © 2019 Mustafa Ozhan. All rights reserved.
//

import SwiftUI

struct ItemView : View {
    
    @EnvironmentObject var userData: UserData
    
    let task: Task
//    @Binding var isEditting: Bool
    
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello World!"/*@END_MENU_TOKEN@*/)
    }
}

#if DEBUG
struct ItemView_Previews : PreviewProvider {

    static var previews: some View {
        ItemView(task: Task(title: "Sample Task", isDone: false))
    }
}
#endif
