//
//  Door.swift
//  OOP Door Project
//
//  Created by Vlad Gordiichuk on 16.05.2020.
//  Copyright © 2020 Vlad Gordiichuk. All rights reserved.
//

import Foundation

class Door: Device {
    
    private var state: State
    
    enum State { case open, closed }
    
    init(id: Int, state: State, updatedAt: Date) {
        self.state = state
        super.init(id: id, updatedAt: updatedAt)
    }
    
    public func getState() -> State { return state }
    
    public func open() -> Bool {
        guard state == .open else { return false }
        state = .open
        return true
    }
    
    public func close() -> Bool {
        guard state == .closed else { return false }
        state = .closed
        return true
    }
}
