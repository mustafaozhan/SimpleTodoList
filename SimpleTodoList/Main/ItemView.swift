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
    @Binding var isEditting: Bool
    
    
    var body: some View {
        HStack {
            if self.isEditting {
                Image(systemName: "minus.circle")
                    .foregroundColor(.red)
                    .tapAction(count: 1) {
                        self.delete()
                    }
                // Todo Editting here
            } else {
                Button(action: { self.toggleDone() }) {
                    Text(self.task.title)
                }
                Spacer()
                
                if task.isDone{
                    Image(systemName: "checkmark").foregroundColor(.green)
                }
            }
        }
    }
    
    private func delete() {
        self.userData.tasks.removeAll(where: { $0.id == self.task.id })
        if self.userData.tasks.isEmpty {
            self.isEditting = false
        }
    }
    
    private func toggleDone() {
        guard !self.isEditting else { return }
        guard let index = self.userData.tasks.firstIndex(where: { $0.id == self.task.id}) else { return }
        self.userData.tasks[index].isDone.toggle()
    }
}

