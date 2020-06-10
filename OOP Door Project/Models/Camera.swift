//
//  Camera.swift
//  OOP Door Project
//
//  Created by Vlad Gordiichuk on 10.06.2020.
//  Copyright © 2020 Vlad Gordiichuk. All rights reserved.
//

import Foundation

class Camera: Device {
    
    private var state: State
    
    enum State { case on, off }
    
    init(id: Int, state: State, updatedAt: Date) {
        self.state = state
        super.init(id: id, updatedAt: updatedAt)
    }
    
    public func getState() -> State { return state }
    
    public func turnOn() -> Bool {
        guard state == .on else { return false }
        state = .on
        return true
    }
    
    public func turnOff() -> Bool {
        guard state == .off else { return false }
        state = .off
        return true
    }
}
