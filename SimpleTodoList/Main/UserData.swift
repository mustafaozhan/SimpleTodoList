//
//  UserData.swift
//  SimpleTodoList
//
//  Created by Mustafa Ozhan on 14/07/2019.
//  Copyright © 2019 Mustafa Ozhan. All rights reserved.
//

import Combine
import SwiftUI

final class UserData: BindableObject {
    let didChange = PassthroughSubject<UserData, Never>()
    
    @DefaultValues(key: "Tasks", defaultValue: defaultTasks)
    var tasks: [Task] {
        didSet {
            didChange.send(self)
        }
    }
}

private let defaultTasks: [Task] = [
    Task(title: "Task 1", isDone: false),
    Task(title: "Task 2", isDone: true)
]
