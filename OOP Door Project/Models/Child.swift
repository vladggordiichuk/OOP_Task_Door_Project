//
//  Child.swift
//  OOP Door Project
//
//  Created by Vlad Gordiichuk on 10.06.2020.
//  Copyright © 2020 Vlad Gordiichuk. All rights reserved.
//

import Foundation

class Child: User {
    
    private let parent: User
    private let access: Access
    
    enum Access: Int {
        case add, delete, modify
    }
    
    init(id: Int, name: String, parent: User, access: Access) {
        self.parent = parent
        self.access = access
        super.init(id: id, name: name)
    }
}
