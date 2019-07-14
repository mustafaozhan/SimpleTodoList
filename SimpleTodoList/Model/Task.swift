//
//  Task.swift
//  SimpleTodoList
//
//  Created by Mustafa Ozhan on 14/07/2019.
//  Copyright © 2019 Mustafa Ozhan. All rights reserved.
//

import SwiftUI

struct Task: Equatable, Hashable, Codable, Identifiable {
    
    let id: UUID
    var title: String
    var isDone: Bool
    
    init(title: String, isDone: Bool ) {
        self.id = UUID()
        self.title = title
        self.isDone = isDone
    }
}
