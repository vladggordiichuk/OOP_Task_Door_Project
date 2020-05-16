//
//  Controller.swift
//  OOP Door Project
//
//  Created by Vlad Gordiichuk on 16.05.2020.
//  Copyright © 2020 Vlad Gordiichuk. All rights reserved.
//

import Foundation

class Controller {
    
    private init() { }
    
    static var shared = Controller()
    
    static func openDoor(user: User, door: Door) -> Bool {
        guard door.open() else { return false }
        Controller.shared.logDoorStatusChange(user: user, door: door)
        return true
    }
    
    static func closeDoor(user: User, door: Door) -> Bool {
        guard door.close() else { return false }
        Controller.shared.logDoorStatusChange(user: user, door: door)
        return true
    }
    
    private func logDoorStatusChange(user: User, door: Door) {
        DB.shared.logs[door] = (state: door.getState(), user: user, date: Date())
    }
}
