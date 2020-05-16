//
//  DB.swift
//  OOP Door Project
//
//  Created by Vlad Gordiichuk on 16.05.2020.
//  Copyright © 2020 Vlad Gordiichuk. All rights reserved.
//

import Foundation

class DB {
    
    private init() { }
    
    static var shared = DB()
    
    public var userToDoorRelation = [User : [Door]]()
    
    public var logs = [Door : (state: Door.State, user: User, date: Date)]()
}
