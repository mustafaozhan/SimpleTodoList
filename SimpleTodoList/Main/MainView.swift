//
//  ContentView.swift
//  SimpleTodoList
//
//  Created by Mustafa Ozhan on 14/07/2019.
//  Copyright © 2019 Mustafa Ozhan. All rights reserved.
//

import SwiftUI

struct MainView : View {
    
    @EnvironmentObject var userData: UserData
    @State var draftTitle: String = ""
    @State var isEditing: Bool = false
    
    var body: some View {
        List {
            HStack{
                TextField($draftTitle, placeholder: Text("Create a New Task"))
                Button(action: {
                    self.createTask()
                }) {
                    Text("Add")
                }
            }
            ForEach(self.userData.tasks) { task in
                ItemView(task: task, isEditing: self.$isEditing)
            }
            }
            .navigationBarTitle(Text("Tasks"))
            .navigationBarItems(trailing: Button(action: { self.isEditing.toggle() }) {
                if !self.isEditing {
                    Text("Edit")
                } else {
                    Text("Done").bold()
                }
            })
    }
    
    private func createTask() {
        let newTask = Task(title: self.draftTitle, isDone: false)
        self.userData.tasks.insert(newTask, at: 0)
        self.draftTitle = ""
    }
}


#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
#endif
