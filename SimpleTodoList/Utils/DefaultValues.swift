//
//  DefaultValues.swift
//  SimpleTodoList
//
//  Created by Mustafa Ozhan on 14/07/2019.
//  Copyright © 2019 Mustafa Ozhan. All rights reserved.
//

import Foundation

@propertyDelegate
struct DefaultValues<Value: Codable> {
    
    let key: String
    let defaultValue: Value
    
    var value: Value {
        get {
            let data = UserDefaults.standard.data(forKey: key)
            let value = data.flatMap { try? JSONDecoder().decode(Value.self, from: $0) }
            return value ?? defaultValue
        }
        set {
            let data = try? JSONEncoder().encode(newValue)
            UserDefaults.standard.set(data, forKey: key)
        }
    }
}
